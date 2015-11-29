# Helper Method
=begin
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end
=end
# Define your WIN_COMBINATIONS constant
# Board with winning X in the top row.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Definition of indexes that compose a top row win.
def move(board)
  #top_row_win = [0,1,2,3,4,5,6,7,8]

  WIN_COMBINATIONS = [
  [0,1,2],  # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6], # Left down row
  [1,4,7], # Middle down row
  [2,5,8], # Right down row
  [0,4,8], # Left diagonally down row
  [2,4,6] # Right diagonally down row
  # ETC, an array for each win combination
]


  # Check if each index in the top_row_win array contains an "X"
  if board[WIN_COMBINATIONS[0]] == "X" && board[WIN_COMBINATIONS[1]] == "X" && board[WIN_COMBINATIONS[2]] == "X"
    puts "X won in the top row"
  end
=begin
  elsif board[top_row_win[3]] == "X" && board[top_row_win[4]] == "X" && board[top_row_win[5]] == "X"
    puts "X won in the center row"
  elsif board[top_row_win[6]] == "X" && board[top_row_win[7]] == "X" && board[top_row_win[8]] == "X"
    puts "X won in the bottom row"
  elsif board[top_row_win[0]] == "X" && board[top_row_win[4]] == "X" && board[top_row_win[8]] == "X"
    puts "X won in the left down diagonally row"
  elsif board[top_row_win[2]] == "X" && board[top_row_win[4]] == "X" && board[top_row_win[6]] == "X"
    puts "X won in the right down diagonally row"
  elsif board[top_row_win[0]] == "X" && board[top_row_win[3]] == "X" && board[top_row_win[6]] == "X"
    puts "X won in the left straight down row"
  elsif board[top_row_win[2]] == "X" && board[top_row_win[5]] == "X" && board[top_row_win[8]] == "X"
    puts "X won in the right straight down row"
  elsif board[top_row_win[1]] == "X" && board[top_row_win[4]] == "X" && board[top_row_win[7]] == "X"
    puts "X won in the center down"
  end
=end
end


move(board)