class Square
  STRING = File.read('./day3/input.txt')

  def self.overlaping
    claims = STRING.split(/\n/)

    board = []

    claims.each do |claim|
      parts = claim.split
      edges = parts[2].split(',')
      dimensions = parts[3].split('x')

      id = parts[0]
      target_column = edges.first.to_i
      target_row = edges.last.to_i
      width = dimensions.first.to_i
      height = dimensions.last.to_i

      (target_row...target_row + height).each do |row_index|
        board[row_index] = [] if board[row_index].nil?

        row = board[row_index]

        (target_column...target_column + width).each do |index|
          row[index] = row[index].nil? ? id : 'X'
        end
      end
    end

    p board.flatten.count('X')
  end
end

Square.overlaping

# 1 @ 1,3: 4x4
# 2 @ 3,1: 4x4
# 3 @ 5,5: 2x2
