/* 
 * changes from V2:
 *     uses VeloKey_OTS_V2 hardware
 *     added NSEW Center scroll
 * 
 * changes from V1:
 *     new splash screen
 *     alpha UI
 *     ezkey verification
 */
#include <Mouse.h>
#include <Keyboard.h>
#include <Adafruit_GFX.h>    // Core graphics library
#include <Adafruit_ST7735.h> // Hardware-specific library
#include <SPI.h>
#include <EZKey.h>
#include <KeyCodes.h>
#include "LimitedEnc.h"
#include "UI.h"
#include "logo_rgb.h"
#include "events.h"


// Serial2 pin and pad definitions (in Arduino files Variant.h & Variant.cpp)
#define PIN_SERIAL2_RX       (34ul) // Pin number for PIO_SERCOM on D12
#define PIN_SERIAL2_TX       (36ul) // Pin number for PIO_SERCOM on D10
#define PAD_SERIAL2_TX       (UART_TX_PAD_2)      // SERCOM pad 2
#define PAD_SERIAL2_RX       (SERCOM_RX_PAD_3)    // SERCOM pad 3
// Instantiate the Serial2 class
Uart Serial2(&sercom1, 
	     PIN_SERIAL2_RX, PIN_SERIAL2_TX, 
	     PAD_SERIAL2_RX, PAD_SERIAL2_TX);
//

#define ncodr Serial1
//#define SerialDBG SerialUSB // for M0
#define SerialDBG SERIAL_PORT_USBVIRTUAL
#define ezkey Serial2

#define TFT_CS     5  
#define TFT_RST    9  
#define TFT_DC     6
#define TFT_SCLK 13   // set these to be whatever pins you like!
#define TFT_MOSI 11   // set these to be whatever pins you like!
Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS, TFT_DC, TFT_MOSI, 
				      TFT_SCLK, TFT_RST);
Adafruit_ST7735 *tft_p = &tft;
const int ezkey_l2 = A4;
unsigned long last_high = 0;
unsigned long ezkey_l2_period = 0;
int8_t current_interface = 0; // signed int for modular arithmatic
const uint8_t N_INTERFACE = 3;

void ezkey_l2_cb(){
  unsigned long now = millis();
  ezkey_l2_period = now - last_high;
  last_high = now;
}

int last_enca_pos = -999;
int last_encb_pos = -999;
bool depressed_a = false;
bool depressed_b = false;
bool depressed_c = false;

bool ezkey_linked = false;
bool bt_led_status = !ezkey_linked;

bool update_ezkey_linking(void) {
  if((ezkey_l2_period > 3500) && 
     (ezkey_l2_period < 4500)){
    if(!ezkey_linked){
      ezkey_linked = true;
      ezkey.begin(9600);
    }
  }
  else{
    ezkey.end();
    ezkey_linked = false;
  }
  return ezkey_linked;
}

void ezkey_consumerCommand(uint8_t mask0,uint8_t mask1) {
  ezkey.write(0xFD);
  ezkey.write((byte)0x00);
  ezkey.write((byte)0x02);
  ezkey.write(mask0);
  ezkey.write(mask1);
  ezkey.write((byte)0x00);
  ezkey.write((byte)0x00);
  ezkey.write((byte)0x00);
  ezkey.write((byte)0x00);
}

void ezkey_volume_up(){
  ezkey_consumerCommand(0x10, 0x00);
  ezkey_consumerCommand(0x00, 0x00);
}
void ezkey_volume_down(){
  ezkey_consumerCommand(0x20, 0x00);
  ezkey_consumerCommand(0x00, 0x00);
}

union Data{
  int16_t value;
  char bytes[3];
};
Data enca_u;
Data encb_u;
Data encc_u;

const int n_camera_view = 8;
char *Camera_Views[n_camera_view] = {
  "Head On",
  "1st Person",
  "Side",
  "3rd Person",
  "Right Rear",
  "Birdseye",
  "Helicopter",
  "Specator",
  };

byte CameraKeys[n_camera_view]{ 
    EZKEY_6, // Head on
    EZKEY_3, // first person
    EZKEY_4, // Side
    EZKEY_1, // third person
    EZKEY_5, // Right Rear
    EZKEY_9, // Birds eye
    EZKEY_8, // Heli
    EZKEY_7, // Spectator
    };

