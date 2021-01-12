require_relative "board"
require_relative "player"
attr.reader :board, :player
class Battleship
    def initialize (n)
        @player = Player.new 
        @Board = Board.new(n)
        @remaining_misses = (@board.size * 0.5)

end

def start_game
@Bard.place_random_ships
puts @Board.num_ships
@Board.print
end

def lose?
    if @remaining_misses <= 0 
        p "You lose!"
        return true
    else
        return false

    end

end

def win?
    if Board.num_ships == 0
        p "You win!"
        return true
    else
        return false
    end
end

def game_over?
    if self.win? || self.lose?
        return true
    else
        return false
        end
    end

    def turn
       position = @player.get_move
       if @board.attack(position) == false
        @remaining_misses -= 1 
       end
       @board.print
       puts "Remaining misses: #{remaining_misses}"
    end