#ifndef KEYBOARD_CONTROL_H
#define	KEYBOARD_CONTROL_H

/*

 * PINS MAPING FOR KEYBOARD TO PIC CONTROLLER
 
 * LINES
 * C4 = D7
 * C3 = D6
 * C2 = D5
 * C1 = D4

 * COLUMNS
 * R1 = D3
 * R2 = D2
 * R3 = C3
 * R4 = D1

 */

#define PORTD_PINS 0xFE
#define PORTC_PINS 0x08

#define PIN_C4 0x80
#define PIN_C3 0x40
#define PIN_C2 0x20
#define PIN_C1 0x10
#define PIN_R1 0x08
#define PIN_R2 0x04
#define PIN_R3 0x08
#define PIN_R4 0x02

#define PIN_R1_INDEX 0
#define PIN_R2_INDEX 1
#define PIN_R3_INDEX 2
#define PIN_R4_INDEX 3
#define PIN_C1_INDEX 0
#define PIN_C2_INDEX 1
#define PIN_C3_INDEX 2
#define PIN_C4_INDEX 3

#define LINES 4
#define COLUMNS 4
#define BUTTONS 16

#define BUTTON_PRESSED_VALUE 0

// The values are the opposite way
#define BUTTON_S16_PRESSED   0x0001 // 0x8000
#define BUTTON_S15_PRESSED   0x0002 // 0x4000
#define BUTTON_S14_PRESSED   0x0004 // 0x2000
#define BUTTON_S13_PRESSED   0x0008 // 0x1000
#define BUTTON_S12_PRESSED   0x0010 // 0x0800
#define BUTTON_S11_PRESSED   0x0020 // 0x0400
#define BUTTON_S10_PRESSED   0x0040 // 0x0200
#define BUTTON_S9_PRESSED    0x0080 // 0x0100
#define BUTTON_S8_PRESSED    0x0100 // 0x0080
#define BUTTON_S7_PRESSED    0x0200 // 0x0040
#define BUTTON_S6_PRESSED    0x0400 // 0x0020
#define BUTTON_S5_PRESSED    0x0800 // 0x0010
#define BUTTON_S4_PRESSED    0x1000 // 0x0008
#define BUTTON_S3_PRESSED    0x2000 // 0x0004
#define BUTTON_S2_PRESSED    0x4000 // 0x0002
#define BUTTON_S1_PRESSED    0x8000 // 0x0001

#define BUTTON_S1_INDEX     15
#define BUTTON_S2_INDEX     14
#define BUTTON_S3_INDEX     13
#define BUTTON_S4_INDEX     12
#define BUTTON_S5_INDEX     11
#define BUTTON_S6_INDEX     10
#define BUTTON_S7_INDEX     9
#define BUTTON_S8_INDEX     8
#define BUTTON_S9_INDEX     7
#define BUTTON_S10_INDEX    6
#define BUTTON_S11_INDEX    5
#define BUTTON_S12_INDEX    4
#define BUTTON_S13_INDEX    3
#define BUTTON_S14_INDEX    2
#define BUTTON_S15_INDEX    1
#define BUTTON_S16_INDEX    0

#define BUTTON_S16_ACTIVE   0x8000
#define BUTTON_S15_ACTIVE   0x4000
#define BUTTON_S14_ACTIVE   0x2000
#define BUTTON_S13_ACTIVE   0x1000
#define BUTTON_S12_ACTIVE   0x0800
#define BUTTON_S11_ACTIVE   0x0400
#define BUTTON_S10_ACTIVE   0x0200
#define BUTTON_S9_ACTIVE    0x0100
#define BUTTON_S8_ACTIVE    0x0080
#define BUTTON_S7_ACTIVE    0x0040
#define BUTTON_S6_ACTIVE    0x0020
#define BUTTON_S5_ACTIVE    0x0010
#define BUTTON_S4_ACTIVE    0x0008
#define BUTTON_S3_ACTIVE    0x0004
#define BUTTON_S2_ACTIVE    0x0002
#define BUTTON_S1_ACTIVE    0x0001

#define BUTTON_DEFAULT 255

void keyboards_ansel_setup (void);

void set_line_pin_level (unsigned char line_index);
void set_column_pin_level (unsigned char column_index);

void set_line_pins_as_input (void);
void set_line_pins_as_output (void);

void set_column_pins_as_input (void);
void set_column_pins_as_output (void);

void check_line_to_column_pins (void);
void check_column_to_line_pins (void);

unsigned char get_line_pin_level (unsigned char line_index);
unsigned char get_column_pin_level (unsigned char column_index);

unsigned char get_button_pressed_line_to_column (unsigned char line_index, unsigned char column_index);
unsigned char get_button_pressed_column_to_line (unsigned char line_index, unsigned char column_index);

void update_buttons_checker_line_to_column (unsigned char line_index, unsigned char column_index);
void update_buttons_checker_column_to_line (unsigned char line_index, unsigned char column_index);

void reset_buttons_pressed (void);
void set_buttons_pressed_indicator (void);

void buttons_procedure_interface (void);
void buttons_options_interface (void);

unsigned int buttons_pressed_indicator_line_to_column = 0x0000;
unsigned int buttons_pressed_indicator_column_to_line = 0x0000;
unsigned int buttons_pressed = 0x0000;

#endif	/* KEYBOARD_CONTROL_H */

