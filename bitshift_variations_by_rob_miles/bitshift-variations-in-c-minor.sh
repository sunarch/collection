#!/usr/bin/env bash

# change directory so that the "a.out" file is not created in Home
cd ~/downloads/


# Bitshift Variations in C Minor by Rob Miles
# YouTube: https://www.youtube.com/watch?v=MqZgoNRERY8
# YouTube (EXTRA BITS): https://www.youtube.com/watch?v=EcVUth3rrXk
# Link to code: http://txti.es/bitshiftvariationsincminor
# SoundCloud: https://soundcloud.com/robertskmiles/bitshift-variations-in-c-minor

echo "g(i,x,t,o){return((3&x&(i*((3&i>>16?\"BY}6YB6%\":\"Qj}6jQ6%\")[t%8]+51)>>o))<<4);};main(i,n,s){for(i=0;;i++)putchar(g(i,1,n=i>>14,12)+g(i,s=i>>17,n^i>>13,10)+g(i,s/3,n+((i>>11)%3),10)+g(i,s/5,8+n-((i>>10)%3),9));}"|gcc -xc -&&./a.out|aplay

