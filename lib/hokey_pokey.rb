class HokeyPokey
  def verse(number)
    "You put your #{side(number)}#{body_part(number)} in\n" +
    "You put your #{side(number)}#{body_part(number)} out\n" +
    "You put your #{side(number)}#{body_part(number)} in\n" +
    "And you shake it all about\n" +
    "You do the Hokey Pokey and you turn yourself around\n" +
    "That's what it's all about!\n"
  end

  def song
    (1..5).map { |number| verse(number) }.join("\n")
  end

  private

  def side(number)
    if number == 5
      ""
    elsif number % 2 == 1
      "right "
    else
      "left "
    end
  end

  def body_part(number)
    if number == 1 || number == 2
      "foot"
    elsif number == 3 || number == 4
      "hand"
    elsif number == 5
      "head"
    end
  end
end
