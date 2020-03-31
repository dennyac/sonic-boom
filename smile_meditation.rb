# Artist - Vulfpeck
# Song - Smile Meditation
# Youtube link - https://www.youtube.com/watch?v=w9COHCrwNQs

use_synth :beep
define :intro do
  i = 0.2
  6.times do
    play [:Ab2, :Ab3, :c4, :d4], amp: i, sustain: 1.2, release: 1.6
    sleep 0.7
    i += 0.1612
  end
  play [:Ab2, :Ab3, :C4, :DS4]
  sleep 0.7
  play [:Ab2, :Ab3, :B3, :F4]
  sleep 0.7
end


define :verse do
  cue :start_drums
  2.times do
    4.times do
      play [:G3, :AS3, :D4]
      sleep 0.7
    end
    3.times do
      play [:f3, :a3, :d4]
      sleep 0.7
    end
    play [:f3, :a3, :c4]
    sleep 0.7
    4.times do
      play [:G3, :AS3, :D4]
      sleep 0.7
    end
    2.times do
      play [:f3, :a3, :d4]
      sleep 0.7
    end
    play [:GS3, :C4, :DS4]
    sleep 0.7
    play [:GS3, :B3, :F4]
    sleep 0.7
  end
end

define :verse_end do
  1.times do
    4.times do
      play [:G3, :AS3, :D4]
      sleep 0.7
    end
    3.times do
      play [:f3, :a3, :d4]
      sleep 0.7
    end
    play [:f3, :a3, :c4]
    sleep 0.7
    4.times do
      play [:GS3, :C4, :DS4]
      sleep 0.7
    end
    4.times do
      play [:G3, :B3, :D4]
      sleep 0.35
    end
    play [:G3, :B3, :DS4]
    sleep 0.7
    play [:G3, :B3, :D4]
    sleep 0.7
  end
end

define :end_verse do
  2.times do
    play [:G3, :AS3, :D4]
    sleep 0.7
  end
  2.times do
    play [:F3, :AS3, :D4]
    sleep 0.7
  end
  3.times do
    play [:G3, :AS3, :D4]
    sleep 0.7
  end
  play [:G3, :AS3, :D4]
  sleep 0.155
  play [:F3, :A3, :C4]
  sleep 0.545
  2.times do
    play [:G3, :AS3, :D4]
    sleep 0.7
  end
  2.times do
    play [:F3, :AS3, :D4]
    sleep 0.7
  end
  4.times do
    play [:B3, :D4, :F4, :G4]
    sleep 0.35
  end
  2.times do
    play [:B3, :D4, :F4, :G4]
    sleep 0.7
  end
  2.times do
    play [:G3, :AS3, :D4]
    sleep 0.7
  end
  2.times do
    play [:F3, :AS3, :D4]
    sleep 0.7
  end
  2.times do
    play [:G3, :AS3, :D4]
    sleep 0.7
  end
  2.times do
    play [:FS3, :AS3, :C4]
    sleep 0.7
  end
  2.times do
    play [:c4, :d4], sustain: 1.2, release: 1.6
    sleep 0.7
  end
  4.times do
    play [:Ab2, :Ab3, :c4, :d4], sustain: 1.2, release: 1.6
    sleep 0.7
  end
end

define :drum do
  sync :start_drums
  6.times do
    sample :drum_heavy_kick
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.175
    sample :drum_heavy_kick
    sleep 0.175
    sample :drum_heavy_kick
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_heavy_kick
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_snare_hard
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_heavy_kick
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_heavy_kick
    sample :drum_cymbal_closed
    sleep 0.35
    sample :drum_cymbal_closed
    sleep 0.35
  end
end




in_thread do
  intro
  verse
  verse_end
  end_verse
end
drum

