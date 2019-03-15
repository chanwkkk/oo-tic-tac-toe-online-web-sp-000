class TicTacToe
  def initialize(board)
    @board=Array.new(9," ")
  end

  WIN_COMBINATIONS=[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(input)
  if input.to_i.to_s==input
     return input.to_i-1
   else return -1
  end
end

def move(index,value="X")
  board[index]=value
end

def position_taken?(index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(index)
  if (!(board[index]=="X"))&&(!(board[index]=="O"))&& index.between?(0,8)
    return true
end
end

def turn
  puts 'Please enter 1-9:'
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(index)
    move(index,current_player(board))
  else turn(board)
  end
  display_board(board)
end
































end
