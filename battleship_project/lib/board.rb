class Board
    attr_reader :size

    def self.print_grid(grid)
    @grid.each do |row|
        puts row.join(" ")
        end
    end


      def initialize (n)
        @grid = Array.new(n) {array.new(n, :N)}
        @size = (n*n)
    
  end

  def [] (position)
row, col = position
@grid[row][col]
end

def []= (postion, value)
    row, col = position
    @grid[row][col] = value
end

def num_ships 
    @grid.flatten.count {|ele| ele == :S}
    end
end

def attack (position)
if self[position] == :S
    self[position] = :H
    puts "You have sunk my battleship"
    return true
else
    self[position] = :X
    puts "You have missed"
    return false
    end
end

def place_random_ships

    while self.num_ships < total_ships
    total_ships = @size *0.25
    rand_row =  rand(0...n)
    rand_col =  rand(0...n)
    pos =  [rand_row, rand_col]
    self [pos] = :S
end


def hidden_ship_grid 
@grid.map do |row|
    row.map do |ele|
        if ele == :S 
        :N
        else
            ele
            end
        end
    end
end

def cheat 
    Board.print_grid(@grid) 
end

def print 
    
    Board.print_grid(self.hidden_ship_grid) 
end

end

