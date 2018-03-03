require './chair'

class Car
  attr_accessor :model
  attr_accessor :power
  attr_accessor :type

  def initialize(model, power, type)
    @model = model
    @power = power
    @type = type
  end

  def passanger_capacity
    if @type == "Sport"
      2
    elsif @type == "Coupe"
      5
    elsif @type == "Suv"
      7
    else
      "Not listed"
    end
  end

  def speed
    if @power < 100
      150
    elsif @power >= 100 && @power <= 200
      250
    elsif @power > 200
      300
    end
  end

  def is_classic?
    if @model <= 1980
      true
    else
      false
    end
  end
  def car_chair_style(material, size, style)
    @chair ||=Chair.new("wood", 50, "sport")
  end

  def turn_on
    "Welcome"
  end

  def turn_off
    "Bye"
  end

  def set_autodrive(state)
    if state.equal? "on"
      "Tell location"
      location = gets.chomp
      if location.equal? location
        "We have arrive"
        state = "off"
      end
    else
      "Autodrive is off"
    end
  end
end
