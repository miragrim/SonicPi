#Custom Song - Animal Crossing
use_bpm 96
use_synth :bass_foundation
sleep = [0.9, 1.54, 0.93, 1.54, 0.93, 1.2]
  #amp=0
  #custom samples
 
  bongo = "C:/Users/mira_grim/Downloads/BONGO.wav"
  bongo2 = "C:/Users/mira_grim/Downloads/bongo2.wav"
  cymbal = "C:/Users/mira_grim/Downloads/cymbal sound.wav"
 
  define :notes do |a,b,c,d,e|
    play :r
    sleep b
    play :b4
    sleep b
    play :g4
    sleep b
    play :e5
    sleep b
    sample cymbal
    play :d5
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
    sample cymbal
    play :e5
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
  #note plays for 13 sec
 
  live_loop :notes do
    with_fx :band_eq do
      4.times do
        notes 0.25, 0.5, 1, 1.5, 1
      end
      notes 0.5, 0.75, 1.25, 1.75, 1 #18 sec
      stop
    end
  end
 
  sleep 0.05
 
  live_loop :drums do
    24.times do
      sample :bd_ada
      sleep 1
      sample :bd_ada
      sleep 1.5
    end
    stop
  end
 
 
  #sleep 13
 
  live_loop :bongo do
    3.times do
      sample bongo
      sleep 13
    end
    stop
  end
