#include "KT403A.h"
#include "../uart_control_module/UART_setup.h"

void setup_reset_kt403a (void)
{
    TRISD = TRISD & RST_PIN;
    ANSELD = ANSELD & RST_PIN;
}

void reset_chip (void)
{
    PORTD = PORTD | (unsigned char) ~RST_PIN;
}

void stop_reset (void)
{
    PORTD = PORTD & RST_PIN;
}

void reset_buffer_small (void)
{
    unsigned char index;
    for (index = 0; index < BUFFER_8; index++)
    {
        BUFFER_small[index] = 0;
    }
}

void reset_buffer_big (void)
{
    unsigned char index;
    for (index = 0; index < BUFFER_10; index++)
    {
        BUFFER_big[index] = 0;
    }
}

void play_next_song (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_01_PLAY_NEXT_SONG; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void play_previous_song (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_02_PLAY_PREV_SONG; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void volume_up (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_04_VOLUME_UP; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void volume_down (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_05_VOLUME_DOWN; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}
//
//#define BUFFER_8 8
//#define BUFFER_10 10
//#define START_COM 0x7E
//#define VER 0xFF
//#define FEEDBACK 0x00
//#define STOP_COM 0xEF
//#define COM_LEN 0x06

void standby (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_10_ENTER_STANDBY; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void reset_function (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_11_RESET_CHIP; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void play (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_12_PLAY; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void pause (void)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_13_PAUSE; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = NOT_USED;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void play_specific_from_folder (unsigned char folder_number, unsigned char track_number)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_14_SPECIFY_FOLDER_TO_PLAY_TRACK; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = folder_number;
    BUFFER_small[6] = track_number;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void loop_all_songs_from_folder (unsigned char loop_option)
{
    reset_buffer_small();
    
    BUFFER_small[0] = START_COM;
    BUFFER_small[1] = VER;
    BUFFER_small[2] = COM_LEN;
    BUFFER_small[3] = CMD_15_LOOP_ALL_MUSIC_FROM_FOLDER; 
    BUFFER_small[4] = FEEDBACK;
    BUFFER_small[5] = NOT_USED;
    BUFFER_small[6] = loop_option;
    BUFFER_small[7] = STOP_COM;
  
    start_sending(BUFFER_small, BUFFER_8);
}

void toggle_repeat_current_song (unsigned char option, unsigned char option_corr_code)
{
    reset_buffer_big();
    
    BUFFER_big[0] = START_COM;
    BUFFER_big[1] = VER;
    BUFFER_big[2] = COM_LEN;
    BUFFER_big[3] = CMD_22_REPEAT_A_SINGLE_TRACK; 
    BUFFER_big[4] = FEEDBACK;
    BUFFER_big[5] = NOT_USED;
    BUFFER_big[6] = option;
    BUFFER_big[7] = INVERS_STOP;
    BUFFER_big[8] = option_corr_code;
    BUFFER_big[9] = STOP_COM;
  
    start_sending(BUFFER_big, BUFFER_10);
}