const uint8_t n_action = 10;
char *Actions[n_action] = {
  // "< LEFT",
  // "^ STRAIGHT",
  // "> RIGHT",
  // "v U-TURN",
  "Power Up", 
  "Elbow Flick", // f1
  "Wave",        // f2
  "\"Ride On!\"",// f3
  //  "\"HammerTime\"",// f4
  // "\"Nice!\"",      // f5
  // "\"Bring it!\"",  // f6
  "\"I'm Toast!\"", // f7
  // "Bell",           // f8
  "Message",       // M
  "Snapshot",      // f10
  "Changing Room", // T
  "<Alt-Tab>",
  "End Ride",      // ESC
};
byte ActionKeys[n_action+1]{
  EZKEY_SPACE,
  // EZKEY_ARROW_LEFT, 
  // EZKEY_ARROW_UP,
  // EZKEY_ARROW_RIGHT,
  // EZKEY_ARROW_DOWN,
    EZKEY_F1, // Elbow
    EZKEY_F2, // Wave
    EZKEY_F3, // Ride on
    //    EZKEY_F4, // Hammer Time
    //    EZKEY_F5, // Nice
    //    EZKEY_F6, // Bringit
    EZKEY_F7, // I'm toast
    //    EZKEY_F8, // Bell
    EZKEY_M, // Message
    EZKEY_F10, // Snapshot
    EZKEY_T, // changing room
    ALT_TAB, 
    EZKEY_ESCAPE, // End ride
    };

bool camera_immediate = true; // for BT free demo
KeyMenu camera_views = KeyMenu(&tft, &ezkey, Camera_Views, 
			       CameraKeys, camera_immediate,
			       n_camera_view, true,
			       ST7735_BLACK, ST7735_YELLOW,
			       ST7735_BLUE, ST7735_WHITE,
			       9);

KeyMenu actions = KeyMenu(&tft, &ezkey, Actions, 
			  ActionKeys, false,
			  n_action, false,
			  ST7735_BLACK, ST7735_RED,
			  ST7735_BLUE, ST7735_WHITE,
			  9);
Mouse_ui mouse = Mouse_ui(&tft, &ezkey,
			  ST7735_BLACK, ST7735_RED,
			  ST7735_BLUE, ST7735_WHITE,
			  9);


Alpha alpha = Alpha(&tft, &ezkey,
		    ST7735_BLACK, ST7735_RED,
		    ST7735_BLUE, ST7735_WHITE,
		    true,
		    15);
Numeric numeric = Numeric(&tft, &ezkey,
			  ST7735_BLACK, ST7735_BLUE,
			  ST7735_BLUE, ST7735_WHITE,
			  false,
			  15);

uint8_t last_mouse_delta_x;
uint8_t last_mouse_delta_y;
const int n_ui = 5;
UI *uis_pp[n_ui] = {&camera_views, &actions, &mouse, &alpha, &numeric};

int n_active_ui = 2;
UI *active_uis_pp[20] = {&camera_views, &actions};

void USB_keyCommand(uint8_t modifiers, uint8_t keycode){
  if(keycode){
    uint8_t usb_keycode = convert_keycode(keycode, TO_USB);
    Keyboard.press(usb_keycode);
  }
  else{
    Keyboard.releaseAll();
  }
}

void EZ_keyCommand(uint8_t modifiers, uint8_t keycode){
  ezkey.write(0xFD);       // our command
  ezkey.write(modifiers);  // modifier!
  ezkey.write((byte)0x00); // 0x00  
  ezkey.write(keycode);    // key code #1
  ezkey.write((byte)0x00); // key code #2
  ezkey.write((byte)0x00); // key code #3
  ezkey.write((byte)0x00); // key code #4
  ezkey.write((byte)0x00); // key code #5
  ezkey.write((byte)0x00); // key code #6
}

// =============== interface classes
void keyCommand(uint8_t modifiers, uint8_t keycode){
  if(ezkey_linked){
    EZ_keyCommand(modifiers, keycode);
  }
  else{
    USB_keyCommand(modifiers, keycode);
  }
}

int8_t interface_num = 0; // belongs in Interface class, but causes bugs there!?!
class Interface{
 public:
  // local implementation of limited encoders
  long enc_r = 0;
  long enc_l = 0;
  int n_right, n_left;

  char *name;
  unsigned int start_ms;
  bool running = false;

