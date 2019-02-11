class FrequencyAccumulator
  def self.acumulate
    input = File.read('../day1/frequencies.txt')
    input.lines.each.map(&:to_i).reduce(:+)
  end
end


FrequencyAccumulator.acumulate
