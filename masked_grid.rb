require 'grid'

class MaskedGrid < Grid
  attr_reader :mask

  def initialize(mask)
    @mask = mask
    super(@mask.rows, @mask.columns)
  end
  
  def prepare_grid
    Array.new(rows) do |row|
      Array.new(columns) do |col|
        Cell.new(row, col) if @mask[row, col]
      end
    end
  end

  def random_cell
    row, col = @mask.random_location
    self[row, col]
  end

  def size
    @mask.count
  end

  def set_entrance
    columns.times do |col|
      if @mask[0, col]
        self[0, col].entrance = true
        break
      end
    end
  end

  def set_exit
    columns.times do |col|
      if @mask[rows - 1, columns - col - 1]
        self[rows - 1, columns - col - 1].exit = true
        break
      end
    end
  end
end
