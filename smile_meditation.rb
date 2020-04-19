# Artist - Vulfpeck
# Song - Smile Meditation
# Youtube link - https://www.youtube.com/watch?v=w9COHCrwNQs
use_bpm 100

keyboard_settings = {
  regular: { attack: 0.05, sustain: 0.4, release: 0.3 },
  quick_release: { attack: 0.05, sustain: 0.1, release: 0.02 }
}

drum_settings = {
  snare: { attack: 0.01, sustain: 0.2, release: 0.04, amp: 0.6 },
  snare_roll: { attack: 0.01, sustain: 0.05, release: 0.1, amp: 0.4 },
  tom: { attack: 0.01, sustain: 0.05, release: 0.04, amp: 0.3 },
  cymbol: { attack: 0.01, sustain: 0, release: 0.05, amp: 0.07 },
  cymbol_open: { attack: 0.01, sustain: 0, release: 0.8, amp: 0.08 },
  bass: { amp: 0.35, sustain: 0.5 }
}

bass_settings = {
  regular: { attack: 0.01, sustain: 0.3, release: 0.01, amp: 0.6 },
  quick_release: { attack: 0.01, sustain: 0.08, release: 0.01, amp: 0.6 },
  delayed_release: { attack: 0, sustain: 0.3, release: 0.2, amp: 0.6 }
}

flute_settings = { attack: 0.05, sustain: 0.3, release: 0.15, amp: 0.5 }
guitar_settings = { amp: 0.3, attack:  0.007,   sustain: 0.3, release: 1 }

default_sleep_time = 1.0

def get_note_symbol(note, octave)
  "#{note}#{octave}".to_sym
end

