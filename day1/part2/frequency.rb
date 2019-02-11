class Frequency
  def repeating_freq
    input = File.read('../day1/frequencies.txt')
    prev_freqs = { 0 => true }
    freq = 0

    loop do
      input.lines.each do |line|
        freq += line.to_i
        return freq if prev_freqs[freq]

        prev_freqs[freq] = true
      end
    end
  end
end

Frequency.new.repeating_freq
