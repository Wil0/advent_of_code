class Identical
  def sef.calculate
    arr = ['fghij','klmno','pqrst','fguij','axcye','wvxyz']

    # input = File.read('../day2/id_list.txt')

    i = 1
    while i < arr.size
      arr.each do |line|
        @current_line = line.delete("\n").to_s.split('')
        @next_line = arr[i].delete("\n").to_s.split('')
        binding.pry
        break if (@current_line - @next_line).count == 1

        i += 1
      end
    end

    [@next_line, @current_line]
  end
end
