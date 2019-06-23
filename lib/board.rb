class Board
  attr_accessor :cells

  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(input)
    cells[input.to_i-1]
  end

  def full?
    cells.all? {|i| i == "X" || i == "O"}
  end

  def turn_count
    cells1 = cells.count("X")
    cells2 = cells.count("O")
    count = cells1 + cells2
  end

  def taken?(board_position)
    number = board_position.to_i
    if cells[number-1] == "X" || cells[number-1] == "O"
      return true
    else
      return false
    end
    #if position has x or o it will return true
  end

  def valid_move?(input)
    if input.to_i < 1 || input.to_i > 9
      false
    elsif
      i_input = input.to_i
      if cells[i_input-1] == "X" || cells[i_input-1] == "O"
        false
      else
        true
      end
    end
  end


  def update(input, player)
    cells[input.to_i-1] = player.token
  end



end
