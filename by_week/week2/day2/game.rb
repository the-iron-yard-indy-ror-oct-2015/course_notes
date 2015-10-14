require_relative 'dice_probabilities'

game = DiceProbabilities.new(:which => ARGV[0], :rounds => ARGV[1], :sides => ARGV[2])
game.check_probability
