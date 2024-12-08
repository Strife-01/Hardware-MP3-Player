#ifndef KT403A_H
#define	KT403A_H

#include <xc.h>

// buffers data

#define BUFFER_8 8
#define BUFFER_10 10
#define START_COM 0x7E
#define VER 0xFF
#define COM_LEN 0x06
#define FEEDBACK 0x01
#define STOP_COM 0xEF
#define INVERS_STOP 0xFE
#define NOT_USED 0x00

// Toggle options

#define TOGGLE_REPEAT_ON  0x00
#define TOGGLE_REPEAT_OFF 0x01
#define START_REPEAT_CURR 0xE2
#define STOP_REPEAT_CURR  0xE1

#define TOGGLE_UNIVERSAL_ON  0x01
#define TOGGLE_UNIVERSAL_OFF 0x00

// command names macros

#define CMD_01_PLAY_NEXT_SONG                        0x01 // OK
#define CMD_02_PLAY_PREV_SONG                        0x02 // OK
#define CMD_03_PLAY_SPECIFIC_TRACK                   0x03
#define CMD_04_VOLUME_UP                             0x04 // OK
#define CMD_05_VOLUME_DOWN                           0x05 // OK
#define CMD_06_VOLUME_SPECIFIC                       0x06
#define CMD_07_EQUALIZER                             0x07
#define CMD_08_REPEAT_CURRENT_TRACK                  0x08
#define CMD_09_CHOOSE_DEVICE_TO_PLAY_FROM            0x09 // DEFAULT OK
#define CMD_10_ENTER_STANDBY                         0x0A // OK
#define CMD_11_RESET_CHIP                            0x0C // OK
#define CMD_12_PLAY                                  0x0D // OK
#define CMD_13_PAUSE                                 0x0E // OK
#define CMD_14_SPECIFY_FOLDER_TO_PLAY_TRACK          0x0F // OK
#define CMD_15_LOOP_ALL_MUSIC_FROM_FOLDER            0x11 // OK
#define CMD_16_SPECIFY_SONG_IN_MP3_FOLDER            0x12
#define CMD_17_INSERT_AND_PLAY_TRACK                 0x13
#define CMD_18_SPECIFY_FILE_FOR_LOOPING              0x14
#define CMD_19_STOP_PLAYING_INSERTED_RESUME_PREVIOUS 0x15
#define CMD_20_STOP_PLAYING                          0x16
#define CMD_21_SPECIFY_FOLDER_FOR_LOOPING            0x17
#define CMD_22_REPEAT_A_SINGLE_TRACK                 0x19
#define CMD_23_SPECIFY_FOLDER_FOR_SHUFFLE            0x28

// Equalizers

#define EQ_NORMAL  0
#define EQ_POP     1
#define EQ_ROCK    2
#define EQ_JAZZ    3
#define EQ_CLASSIC 4
#define EQ_BASS    5

// Reset function

#define RST_PIN 0b11111110


void setup_reset_kt403a (void);
void reset_chip (void);
void stop_reset (void);


// play functions

unsigned char BUFFER_small[BUFFER_8];
unsigned char BUFFER_big[BUFFER_10];

void reset_buffer_small (void);
void reset_buffer_big (void);

void play_previous_song (void);
void play_next_song (void);
void play_specific_from_folder (unsigned char folder_number, unsigned char track_number);

void volume_up (void);
void volume_down (void);

void play (void);
void pause (void);

void standby (void);
void reset_function (void);

// works only as as a song is being played
void toggle_repeat_current_song (unsigned char option, unsigned char option_corr_code); // ???

void loop_all_songs_from_folder (unsigned char loop_option);

unsigned char current_song_repeating_on = 0;
unsigned char loop_all_songs_from_folder_on = 0;


#endif	/* KT403A_H */

