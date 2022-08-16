class BowlingGame
  def simple_score(pins)
    return pins.reduce { |score, number| score + number }
  end

  def simple_score2(pins)
    score = 0
    pins.each do |frame|
      if frame == "-"
        score += 0
      else
        score += frame
      end
    end
    return score
  end

  def spares(pins)
    score = 0
    index = 0
    while index < pins.length
      if pins[index] == "/"
        score += 10 - pins[index - 1]
        score += pins[index + 1]
      elsif pins[index] == "-"
        score += 0
      else
        score += pins[index]
      end
      index += 1
    end
    return score
  end

  def strikes(pins)
  end
end
