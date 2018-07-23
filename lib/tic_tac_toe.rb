class TicTacToe
  def initialize
    @board = Array.new(9, " ")
  end  
  
  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    index = user_input.to_i - 1
    return index
  end
  
  def move(index, character="X")
    @board[index] = character
  end
  
  def position_taken?(index)
    @board[index] =="X" || @board[index] == "O"
  end
  
  def valid_move?(board,index)
    index.between?(0,@board.length - 1) && !position_taken?(index)
  end
  
  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board,index)
      move(board, index, current_player(board))
      display_board(board)
    else
      turn
    end
  end


end

