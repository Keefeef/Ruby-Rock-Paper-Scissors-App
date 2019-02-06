class Rps

  attr_reader :rock, :paper, :scissors

  def initialize(rock, paper, scissor)
    @rock = rock
    @paper = paper
    @scissors = scissors
  end

  def rock_scissors
    if @rock || @scissors
      return "Rock wins!"
    end
  end

  def rock_paper
    if @rock || @paper
      return "Paper wins!"
    end
  end

  def paper_scissors
    if @paper || @scissors
      return "Scissors wins!"
    end
  end

  def paper_paper
    if @paper == @paper
      return "It's a draw!"
    end
  end

  def rock_rock
    if @rock == @rock
      return "It's a draw!"
    end
  end

  def scissors_scissors
    if @scissors == @scissors
      return "It's a draw!"
    end
  end

end
