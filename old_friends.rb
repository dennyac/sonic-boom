# Welcome to Sonic Pi

define :lead do
  with_fx :reverb, mix: 0.90 do
    with_fx(:echo, delay: 0.9, decay: 6) do
      play :D4
      sleep 1
      play :B3
      sleep 1
      play :CS4
      sleep 1
      play :E4
      sleep 1
    end
  end
end

define :lead_section do
  use_synth :beep
  8.times do
    lead
  end
end

define :drums_section do
  sleep 5
  sample :drum_snare_hard
  sleep 1.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_soft
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_soft
  sleep 0.25 + 0.125/2
  sample :drum_bass_soft
  sleep 0.25 - 0.125/2
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.25 + 0.125
  sample :drum_bass_soft
  sleep 0.5 + 0.125
  sample :drum_bass_soft
  sleep 0.25 + 0.125/2
  sample :drum_bass_soft
  sleep 1 - (0.25 + 0.125/2)
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_soft
  sleep 0.25 + 0.125/2
  sample :drum_bass_soft
  sleep 1 - (0.25 + 0.125/2)
  sample :drum_bass_soft
  sleep 0.25 + 0.125/2
  sample :drum_bass_soft
  sleep 1 - (0.25 + 0.125/2)
end

define :background do
  sleep 16
  play :B2, amp: 0.5, sustain: 2, release: 2
  sleep 4
  play :G2, amp: 0.5, sustain: 2, release: 2
  sleep 4
  play :E2, amp: 0.5, sustain: 2, release: 2
  sleep 4
  play :D2, amp: 0.5, sustain: 2, release: 2
  sleep 4
end

use_bpm 65

in_thread(name: :background) do
  use_synth :tb303
  background
end


in_thread(name: :lead) do
  lead_section
end

in_thread(name: :drums) do
  drums_section
end