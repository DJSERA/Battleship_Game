class Player
def get_move
puts "Enter a position with coordinates seprated with a space like '4 7'"
get.chomp.split(" ").map(&:to_i)
end

end
