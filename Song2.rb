#Custom Song - Animal Crossing
#Sheet Music - https://musescore.com/user/25989581/scores/11681773
use_bpm 96
use_synth :blade
drum_pattern = [ :drum_bass_soft, :drum_snare_soft, :drum_bass_soft, :drum_snare_soft ]
a = 0.125
amp = 0.333
aval= 0.5

#custom samples
gameboy = "C:/Users/mira_grim/Documents/Audacity/GAMEBOY.wav" #https://youtu.be/zKoVlval3qU?si=1dC_fzJeBXv9Wxn2
bongo = "C:/Users/mira_grim/Documents/Audacity/BONGO.wav" #https://youtu.be/A6wCdDn-HzA?si=wQ5ImWRatmtbgeS1
cymbal = "C:/Users/mira_grim/Documents/Audacity/cymbal sound.wav" #https://youtu.be/zKoVlval3qU?si=1dC_fzJeBXv9Wxn2
click = "C:/Users/mira_grim/Documents/Audacity/click.wav" #https://youtu.be/Uzj3CD0FUhA?si=Thbp0eAG3kuEGrEZ
talking = "C:/Users/mira_grim/Documents/Audacity/TALKING.wav" #https://youtu.be/2VOalnTTYjM?si=7XwW0Ejndmo5Ig3w
ending = "C:/Users/mira_grim/Documents/Audacity/ending.wav" #https://youtu.be/aFFLLG1Z3fQ?si=P7Y_8ONF8tVbcSvr

#Parameterized function w/ notes
define :notes do |a,b,c,d,e|
  play :r
  sleep b
  play :b4
  sleep b
  play :g4
  sleep b
  play :e5
  sleep b
  play :d5
  sample cymbal, amp: 0.2
  sleep c
  play :r
  sleep c
  #measure 2
  play :cs5
  sleep b
  play :a4
  sleep b
  play :fs5
  sleep b
  play :e5
  sample cymbal, amp: 0.2
  sleep b
  play :r
  sleep d
  play :e4
  sleep a
  play :fs4
  sleep a
  #measure 3
  play :g4
  sleep b
  play :a4
  sleep b
  play :b4
  sleep b
  play :e5
  sleep b
  play :r
  sleep b
  play :fs5
  sleep b
  play :g5
  sleep b
  play :d5
  sleep b
  #measure 4
  play :d5
  sleep e
end

#Function to play drum pattern
define :play_drums do |pattern, a|
  pattern.each do |drum|
    sample drum, amp: a
    sleep 0.5
  end
end

#Intro

sample gameboy
sleep 8
sample click
sleep 1

#Notes live loop
live_loop :notes do
  with_fx :sound_out_stereo do
    6.times do
      notes 0.25, 0.5, 1, 1.5, 1
    end
    notes 0.5, 0.75, 1.25, 1.75, 1 #18 sec
    stop
  end
end

#Background chatter
live_loop :sing do
  3.times do
    sample talking, amp: 0.5
    sleep 18
  end
  stop
end

# Live loop for playing drums
live_loop :drums do
  8.times do
    play_drums(drum_pattern, a)
    a += 0.125 #fade-in
  end
  8.times do
    play_drums(drum_pattern, a)
  end
  8.times do
    play_drums(drum_pattern, a)
    a = a - 0.125 #fade-out
  end
  stop
end

sleep 13

#Background effects
live_loop :bongo do
  4.times do
    sample bongo, amp: amp
    sleep 13
    amp+=0.9
  end
  1.times do
    sample bongo, amp: amp
    sleep 13
    amp-=2
    stop
  end
end

#Ending
sleep 82
sample ending, amp: 2
sleep 3
sample :misc_burp, amp: 2