  Interface(){}
  virtual void setup(){}
  virtual void begin(){ // on select
    running = false;
    start_ms = millis();
    uint8_t l = strlen(name);
    tft.fillRect(1, 64-3, 160-2, 20-2, ST7735_BLACK);
    tft.drawRect(0, 64-4, 160, 20, ST7735_BLUE);
    tft.setCursor(80 - 10 * l/2, 64);
    tft.setTextColor(ST7735_BLUE);
    tft.setTextSize(2);
    tft.println(name);
  }
  void bt_indicator(bool force){
    if(force || (bt_led_status != ezkey_linked)){
      if(ezkey_linked){
	tft.fillCircle(155, 123, 3, ST7735_BLUE);
      }
      else{
	tft.fillCircle(155, 123, 3, ST7735_BLUE);
	tft.fillCircle(155, 123, 2, ST7735_BLACK);
      }
      bt_led_status = ezkey_linked;
    }
  }
  virtual void draw(){ // on selected for 1 second
    bt_indicator(true);
  }
  virtual void end(){}
  virtual void handleEvent(uint8_t event){
    if((event & INPUT_MASK) == SCROLL_CENTER){
      if((event & ACTION_MASK) == CW){
	mouse.mouseCommand(0, 0, 0, -1);
      }
      else if((event & ACTION_MASK) == CCW){
	mouse.mouseCommand(0, 0, 0, 1);
      }
      else if((event & ACTION_MASK) == PRESS){
	SerialDBG.println("CENTER PRESS");
	// keyCommand(MODIFIER_NONE, EZKEY_SPACE);
	// start "space" event
      }
      else if((event & ACTION_MASK) == RELEASE){
	SerialDBG.println("CENTER RELEASE");
	// complete "space" event
	// keyCommand(MODIFIER_NONE, 0);
	interface_num++;
	changeInterfaces();
      }
    }
    else if(event == BUTTON_NORTH_PRESS){
      SerialDBG.println("North Press");
      keyCommand(MODIFIER_NONE, EZKEY_ARROW_UP);
    }
    else if(event == BUTTON_NORTH_RELEASE){
      SerialDBG.println("North Release");
      keyCommand(MODIFIER_NONE, 0);
    }
    else if(event == BUTTON_SOUTH_PRESS){
      SerialDBG.println("South Press");
      keyCommand(MODIFIER_NONE, EZKEY_ARROW_DOWN);
    }
    else if(event == BUTTON_SOUTH_RELEASE){
      SerialDBG.println("South Release");
      keyCommand(MODIFIER_NONE, 0);
    }
    else if(event == BUTTON_EAST_PRESS){
      SerialDBG.println("East Press");
      keyCommand(MODIFIER_NONE, EZKEY_ARROW_RIGHT);
    }
    else if(event == BUTTON_EAST_RELEASE){
      SerialDBG.println("East Release");
      keyCommand(MODIFIER_NONE, 0);
    }
    else if(event == BUTTON_WEST_PRESS){
      SerialDBG.println("West Press");
      keyCommand(MODIFIER_NONE, EZKEY_ARROW_LEFT);
    }
    else if(event == BUTTON_WEST_RELEASE){
      SerialDBG.println("West Release");
      keyCommand(MODIFIER_NONE, 0);
    }
  }
  virtual void update(){
    unsigned int age = millis() - start_ms;
    if(age > 1000 && !running){
      draw();
      running = true;
    }
    bt_indicator(false);
  }
};

class ZwiftInterface : public Interface{
 public:
  void begin(){ // on start or restart of GUI display
    name = "Zwift";
    Interface::begin();
    n_right = 3;
    n_left = 3;
  }  
  void draw(){
    camera_views.begin();
    actions.begin();
    Interface::draw();
  }
  void handleEvent(uint8_t event){
    if(event == SCROLL_RIGHT_CCW){
      if(enc_r < n_camera_view - 1){
	enc_r += 1;
	camera_views.select(enc_r);
	SerialDBG.println("SCROLL R CCW");
      }
    }
    else if(event == SCROLL_RIGHT_CW){
      if(enc_r > 0){
	enc_r -= 1;
	camera_views.select(enc_r);
	SerialDBG.println("SCROLL R CW");
      }
    }
    else if(event == SCROLL_RIGHT_PRESS){
      SerialDBG.println("SCROLL R PRESS");      
    }
    else if(event == SCROLL_RIGHT_RELEASE){
      SerialDBG.println("SCROLL R RELEASE");      
    }
    if(event == SCROLL_LEFT_CW){
      if(enc_l < n_action - 1){
	enc_l += 1;
	actions.select(enc_l);
	SerialDBG.println("SCROLL L CW");
      }
    }
    else if(event == SCROLL_LEFT_CCW){
      if(enc_l > 0){
	enc_l -= 1;
	actions.select(enc_l);
	SerialDBG.println("SCROLL L CCW");
      }
    }
    else if(event == SCROLL_LEFT_PRESS){
      SerialDBG.println("SCROLL L PRESS");      
    }
    else if(event == SCROLL_LEFT_RELEASE){
      SerialDBG.println("SCROLL L RELEASE");      
      uint8_t key = actions.keys_p[actions.selected];
      SerialDBG.print("key:");
      SerialDBG.println(key);
      keyCommand(MODIFIER_NONE, key);
      keyCommand(MODIFIER_NONE, 0);
    }
    else{
      Interface::handleEvent(event);
    }
  }
  void update(){
    Interface::update();
    camera_views.update(false, false);
    actions.update(false, false);
    if(update_ezkey_linking()){
      camera_views.ezkey_ready = true;
      actions.ezkey_ready = true;
    }
    else{
      camera_views.ezkey_ready = false;
      actions.ezkey_ready = false;
    }
  }
};

