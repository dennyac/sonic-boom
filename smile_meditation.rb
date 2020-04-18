# Artist - Vulfpeck
# Song - Smile Meditation
# Youtube link - https://www.youtube.com/watch?v=w9COHCrwNQs
use_bpm 70

keyboard_settings = {
  regular: { attack: 0.05, sustain: 0.3, release: 0.15 },
  quick_release: { attack: 0.05, sustain: 0.06, release: 0.01 }
}

drum_settings = {
  snare: { attack: 0.01, sustain: 0.1, release: 0.04, amp: 0.5 },
  snare_roll: { attack: 0.01, sustain: 0.04, release: 0.1, amp: 0.4 },
  tom: { attack: 0.01, sustain: 0.05, release: 0.04, amp: 0.3 },
  cymbol: { attack: 0.01, sustain: 0, release: 0.05, amp: 0.07 },
  cymbol_open: { attack: 0.01, sustain: 0, release: 0.8, amp: 0.08 },
  bass: { amp: 0.35, sustain: 0.5 }
}

bass_settings = {
  regular: { attack: 0.01, sustain: 0.2, release: 0.01, amp: 0.57 },
  quick_release: { attack: 0.01, sustain: 0.05, release: 0.01, amp: 0.57 },
  delayed_release: { attack: 0, sustain: 0.3, release: 0.2, amp: 0.57 }
}

flute_settings = { attack: 0.05, sustain: 0.3, release: 0.15, amp: 0.48 }
guitar_settings = { amp: 0.28, attack:  0.007,   sustain: 0.3, release: 1 }

define :intro do
  i = 0.2
  6.times do
    play [:Ab2, :Ab3, :c4, :d4], keyboard_settings[:regular]
    sleep 0.7
    i += 0.1612
  end
  play [:Ab2, :Ab3, :C4, :DS4], keyboard_settings[:regular]
  sleep 0.7
  play [:Ab2, :Ab3, :B3, :F4], keyboard_settings[:regular]
  sleep 0.7
end


define :verse do
  cue :start_bass_and_drums
  5.times do
    4.times do
      play [:G3, :AS3, :D4], keyboard_settings[:regular]
      sleep 0.7
    end
    3.times do
      play [:f3, :a3, :d4], keyboard_settings[:regular]
      sleep 0.7
    end
    play [:f3, :a3, :c4], keyboard_settings[:regular]
    sleep 0.7
    4.times do
      play [:G3, :AS3, :D4], keyboard_settings[:regular]
      sleep 0.7
    end
    2.times do
      play [:f3, :a3, :d4], keyboard_settings[:regular]
      sleep 0.7
    end
    play [:GS3, :C4, :DS4], keyboard_settings[:regular]
    sleep 0.7
    play [:GS3, :B3, :F4], keyboard_settings[:regular]
    sleep 0.7
  end
end

