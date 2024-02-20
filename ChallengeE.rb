# Challenge E
use_bpm 180
use_synth :chipbass

# VARIABLES TO STORE SAMPLES
coin = "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/coin.wav"
mushroom = "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/mushroom.wav"
mariointro = "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/mario_intro.wav"
mariobeat =  "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/mario_beat.wav"
jump = "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/jump.wav"
oneup = "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/oneup.wav"
pipe = "C:/Users/mira_grim/Downloads/mario_sounds/mario_sounds/pipe.wav"

# INTRO

sample mariointro
sleep 8

play :e4
sleep 0.5
play :e4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :e4
sleep 1
play :g4
sleep 2
play :g3
sleep 2


# PART ONE
live_loop :partone do
  4.times do
    play :c4
    sleep 1.5
    play :g3
    sleep 1.5
    play :e3
    sleep 1.5
    play :a3
    sleep 1
    play :b3
    sleep 1
    
    play :bb3
    sleep 0.5
    play :a3
    sleep 1
  end
  stop
end
live_loop :sample do
  4.times do
    sample jump
    sleep 2
    sample coin
    sleep 2
    sample coin
    sleep 2
    sample pipe
    sleep 2
  end
  stop
end

sleep 32
#PART TWO
play :g3
sleep 2/3.0 #0.666666...
play :e4
sleep 2/3.0 #0.666666...
play :g4
sleep 2/3.0 #0.666666...
play :a4
sleep 1
play :f4
sleep 0.5
play :g4
sleep 1
play :e4
sleep 1
play :c4
sleep 0.5
play :d4
sleep 0.5
play :b3
sleep 1

sample mushroom