define :intro do
  6.times do
    play [:Ab2, :Ab3, :c4, :d4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  play [:Ab2, :Ab3, :C4, :DS4], keyboard_settings[:regular]
  sleep default_sleep_time
  play [:Ab2, :Ab3, :B3, :F4], keyboard_settings[:regular]
  sleep default_sleep_time
end


define :verse do
  cue :start_bass_and_drums
  5.times do |bar|
    cue :start_lead if bar == 2
    4.times do
      play [:G3, :AS3, :D4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    3.times do
      play [:f3, :a3, :d4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    play [:f3, :a3, :c4], keyboard_settings[:regular]
    sleep default_sleep_time
    4.times do
      play [:G3, :AS3, :D4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    2.times do
      play [:f3, :a3, :d4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    play [:GS3, :C4, :DS4], keyboard_settings[:regular]
    sleep default_sleep_time
    play [:GS3, :B3, :F4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
end

define :verse_end do
  1.times do
    4.times do
      play [:G3, :AS3, :D4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    3.times do
      play [:f3, :a3, :d4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    play [:f3, :a3, :c4], keyboard_settings[:regular]
    sleep default_sleep_time
    4.times do
      play [:GS3, :C4, :DS4], keyboard_settings[:regular]
      sleep default_sleep_time
    end
    4.times do
      play [:G3, :B3, :D4], keyboard_settings[:quick_release]
      sleep default_sleep_time/2
    end
    play [:G3, :B3, :DS4], keyboard_settings[:regular]
    sleep default_sleep_time
    play [:G3, :B3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
end

define :bridge do
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  2.times do
    play [:F3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  3.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  play [:G3, :AS3, :D4], keyboard_settings[:regular]
  sleep default_sleep_time/4
  play [:F3, :A3, :C4], keyboard_settings[:regular]
  sleep default_sleep_time * 3/4
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  2.times do
    play [:F3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  4.times do
    play [:B3, :D4, :F4, :G4], keyboard_settings[:quick_release]
    sleep default_sleep_time/2
  end
  2.times do
    play [:B3, :D4, :F4, :G4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  2.times do
    play [:F3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  2.times do
    play [:G3, :AS3, :D4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
  2.times do
    play [:FS3, :AS3, :C4], keyboard_settings[:regular]
    sleep default_sleep_time
  end
end

define :drums do
  11.times do
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_snare_soft, drum_settings[:snare]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/4
    sample :drum_bass_soft, drum_settings[:bass]
    sleep default_sleep_time/4
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_snare_soft, drum_settings[:snare]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_snare_soft, drum_settings[:snare]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_bass_soft, drum_settings[:bass]
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
    sample :drum_cymbal_closed, drum_settings[:cymbol]
    sleep default_sleep_time/2
  end
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_open, drum_settings[:cymbol].merge(sustain: 0.35)
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/4
  sample :drum_snare_soft, drum_settings[:snare_roll]
  sleep default_sleep_time/4
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_snare_soft, drum_settings[:snare_roll]
  sleep default_sleep_time/4
  sample :drum_snare_soft, drum_settings[:snare_roll]
  sleep default_sleep_time/4
  sample :drum_tom_hi_soft, drum_settings[:tom]
  sleep default_sleep_time/2
  sample :drum_cymbal_open, drum_settings[:cymbol_open]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sleep default_sleep_time/4
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time/4
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_open, drum_settings[:cymbol]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_open, drum_settings[:cymbol_open]
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sample :drum_cymbal_closed, drum_settings[:cymbol]
  sleep default_sleep_time/2
  sample :drum_snare_soft, drum_settings[:snare]
  sleep default_sleep_time/2
  sample :drum_cymbal_open, drum_settings[:cymbol_open]
  sleep default_sleep_time/2
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.1)
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.02)
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass]
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.1)
  sleep default_sleep_time
  sample :drum_bass_soft, drum_settings[:bass].merge(amp: 0.02)
  sleep default_sleep_time
end

define :bass_begin do
  5.times do
    play :Eb2, bass_settings[:regular]
    sleep default_sleep_time * 7/4
    play :Eb2, bass_settings[:quick_release]
    sleep default_sleep_time/4
    play :Eb2, bass_settings[:regular]
    sleep default_sleep_time * 7/4
    play :F2, bass_settings[:quick_release]
    sleep default_sleep_time/4
    play :F2, bass_settings[:regular]
    sleep default_sleep_time * 7/4
    play :F2, bass_settings[:quick_release]
    sleep default_sleep_time/4
    play :F2, bass_settings[:delayed_release]
    sleep default_sleep_time
    play :F2, bass_settings[:delayed_release]
    sleep default_sleep_time
    play :Eb2, bass_settings[:regular]
    sleep default_sleep_time * 7/4
    play :Eb2, bass_settings[:quick_release]
    sleep default_sleep_time/4
    play :Eb2, bass_settings[:regular]
    sleep default_sleep_time * 7/4
    play :F2, bass_settings[:quick_release]
    sleep default_sleep_time/4
    play :F2, bass_settings[:regular]
    sleep default_sleep_time * 7/4
    play :F2, bass_settings[:quick_release]
    sleep default_sleep_time/4
    play :Ab2, bass_settings[:delayed_release]
    sleep default_sleep_time
    play :Ab2, bass_settings[:delayed_release]
    sleep default_sleep_time
  end
end

define :bass_mid do
  play :Eb2, bass_settings[:regular]
  sleep default_sleep_time * 7/4
  play :Eb2, bass_settings[:quick_release]
  sleep default_sleep_time/4
  play :Eb2, bass_settings[:regular]
  sleep default_sleep_time * 7/4
  play :F2, bass_settings[:quick_release]
  sleep default_sleep_time/4
  play :F2, bass_settings[:regular]
  sleep default_sleep_time * 7/4
  play :F2, bass_settings[:quick_release]
  sleep default_sleep_time/4
  play :F2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :F2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :Ab2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :Ab2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :Ab2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :Ab2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :G2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :F2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :Eb2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :D2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
end

define :bass_bridge do
  play :C2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :C2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :D2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :D2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :Eb2, bass_settings[:delayed_release]
  sleep default_sleep_time * 13/4
  play :D2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/4
  play :C2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :C2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :D2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :D2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :G2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :F2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :Eb2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :D2, bass_settings[:delayed_release].merge(sustain: 0.4, release: 0.5)
  sleep default_sleep_time
  play :C2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :C2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :D2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :D2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :Eb2, bass_settings[:delayed_release]
  sleep default_sleep_time * 3/2
  play :Eb2, bass_settings[:quick_release]
  sleep default_sleep_time/2
  play :FS2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :FS2, bass_settings[:delayed_release]
  sleep default_sleep_time
  play :Ab2, bass_settings[:delayed_release].merge(sustain: 2, release: 3.6)
  sleep default_sleep_time * 8
end

define :lead_first do |octave = 4, opts = {}|
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("DS", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/2
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("G", octave)
  sleep default_sleep_time * 5/4
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/2
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time/2
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("AS", octave - 1), opts.merge(note_slide: 0.01)
  sleep default_sleep_time/64
  control note, note: get_note_symbol("C", octave)
  sleep default_sleep_time * 95/64
  play get_note_symbol("AS", octave - 1), opts
  sleep default_sleep_time
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.1)
  sleep default_sleep_time/8
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 3/8
  play get_note_symbol("AS", octave - 1), opts
  sleep default_sleep_time
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.1)
  sleep default_sleep_time/8
  control note, note: get_note_symbol("G", octave)
  sleep default_sleep_time * 35/8
end

define :lead_mid do |octave = 4, opts = {}|
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("DS", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/2
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("G", octave)
  sleep default_sleep_time * 5/4
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/64
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 31/64
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("G", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("GS", octave)
  sleep default_sleep_time * 3/4
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 3/4
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("G", octave)
  sleep default_sleep_time/4
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 11/4
end

define :lead_last do |octave = 4, opts = {}|
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("DS", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/2
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("F", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("G", octave)
  sleep default_sleep_time * 5/4
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/8
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 3/8
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("G", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("GS", octave)
  sleep default_sleep_time * 3/4
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time/2
  play get_note_symbol("DS", octave), opts
  sleep default_sleep_time
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 3/4
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time * 5/2
end

define :lead_bridge do |octave = 4, opts = {}|
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time/4
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time/4
  play get_note_symbol("C", octave + 1), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("C", octave + 1), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave + 1)
  sleep default_sleep_time * 3/4
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time
  play get_note_symbol("DS", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 13/4
  play get_note_symbol("G", octave), opts
  sleep default_sleep_time/4
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time/4
  play get_note_symbol("C", octave + 1), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("C", octave + 1), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave + 1)
  sleep default_sleep_time * 3/4
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time
  note = play get_note_symbol("F", octave + 1), opts.merge(note_slide: 0.02)
  sleep default_sleep_time/8
  control note, note: get_note_symbol("G", octave + 1)
  sleep default_sleep_time * 3/8
  note = play get_note_symbol("F", octave + 1), opts.merge(note_slide: 0.02)
  sleep default_sleep_time/8
  control note, note: get_note_symbol("G", octave + 1)
  sleep default_sleep_time * 25/8
  play get_note_symbol("F", octave + 1), opts
  sleep default_sleep_time/4   # 0.5 -> 0.25
  play get_note_symbol("D", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("DS", octave + 1), opts
  sleep default_sleep_time/4
  play get_note_symbol("F", octave + 1), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("C", octave + 1), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave + 1)
  sleep default_sleep_time * 3/4
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time
  play get_note_symbol("F", octave), opts
  sleep default_sleep_time
  play get_note_symbol("DS", octave), opts
  sleep default_sleep_time/2
  note = play get_note_symbol("C", octave), opts.merge(note_slide: 0.05)
  sleep default_sleep_time/4
  control note, note: get_note_symbol("D", octave)
  sleep default_sleep_time * 5/4
  play get_note_symbol("AS", octave), opts
  sleep default_sleep_time
  play get_note_symbol("C", octave + 1), opts
  sleep default_sleep_time
  play get_note_symbol("D", octave + 1), opts.merge(release: 4)
  sleep default_sleep_time * 7
end

define :bass do
  use_synth :fm
  bass_begin
  bass_mid
  bass_bridge
end

define :lead do  |octave = 4, opts = {}, synth = :beep|
  use_synth synth
  sleep default_sleep_time * 3/2
  lead_first octave, opts
  sleep default_sleep_time * 3/2
  lead_mid octave, opts
  sleep default_sleep_time * 3/2
  lead_first octave, opts
  sleep default_sleep_time * 3/2
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
    intro
  end
end
in_thread(name: :drums) do
  sync :start_bass_and_drums
  2.times do
    drums
  end
end
in_thread(name: :lead_flute) do
  2.times do
    sync :start_lead
    lead 5, flute_settings
  end
end
in_thread(name: :lead_guitar) do
  2.times do
    sync :start_lead
    lead 4, guitar_settings, :pluck
  end
end
sync :start_bass_and_drums
2.times do
  bass
end
