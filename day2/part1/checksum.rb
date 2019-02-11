class Checksum
  def self.execute
    hash_of_counts = Hash.new(0)

    input = File.read('../day2/id_list.txt')
    input.lines.each do |line|
      array_of_letters = line.delete("\n").to_s.split('')

      count_of_letters = array_of_letters.each_with_object(Hash.new(0)) do |letter, hash|
        hash[letter] += 1
      end

      target_values = count_of_letters.select do |key|
        count_of_letters[key] == 2 || count_of_letters[key] == 3
      end

      repetitions = target_values.each_with_object({}) do |(key, values), count|
        (count[values] ||= []) << key
      end

      repetitions.keys.uniq.sort!.map do |count|
        hash_of_counts[count] += 1
      end
    end

    hash_of_counts.values.inject(:*)
  end
end

Checksum.execute
