cmake_minimum_required(VERSION 2.6)
project(omega2-pwm)

add_executable(omega2-pwm omega2-pwm.c)

INSTALL(TARGETS omega2-pwm RUNTIME DESTINATION /usr/bin/)
