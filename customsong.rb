#Custom Song - Animal Crossing
use_bpm 102
use_synth :sine

#variables

intro = "C:/Users/mira_grim/Documents/Audacity/isabelle sample.mp4.mp3"
#intro https://youtu.be/YekLRkiIW4Y?si=Lv48XwhnhNBJQD8N
nintendo = "C:/Users/mira_grim/Documents/Audacity/NINTENDO.mp3"
#nintendo https://youtu.be/7QnTmihOqec?si=OnlFNC7jo5y2VA7G
click= "C:/Users/mira_grim/Documents/Audacity/CLICK.mp3"
#click https://www.youtube.com/watch?v=qZSjN3II0l8


amp = 1

define :notes do
  play :a4
  sleep 0.5
  play :f4
  sleep 0.5
  play :d5
  sleep 0.5
  play :c5
  sleep 0.5
  play :a4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :d4
  sleep 0.5
  play :g4
  sleep 0.5
  play :g4
  sleep 0.5
  play :f4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  play :d5
  sleep 0.5
  play :e5
  sleep 0.5
  play :f5
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :a4
  sleep 0.5
  play :f4
  sleep 0.5
  play :d5
  sleep 0.5
  play :c5
  sleep 0.5
  play :a4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :d4
  sleep 0.5
  play :g4
  sleep 0.5
  play :g4
  sleep 0.5
  play :e5
  sleep 0.5
  play :f5
  sleep 0.5
  play :c5
  sleep 0.5
  play :e4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :g4
  sleep 0.5
  play :g4
  sleep 0.5
  play :e4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :f4
  sleep 0.5
  play :g4
  sleep 0.5
  play :g4
  sleep 0.5
  play :g4
  sleep 0.5
end
#intro
sample intro
sleep 4

live_loop :notes do
  with_fx :band_eq do
    
    4.times do
      notes
    end
    stop
  end
end

sleep 24

live_loop :drums do
  24.times do
    sample :bd_ada
    sleep 1
  end
  stop
end

sleep 27

live_loop :drums do
  42.times do
    sample :bd_ada
    sleep 1
    amp = amp - 0.0238 #fade out
  end
  stop
end

live_loop :type do
  6.times do
    sample click
    sleep 6
    amp = amp - 0.1666 #fade out
  end
  stop
end

sleep 42

#outro

sample nintendo
sample :perc_snap