define :verse_end do
  1.times do
    4.times do
      play [:G3, :AS3, :D4], keyboard_settings[:regular]
      sleep 0.7
    end
    3.times do
      play [:f3, :a3, :d4], keyboard_settings[:regular]
      sleep 0.7
    end
    play [:f3, :a3, :c4], keyboard_settings[:regular]
    sleep 0.7
    4.times do
      play [:GS3, :C4, :DS4], keyboard_settings[:regular]
      sleep 0.7
    end
    4.times do
      play [:G3, :B3, :D4], keyboard_settings[:quick_release]
      sleep 0.35
    end
    play [:G3, :B3, :DS4], keyboard_settings[:regular]
    sleep 0.7
    play [:G3, :B3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
end

define :bridge do
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:F3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  3.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  play [:G3, :AS3, :D4], keyboard_settings[:regular]
  sleep 0.155
  play [:F3, :A3, :C4], keyboard_settings[:regular]
  sleep 0.545
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:F3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  4.times do
    play [:B3, :D4, :F4, :G4], keyboard_settings[:quick_release]
    sleep 0.35
  end
  2.times do
    play [:B3, :D4, :F4, :G4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:F3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:FS3, :AS3, :C4], keyboard_settings[:regular]
    sleep 0.7
  end
  2.times do
    play [:c4, :d4], keyboard_settings[:regular]
    sleep 0.7
  end
  4.times do
    play [:Ab2, :Ab3, :c4, :d4], keyboard_settings[:regular]
    sleep 0.7
  end
  play [:Ab2, :Ab3, :C4, :DS4], keyboard_settings[:regular]
  sleep 0.7
  play [:Ab2, :Ab3, :B3, :F4], keyboard_settings[:regular]
  sleep 0.7
end

define :drums do
  11.times do
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_snare_soft, drum_settings[:snare]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.175
    sample :drum_bass_soft, drum_settings[:bass]
    sleep 0.175
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_snare_soft, drum_settings[:snare]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_snare_soft, drum_settings[:snare]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep 0.35
  end
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_open, drum_settings[:cymbol].merge(sustain: 0.35)
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.175
  sample :drum_snare_soft, drum_settings[:snare_roll]
  sleep 0.175
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_snare_soft, drum_settings[:snare_roll]
  sleep 0.175
  sample :drum_snare_soft, drum_settings[:snare_roll]
  sleep 0.175
  sample :drum_tom_hi_soft, drum_settings[:tom]
  sleep 0.35
  sample :drum_cymbal_open, drum_settings[:cymbol_open]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sleep 0.175
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.175
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_open, drum_settings[:cymbol]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_open, drum_settings[:cymbol_open]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep 0.35
  sample :drum_snare_soft, drum_settings[:snare]
  sleep 0.35
  sample :drum_cymbal_open, drum_settings[:cymbol_open]
  sleep 0.35
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.1)
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.02)
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass]
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.1)
  sleep 0.7
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.02)
  sleep 0.7
end

define :bass_begin do
  5.times do
    play :Eb2, bass_settings[:regular]
    sleep 1.225
    play :Eb2, bass_settings[:quick_release]
    sleep 0.175
    play :Eb2, bass_settings[:regular]
    sleep 1.225
    play :F2, bass_settings[:quick_release]
    sleep 0.175
    play :F2, bass_settings[:regular]
    sleep 1.225
    play :F2, bass_settings[:quick_release]
    sleep 0.175
    play :F2, bass_settings[:delayed_release]
    sleep 0.7
    play :F2, bass_settings[:delayed_release]
    sleep 0.7
    play :Eb2, bass_settings[:regular]
    sleep 1.225
    play :Eb2, bass_settings[:quick_release]
    sleep 0.175
    play :Eb2, bass_settings[:regular]
    sleep 1.225
    play :F2, bass_settings[:quick_release]
    sleep 0.175
    play :F2, bass_settings[:regular]
    sleep 1.225
    play :F2, bass_settings[:quick_release]
    sleep 0.175
    play :Ab2, bass_settings[:delayed_release]
    sleep 0.7
    play :Ab2, bass_settings[:delayed_release]
    sleep 0.7
  end
end

define :bass_mid do
  play :Eb2, bass_settings[:regular]
  sleep 1.225
  play :Eb2, bass_settings[:quick_release]
  sleep 0.175
  play :Eb2, bass_settings[:regular]
  sleep 1.225
  play :F2, bass_settings[:quick_release]
  sleep 0.175
  play :F2, bass_settings[:regular]
  sleep 1.225
  play :F2, bass_settings[:quick_release]
  sleep 0.175
  play :F2, bass_settings[:delayed_release]
  sleep 0.7
  play :F2, bass_settings[:delayed_release]
  sleep 0.7
  play :Ab2, bass_settings[:delayed_release]
  sleep 0.7
  play :Ab2, bass_settings[:delayed_release]
  sleep 0.7
  play :Ab2, bass_settings[:delayed_release]
  sleep 0.7
  play :Ab2, bass_settings[:delayed_release]
  sleep 0.7
  play :G2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :F2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :Eb2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :D2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
end

