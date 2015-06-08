# tictactoe.rb

# How will you keep track of whose turn it is?
	# Turns should alternate between Player 1 and Player 2. Put in a loop,
	# w/ check condition to determine if someone one
# What data structure will you use to keep track of the board? You only
#   know two (Array, Hash), but remember they can be nested (meaning an
#   array can contain another array—it can even contain a hash that contains
#   another hash, though unclear if that will be useful :P)
# 	Array w/ nested hash. Or double array (2D array)
# When a player makes a move, what should happen?
	# Board should be updated, data structure updated, check if someone won
# How do you keep track of which squares have Xs and which have Os?
	# Store in data structure
# How do you detect a winner?
	# Determine if three in a row.
# When does the program stop? Is there a loop? If so, what kind?
# When someone wins, loop between player 1 and player 2 turns

#TO DO:
#Address invalid moves, must repeat turn not go to next person

class TicTacToe
	def initialize()
		@board = Array.new(3) {Array.new(3)}
	end

	def turns()
		# board = Array.new(3) {Hash.new(3)}
		# while loop to determine if game is over
		while game_over(@board) == false
			puts "Player 1:"
			move_x = gets.strip.to_i
			on_board_x(move_x)
			print_board(@board)
			if game_over(@board) == true
				break
			end
			puts "Player 2:"
			move_o = gets.strip.to_i
			on_board_o(move_o)
			print_board(@board)
			#game_over(@board)
			if game_over(@board) == true
				break
			end
			# check where to put block
		end
	end

	def on_board_x(position)
		if position / 3 == 0 && @board[0][position % 3] == nil
			@board[0][position % 3] = "X"
		elsif position / 3 == 1 && @board[1][position % 3] == nil
			@board[1][position % 3] = "X"
		elsif position / 3 == 2 && @board[2][position % 3] == nil
			@board[2][position % 3] = "X"
		else
			puts "Invalid move"

		end
	end

	def on_board_o(position)
		if position / 3 == 0 && @board[0][position % 3] == nil
			@board[0][position % 3] = "O"
			# puts "Hello"
		elsif position / 3 == 1 && @board[1][position % 3] == nil
			@board[1][position % 3] = "O"
		elsif position / 3 == 2 && @board[2][position % 3] == nil
			@board[2][position % 3] = "O"
		else
			puts "Invalid move"
		end
	end

	def run_game()
		turns()
	end

	def print_board(board)
		p @board[0]	
		p @board[1]
		p @board[2]
	end

	def game_over(board)
		if ((board[0][0] == "X" && board[0][1] == "X" && board[0][2] == "X") || (board[1][0] == "X" && board[1][1] == "X" && board[1][2] == "X") || (board[2][0] == "X" && board[2][1] == "X" && board[2][2] == "X") || (board[0][0] == "X" && board[1][0] == "X" && board[2][0] == "X") || (board[0][1] == "X" && board[1][1] == "X" && board[2][1] == "X") || (board[0][2] == "X" && board[1][2] == "X" && board[2][2] == "X") || (board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X") || (board[0][2] == "X" && board[1][1] == "X" && board[2][0] == "X"))
			puts "Player 1 wins!"
			return true
		elsif ((board[0][0] == "O" && board[0][1] == "O" && board[0][2] == "O") || (board[1][0] == "O" && board[1][1] == "O" && board[1][2] == "O") || (board[2][0] == "O" && board[2][1] == "O" && board[2][2] == "O") || (board[0][0] == "O" && board[1][0] == "O" && board[2][0] == "O") || (board[0][1] == "O" && board[1][1] == "O" && board[2][1] == "O") || (board[0][2] == "O" && board[1][2] == "O" && board[2][2] == "O") || (board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O") || (board[0][2] == "O" && board[1][1] == "O" && board[2][0] == "O"))
			puts "Player 2 wins!"
			return true
		elsif check_full(@board) == false
			puts "Draw!"
			return true
		else # Check if array is full, if so, return draw
			return false
		end
	end

	def check_full(board)
		count_row = 0
		count_col = 0
		while count_row < 3
			while count_col < 3
				if @board[count_row][count_col] == "X" || @board[count_row][count_col] == "O"
					return true
				end
			end
		end
		return false
	end
end

new_game = TicTacToe.new
new_game.run_game()

