#require 'pry'

class Play_case

  attr_accessor :board

#Initialise l'array qui constitue le board
  def initialize
    @@board = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
    return @@board
  end
#Montre le borde en array simple
  def show_board
    puts @@board
  end
#Remplace le case selectionné par un signe
  def replace_by_sign(selecase)
    @selecase = selecase
    @@board.map! do |c|
      if(c == @selecase)
        then c = "COUCOU"
        else c = c
      end
    end
  end
end


#binding.pry
#puts "C'est la fin"
