class Identical
  LINES = File.read('./day2/id_list.txt')

  def self.run
    LINES.each_line do |line_a|
      LINES.each_line do |line_b|
        diff_count = 0
        common_letters = ''

        line_a.each_char.with_index do |char_a, index|
          char_b = line_b[index]
          char_a == char_b ? common_letters << char_a : diff_count += 1
        end

        return common_letters if diff_count == 1
      end
    end
  end
end

Identical.run