define :bass_bridge do
  play :C2, bass_settings[:delayed_release]
  sleep 1.05
  play :C2, bass_settings[:quick_release]
  sleep 0.35
  play :D2, bass_settings[:delayed_release]
  sleep 1.05
  play :D2, bass_settings[:quick_release]
  sleep 0.35
  play :Eb2, bass_settings[:delayed_release]
  sleep 2.275
  play :D2, bass_settings[:delayed_release]
  sleep 0.475
  play :C2, bass_settings[:delayed_release]
  sleep 1.05
  play :C2, bass_settings[:quick_release]
  sleep 0.35
  play :D2, bass_settings[:delayed_release]
  sleep 1.05
  play :D2, bass_settings[:quick_release]
  sleep 0.35
  play :G2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :F2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :Eb2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :D2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep 0.7
  play :C2, bass_settings[:delayed_release]
  sleep 1.05
  play :C2, bass_settings[:quick_release]
  sleep 0.35
  play :D2, bass_settings[:delayed_release]
  sleep 1.05
  play :D2, bass_settings[:quick_release]
  sleep 0.35
  play :Eb2, bass_settings[:delayed_release]
  sleep 1.05
  play :Eb2, bass_settings[:quick_release]
  sleep 0.35
  play :FS2, bass_settings[:delayed_release]
  sleep 0.7
  play :FS2, bass_settings[:delayed_release]
  sleep 0.7
  play :Ab2, bass_settings[:delayed_release].merge(sustain: 2, release: 3.6)
  sleep 5.6
end

define :bass do
  use_synth :fm
  bass_begin
  bass_mid
  bass_bridge
end


def get_note_symbol(note, octave)
  "#{note}#{octave}".to_sym
end

define :lead_first do |octave = 4, opts = {}|
  play get_note_symbol("D", octave + 1), opts
  sleep 0.175
  play get_note_symbol("DS", octave + 1), opts
  sleep 0.175
  play get_note_symbol("D", octave + 1), opts
  sleep 0.35
  play get_note_symbol("AS", octave), opts
  sleep 0.35
  play get_note_symbol("F", octave), opts
  sleep 0.35
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("G", octave)
  sleep 0.875
  play get_note_symbol("F", octave), opts
  sleep 0.7
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.35
  control note, note: get_note_symbol("D", octave)
  sleep 0.35
  play get_note_symbol("F", octave), opts
  sleep 0.35
  note = play get_note_symbol("AS", octave - 1), opts.merge(note_slide: 0.01)
  sleep 0.01
  control note, note: get_note_symbol("C", octave)
  sleep 1.04
  play get_note_symbol("AS", octave - 1), opts
  sleep 0.7
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.1)
  sleep 0.1
  control note, note: get_note_symbol("D", octave)
  sleep 0.3
  play get_note_symbol("AS", octave - 1), opts
  sleep 0.6
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.1)
  sleep 0.2
  control note, note: get_note_symbol("G", octave)
  sleep 4.025
end

define :lead_mid do |octave = 4, opts = {}|
  play get_note_symbol("D", octave + 1), opts
  sleep 0.175
  play get_note_symbol("DS", octave + 1), opts
  sleep 0.175
  play get_note_symbol("D", octave + 1), opts
  sleep 0.35
  play get_note_symbol("AS", octave), opts
  sleep 0.35
  play get_note_symbol("F", octave), opts
  sleep 0.35
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("G", octave)
  sleep 0.875
  play get_note_symbol("F", octave), opts
  sleep 0.7
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.0875
  control note, note: get_note_symbol("D", octave)
  sleep 0.2625
  play get_note_symbol("F", octave), opts
  sleep 0.35
  play get_note_symbol("G", octave), opts
  sleep 0.35
  play get_note_symbol("F", octave), opts
  sleep 0.35
  note = play get_note_symbol("G", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("GS", octave)
  sleep 0.525
  play get_note_symbol("G", octave), opts
  sleep 0.7
  play get_note_symbol("F", octave), opts
  sleep 0.35
  play get_note_symbol("G", octave), opts
  sleep 0.7
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave)
  sleep 0.525
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("G", octave)
  sleep 0.175
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave)
  sleep 2.975
end

