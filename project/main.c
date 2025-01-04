

/*
     QUICK OPENOCD TUTORIAL:

Dont forget to update firmware on the programmer.


#show any st-link hardware 
st-info --probe


You may need to verify chip ID and fix in openocd target  - I set mine to "0" to accept any chip 

openocd may only work after a "st-flash erase" operation 

openocd -f /usr/share/openocd/scripts/interface/stlink.cfg -f /usr/share/openocd/scripts/target/stm32f1x.cfg


# to run the debugger locally once the previous command executes 
gdb-multiarch ./asmtest.elf 


(gdb) target extended-remote localhost:3333
(gbd) lay next 
(gbd) break main 
(gbd) c 
#     c is continue 


*/


int main(void) 
{

    while(1){
        foobar();
    }


    //defined in blink.S
    //reset();

	return 0;
}
