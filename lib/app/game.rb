#require 'pry'

class Game
  attr_accessor :player
#Méthode d'initialisation
  def initialize(player1, player2)
    @player1 = Player1.new(player1)
    @player2 = Player2.new(player2)
  end
#Méthode selection de la case
  def case_selection
    puts "Quelle case veux tu prendres ?"
    print ">"
    @selecase = gets.chomp
    @selecase = selecase
    return @selecase
  end
#Méthode c'est gagné en horizontale ?
  def check_win_in_horizon?
    if(@@board[0] ==  @@board[1] && @@board[1] == @@board[2])
      then return true
    end
    if(@@board[3] ==  @@board[4] && @@board[4] == @@board[5])
      then return true
    end
    if(@@board[6] ==  @@board[7] && @@board[7] == @@board[8])
      then return true
    end
  end
#Méthode c'est gagné en horizontale ?
  def check_win_in_vertical?
    if(@@board[0] ==  @@board[3] && @@board[3] == @@board[6])
      then return true
    end
    if(@@board[1] ==  @@board[4] && @@board[4] == @@board[7])
      then return true
    end
    if(@@board[2] ==  @@board[5] && @@board[5] == @@board[8])
      then return true
    end
  end
#Méthode c'est gagné en diagonale ?
  def check_win_in_diagonal?
    if(@@board[0] ==  @@board[4] && @@board[4] == @@board[8])
      then return true
    end
    if(@@board[3] ==  @@board[4] && @@board[4] == @@board[6])
      then return true
    end
  end
end

#binding.pry
#puts "C'est la fin"
