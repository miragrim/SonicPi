# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano
define :notes do |amp|
  play:E3, amp: amp
  sleep 1
  play:B3, amp: amp
  play:E4, amp: amp
  sleep 1
  play:B3, amp: amp
  sleep 1
  play:E4, amp: amp
  sleep 1
end

define :two do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end

define :three do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end

define :seven do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end

live_loop:background_notes do
  notes 0.25
  
  notes 0.5
  
  notes 0.75
  
  5.times do
    notes 1
  end
  stop
end

live_loop :added do
  16.times do
    sample :perc_snap
    sleep 2
  end
  stop
end

# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

# Measure 2,8
two

# Measure 3,4,6
three
# Measure 4,3,6
three

# Measure 5,7
seven

# Measure 6,4,3
three


# Measure 7,5
seven

# Measure 8,2
two

#ending
3.times do
  play:E5
  play:Gs4
  sleep 1
  play :r
  sleep 1
  play:E4
  play:Gs4
  sleep 2
end
play:E5
play:Gs4
sleep 1