class MouseInterface : public Interface{
 public:
  void begin(){ // on start or restart of GUI display
    name = "Mouse";
    Interface::begin();
  }
  void draw(){
    mouse.begin();
    Interface::draw();
  }
  void setup(){
    SerialDBG.println("Mouse::setup");
  }
  void update(){
    if(update_ezkey_linking()){
      mouse.ezkey_ready = true;
    }
    else{
      mouse.ezkey_ready = false;
    }

    if(running){
      mouse.update(false, false);
    }
    Interface::update();
  }
  void handleEvent(uint8_t event){
    // SerialDBG.print("handleEvent::");
    if(event == SCROLL_RIGHT_CW){
      enc_r -= 1;
      mouse.onScrollR(enc_r);
      SerialDBG.println("SCROLL R CW");
    }
    else if(event == SCROLL_RIGHT_CCW){
      enc_r += 1;
      mouse.onScrollR(enc_r);
      SerialDBG.println("SCROLL R CCW");
    }
    else if(event == SCROLL_LEFT_CW){
      enc_l -= 1;
      mouse.onScrollL(enc_l);
      SerialDBG.println("SCROLL L CW");
    }
    else if(event == SCROLL_LEFT_CCW){
      enc_l += 1;
      mouse.onScrollL(enc_l);
      SerialDBG.println("SCROLL L CCW");
    }
    else if(event == SCROLL_LEFT_PRESS){
      mouse.onPressL();
      SerialDBG.println("SCROLL L PRESS");      
    }
    else if(event == SCROLL_LEFT_RELEASE){
      mouse.onReleaseL();
      SerialDBG.println("SCROLL L RELEASE");      
    }
    else if(event == SCROLL_RIGHT_PRESS){
      mouse.onPressR();
      SerialDBG.println("SCROLL R PRESS");      
    }
    else if(event == SCROLL_RIGHT_RELEASE){
      mouse.onReleaseR();
      SerialDBG.println("SCROLL R RELEASE");      
    }
    else if(event == SCROLL_CENTER_CCW){
      mouse.mouseCommand(0, 0, 0, 1);
      SerialDBG.println("SCROLL C CCW");      
    }
    else if(event == SCROLL_CENTER_CW){
      mouse.mouseCommand(0, 0, 0, -1);
      SerialDBG.println("SCROLL C CCW");      
    }
    else{
      Interface::handleEvent(event);
    }
  }
};

class AlphaNumeric : public Interface{
  void begin(){ // on start or restart of GUI display
    name = "ABC123";
    Interface::begin();
  }
  virtual void draw(){ // on selected for 1 second
    alpha.begin();
    numeric.begin();
    Interface::draw();
  }
  virtual void end(){}
  void handleEvent(uint8_t event){
    if(event == SCROLL_RIGHT_CW){
      if(enc_r < alpha.n - 1){
	enc_r += 1;
	alpha.select(enc_r);
	SerialDBG.println("SCROLL R CW");
      }
    }
    else if(event == SCROLL_RIGHT_CCW){
      if(enc_r > 0){
	enc_r -= 1;
	alpha.select(enc_r);
	SerialDBG.println("SCROLL R CCW");
      }
    }
    else if (event == SCROLL_RIGHT_PRESS){
    }
    else if (event == SCROLL_RIGHT_RELEASE){
      alpha.onClick();
      //alpha.EZ_keyCommand(MODIFIER_NONE, EZKEY_A, 0, 0, 0, 0, 0);
      //alpha.EZ_keyCommand(MODIFIER_NONE, 0, 0, 0, 0, 0, 0);
    }
    else if(event == SCROLL_LEFT_CW){
      if(enc_l < numeric.n - 1){
	enc_l += 1;
	numeric.select(enc_l);
	SerialDBG.println("SCROLL R CW");
      }
    }
    else if(event == SCROLL_LEFT_CCW){
      if(enc_l > 0){
	enc_l -= 1;
	numeric.select(enc_l);
	SerialDBG.println("SCROLL R CCW");
      }
    }
    else if(event == SCROLL_LEFT_PRESS){
      SerialDBG.println("SCROLL L PRESS");      
    }
    else if(event == SCROLL_LEFT_RELEASE){
      numeric.onClick();
      SerialDBG.println("SCROLL L RELEASE");      
      SerialDBG.println(ezkey_linked);
      SerialDBG.println(numeric.ezkey_ready);
    }
    else{
      Interface::handleEvent(event);
    }
  }
  void update(){
    Interface::update();
    camera_views.update(false, false);
    actions.update(false, false);

    if(update_ezkey_linking()){
      alpha.ezkey_ready = true;
      numeric.ezkey_ready = true;
    }
    else{
      alpha.ezkey_ready = false;
      numeric.ezkey_ready = false;
    }
  }
};