define :lead_last do |octave = 4, opts = {}|
  play get_note_symbol("D", octave + 1), opts
  sleep 0.175
  play get_note_symbol("DS", octave + 1), opts
  sleep 0.175
  play get_note_symbol("D", octave + 1), opts
  sleep 0.35
  play get_note_symbol("AS", octave), opts
  sleep 0.35
  play get_note_symbol("F", octave), opts
  sleep 0.35
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("G", octave)
  sleep 0.875
  play get_note_symbol("F", octave), opts
  sleep 0.7
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.0875
  control note, note: get_note_symbol("D", octave)
  sleep 0.2625
  play get_note_symbol("F", octave), opts
  sleep 0.35
  play get_note_symbol("G", octave), opts
  sleep 0.35
  play get_note_symbol("F", octave), opts
  sleep 0.35
  note = play get_note_symbol("G", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("GS", octave)
  sleep 0.525
  play get_note_symbol("G", octave), opts
  sleep 0.7
  play get_note_symbol("F", octave), opts
  sleep 0.35
  play get_note_symbol("DS", octave), opts
  sleep 0.7
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave)
  sleep 0.525
  play get_note_symbol("G", octave), opts
  sleep 1.75
end

define :lead_bridge do |octave = 4, opts = {}|
  play get_note_symbol("G", octave), opts
  sleep 0.175
  play get_note_symbol("AS", octave), opts
  sleep 0.175
  play get_note_symbol("C", octave + 1), opts
  sleep 0.35
  note = play get_note_symbol("C", octave + 1), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave + 1)
  sleep 0.525
  play get_note_symbol("AS", octave), opts
  sleep 0.7
  play get_note_symbol("F", octave), opts
  sleep 0.7
  play get_note_symbol("DS", octave), opts
  sleep 0.35
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave)
  sleep 2.275
  play get_note_symbol("G", octave), opts
  sleep 0.175
  play get_note_symbol("AS", octave), opts
  sleep 0.175
  play get_note_symbol("C", octave + 1), opts
  sleep 0.35
  note = play get_note_symbol("C", octave + 1), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave + 1)
  sleep 0.525
  play get_note_symbol("AS", octave), opts
  sleep 0.7
  play get_note_symbol("F", octave), opts
  sleep 0.7
  note = play get_note_symbol("F", octave + 1), opts.merge(note_slide: 0.02)
  sleep 0.1125
  control note, note: get_note_symbol("G", octave + 1)
  sleep 0.2375
  note = play get_note_symbol("F", octave + 1), opts.merge(note_slide: 0.02)
  sleep 0.1125
  control note, note: get_note_symbol("G", octave + 1)
  sleep 1.9875
  play get_note_symbol("F", octave + 1), opts
  sleep 0.35
  play get_note_symbol("D", octave + 1), opts
  sleep 0.175
  play get_note_symbol("DS", octave + 1), opts
  sleep 0.175
  play get_note_symbol("F", octave + 1), opts
  sleep 0.35
  note = play get_note_symbol("C", octave + 1), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave + 1)
  sleep 0.525
  play get_note_symbol("AS", octave), opts
  sleep 0.7
  play get_note_symbol("F", octave), opts
  sleep 0.7
  play get_note_symbol("DS", octave), opts
  sleep 0.35
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep 0.175
  control note, note: get_note_symbol("D", octave)
  sleep 0.875
  play get_note_symbol("AS", octave), opts
  sleep 0.7
  play get_note_symbol("C", octave + 1), opts
  sleep 0.7
  play get_note_symbol("D", octave + 1), opts.merge(release: 4)
  sleep 4.9
end

define :lead do  |octave = 4, opts = {}, synth = :beep|
  use_synth synth
  lead_first octave, opts
  lead_mid octave, opts
  lead_first octave, opts
  lead_last octave, opts
  lead_bridge octave, opts
end

in_thread(name: :keyboard) do
  use_synth :beep
  intro
  2.times do
    verse
    verse_end
    bridge
  end
end
in_thread(name: :drums) do
  sync :start_bass_and_drums
  2.times do
    drums
  end
end
in_thread(name: :lead_flute) do
  sync :start_bass_and_drums
  sleep_time = 23.45
  2.times do
    sleep sleep_time
    lead 5, flute_settings
    sleep_time += 1.4
  end
end
in_thread(name: :lead_guitar) do
  sync :start_bass_and_drums
  sleep_time = 23.45
  2.times do
    sleep sleep_time
    lead 4, guitar_settings, :pluck
    sleep_time += 1.4
  end
end
2.times do
  sync :start_bass_and_drums
  bass
end
