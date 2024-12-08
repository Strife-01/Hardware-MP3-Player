#include "interrupt_control.h"
#include "interrupt_setup.h"
#include "../uart_control_module/UART_setup.h"
#include "../timer_control_module/timer_module.h"

void clean_rx_1_buffer (void);
void copy_rx_1_buffer (void);

unsigned char rx_1_rec_character;

void __interrupt() ISR (void)
{
    // Uart1 TX interrupt strategy
    if ((PIR3 & TX1IF_M) == TX1IF_M)
    {
        if (local_sending_buffer_index < local_sending_buffer_length)
        {
            TX1REG = local_sending_buffer[local_sending_buffer_index];
            local_sending_buffer_index++;
        }
        else
        {
            sending_in_progress = 0;
            TX_1_interrupt_disable();
        }
    }
    
    // Tiemr 0 Interrupt strategy
    if ((PIR0 & TMR0IF_M) == TMR0IF_M)
    {
        PIR0 = PIR0 & ~TMR0IF_M;
        timer_0_stop();
        copy_rx_1_buffer();
        finished_received_buffer = 1;
        rx_1_copy_buffer_size = rx_1_index;
        clean_rx_1_buffer();
        rx_1_index = 0;
    }
    else
    {
        // DO NOTHING
    }
    
    // Uart1 RX interrupt strategy
    if ((PIR3 & RX1IF_M) == RX1IF_M)
    {
        // Check for Buffer Overflow
        if (rx_1_index >= UART_1_RECEIVE_BUFFER_LENGTH)
        {
            rx_1_index = 0;
        }
        else
        {
            // DO NOTHING
        }
        
        rx_1_rec_character = RC1REG;
        rx_1_buffer_receive[rx_1_index] = rx_1_rec_character;
        rx_1_index++;
        rx_1_buffer_size++;
        timer_0_reset();
    }
    else
    {
        // Do NOTHING
    }

}

void clean_rx_1_buffer (void)
{
    unsigned char index = 0;
    
    for (index = 0; index < UART_1_RECEIVE_BUFFER_LENGTH; index++)
    {
        rx_1_buffer_receive[index] = 0;
    }
}

void copy_rx_1_buffer (void)
{
    unsigned char index = 0;
    
    for (index = 0; index < rx_1_index; index++)
    {
        rx_copy_buffer[index] = rx_1_buffer_receive[index];
    }
}

void clear_command_copy_buffer (void)
{
    unsigned char index = 0;
    
    for (index = 0; index < rx_1_copy_buffer_size; index++)
    {
        rx_copy_buffer[index] = 0;
    }
}