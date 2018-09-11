# persistence-of-vision-propeller-project
// this code is for hardware that we made for our mini-project

/*
    starting code is for time delay and logic for the circuit
    rest of the part that down there is for individual letters
    it is for ATMEGA32 microcontroller and code is in embedded c
*/

#include <avr/io.h>
#define F_CPU 8000000UL
#include<util/delay.h>
#define  time 2.5/36.0
void display(char x);
#define count 550

void delay_timer(void)
{
	TCCR1B = 0x01 ;
	TCNT1=0;
	
	while(TCNT1<count)
	{}
	
	TCCR1B = 0x00;
	

	
	//TCCR1B = 0x01 ;
	//TCNT1=0;
}

int main(void)
{
	char a[21]={"SVNIT SURAT ECED"};
	int i;
	
	DDRA = 0B11111111;
	DDRB = 0B11111111;
	
	PORTB = 0B00000000;
	PORTA = 0B11111111;
	_delay_ms(100*5);

 while(1)
 {
	 if(bit_is_set(PINC ,7))
		{
			for(i=0;i<21;i++)
			display(a[i]);
		}
  
  
   while(bit_is_clear(PINC ,7))
   {
   PORTA = 0B00000001;
     delay_timer();
   }

  
/*  PORTA =0b11111111;
  delay_timer(()*1);
  
  PORTA =0b00000000;
  delay_timer(((82*2-7)*)*1);
*/  
 }
   }



void display(char x)
{
	switch(x)
	{
	case ' ':
	{
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'A':
	{
		PORTA=0B11111101;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B11111101;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'B':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B01010101;
		delay_timer();
		PORTA=0B01101101;
		delay_timer();

		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'C':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B01000101;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();

		break;
	}
	case 'D':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B01000101;
		delay_timer();
		PORTA=0B00111001;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'E':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'F':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'G':
	{
		PORTA=0B01111101;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10110011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B01110101;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'H':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'I':
	{
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'J':
	{
		PORTA=0B11000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'K':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00101001;
		delay_timer();
		PORTA=0B01000101;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'L':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'M':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00000101;
		delay_timer();
		PORTA=0B00001001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00001001;
		delay_timer();
		PORTA=0B00000101;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'N':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00000101;
		delay_timer();
		PORTA=0B00001001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00100001;
		delay_timer();
		PORTA=0B01000001;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'O':
	{
		PORTA=0B01111101;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B01111101;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'P':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00001101;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'Q':
	{
		PORTA=0B01111101;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B10100011;
		delay_timer();
		PORTA=0B11000011;
		delay_timer();
		PORTA=0B01111101;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'R':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00010011;
		delay_timer();
		PORTA=0B00110011;
		delay_timer();
		PORTA=0B01010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10001101;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();

		break;
	}
	case 'S':
	{
		PORTA=0B10011111;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B11110011;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'T':
	{
		PORTA=0B00000011;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
			
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'U':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
	
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B0000001;
		delay_timer();
		break;
	}
	case 'V':
	{
		PORTA=0B00011111;
		delay_timer();
		PORTA=0B00100001;
		delay_timer();
		PORTA=0B01000001;
		delay_timer();
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B01000001;
		delay_timer();
		PORTA=0B00100001;
		delay_timer();
		PORTA=0B00011111;
		delay_timer();
			
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'W':
	{
		PORTA=0B11111111;
		delay_timer();
		PORTA=0B01000001;
		delay_timer();
		PORTA=0B00100001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00100001;
		delay_timer();
		PORTA=0B01000001;
		delay_timer();
		PORTA=0B11111111;
		delay_timer();
		
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case'X':
	{
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B01000101;
		delay_timer();
		PORTA=0B00101001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00101001;
		delay_timer();
		PORTA=0B01000101;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
	
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}
	case 'Y':
	{
		PORTA=0B10000011;
		delay_timer();
		PORTA=0B01000101;
		delay_timer();
		PORTA=0B00101001;
		delay_timer();
		PORTA=0B00010001;
		delay_timer();
		PORTA=0B00001001;
		delay_timer();
		PORTA=0B00000101;
		delay_timer();
		PORTA=0B00000011;
		delay_timer();
	
		PORTA=0B00000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}

	case 'Z':
	{

		PORTA=0B10000011;
		delay_timer();
		PORTA=0B11000011;
		delay_timer();
		PORTA=0B10100011;
		delay_timer();
		PORTA=0B10010011;
		delay_timer();
		PORTA=0B10001011;
		delay_timer();
		PORTA=0B10000111;
		delay_timer();
		PORTA=0B10000011;
		delay_timer();
	
		PORTA=0B10000001;
		delay_timer();
		PORTA=0B00000001;
		delay_timer();
		break;
	}

	}
	
}
