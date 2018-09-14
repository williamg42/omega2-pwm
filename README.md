# Omega2 PWM
This is simple program to control hardware PWM on Omega2. For some reason Omega2 has not any util to control **hardware** PWM. There is only **fast-gpio** tool, it uses software PWM which is awful for sound generation.

# Update
**A few days after I got this all cleaned up, the Onion people did this the better way - they made a real kernel module that implements the kernel's SYSFS PWM interface:**
https://onion.io/2bt-hardware-pwm-omega2/

This makes this tool pretty much useless, but I'll leave it here in case someone wants it.

## Usage

Channel #0 is pin #18, channel #1 is pin #19. Channels #2 and #3 are available on Omega2S only (UART2 pins).

Before usage you must set GPIO muxing using **omega2-ctrl** tool:

    omega2-ctrl gpiomux set pwm0 pwm
    
or

    omega2-ctrl gpiomux set pwm1 pwm

Then use this tool:

    pwm <channel> <frequency> [duty]

Example to generate 3000Hz on channel #1 with 50% duty:

    pwm 1 3000 50
    
