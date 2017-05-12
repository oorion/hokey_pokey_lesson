class HokeyPokey
  def verse(number)
    body_part = BodyPart.for(number)
    "You put your #{body_part} in\n" +
    "You put your #{body_part} out\n" +
    "You put your #{body_part} in\n" +
    "And you shake it all about\n" +
    "You do the Hokey Pokey and you turn yourself around\n" +
    "That's what it's all about!\n"
  end

  def song
    (1..6).map { |number| verse(number) }.join("\n")
  end
end

class BodyPart
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 1, 2
      Foot.new(number)
    when 3, 4
      Hand.new(number)
    when 5
      Head.new(number)
    when 6
      Whole.new(number)
    else
      new(number)
    end
  end

  def side
    if number % 2 == 1
      "right "
    else
      "left "
    end
  end

  def to_s
    side + body_part
  end
end

class Foot < BodyPart
  def body_part
    "foot"
  end
end

class Hand < BodyPart
  def body_part
    "hand"
  end
end

class Head < BodyPart
  def body_part
    "head"
  end

  def side
    ""
  end
end

class Whole < BodyPart
  def body_part
    "whole self"
  end

  def side
    ""
  end
end