const int DISPLAY_BACKLIGHT = A3;
void ui_setup(){
  //  set display backlight to full on
  pinMode(DISPLAY_BACKLIGHT, OUTPUT);
  digitalWrite(DISPLAY_BACKLIGHT, HIGH);

  tft.initR(INITR_BLACKTAB);   // initialize a ST7735S chip, black tab

  // Use this initializer (uncomment) if you're using a 1.44" TFT
  //tft.initR(INITR_144GREENTAB);   // initialize a ST7735S chip, black tab
  tft.setTextWrap(false); // Allow text to run off right edge
  tft.fillScreen(ST7735_BLACK);
  tft.setRotation(3);
  splash();
  pinMode(A7, OUTPUT);
}

MouseInterface mouse_interface = MouseInterface();
ZwiftInterface zwift_interface = ZwiftInterface();
AlphaNumeric alpha_numeric = AlphaNumeric();
Interface *interfaces[N_INTERFACE];

void changeInterfaces(){
  // display name
  current_interface = (interface_num) % N_INTERFACE;
  interfaces[current_interface]->begin();
}

void setup  (void) {
  // start serial
  SerialDBG.begin(115200);
  ncodr.begin(57600);
  Keyboard.begin();
  mouse.begin(); 

  SerialDBG.println("Buy Open Hardware");

  ui_setup();
  interfaces[0] = &mouse_interface;
  interfaces[1] = &zwift_interface;
  interfaces[2] = &alpha_numeric;
  for(uint8_t ii=0; ii<N_INTERFACE; ii++){
    interfaces[ii]->setup(); // happens once
  }
  interfaces[0]->begin(); // on start or restart

  attachInterrupt(ezkey_l2, ezkey_l2_cb, RISING);
  SerialDBG.println("end setup()");

}


void splash(){
  tft.fillScreen(ST7735_WHITE);
  for(int i = 0; i < n_rgb565; i++){
    tft.drawPixel(rgb565_rows[i], rgb565_cols[i], rgb565[i]);
  }
  int blink_counter = 0;
  char * by_wyolum = "by WyoLum";
  //tft.fillCircle(160-10, 128-10, 7, ST7735_BLUE);
  tft.setCursor(80, 100);
  tft.setTextColor(ST7735_BLUE);
  tft.setTextSize(1);
  for(int ii = 0; ii < 9; ii ++){
    tft.print(by_wyolum[ii]);
    delay(100);
  }
  delay(1000);
  tft.fillScreen(ST7735_BLACK);
}

void loop(void) {
  read_ncodr_events();
  handleEvents();
  interfaces[current_interface]->update();
}

const uint8_t MAX_EVENTS_PENDING = 10;
uint8_t event_ring[MAX_EVENTS_PENDING];
uint8_t event_head = 0;
uint8_t n_event_pending = 0;

void handleEvents(){
  if(n_event_pending){
    uint8_t event, addr;
    for(int ii=0; ii<n_event_pending; ii++){
      event = event_ring[event_head];
      // SerialDBG.println(event);
      interfaces[current_interface]->handleEvent(event);
      event_head = (event_head + 1) % MAX_EVENTS_PENDING;
    }
    n_event_pending = 0;
  }
}

bool read_ncodr_events(){
  //read encoder value into global enca_u.value
  uint8_t event = 0;
  bool out;

  for(int ii=0; ii<ncodr.available(); ii++){
    out = true;
    event = ncodr.read(); // got a new event add to queue
    if(n_event_pending < MAX_EVENTS_PENDING){
      event_ring[(event_head + n_event_pending) % MAX_EVENTS_PENDING] = event;
      n_event_pending++;
    }
  }
  return out;
}


