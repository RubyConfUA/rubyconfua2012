require 'singleton'

class RubyConfUA::Place
  include ::Singleton

  def initialize
    @city_name    = nil
    @hall_name    = nil
    @hall_address = nil
    @seats_quant  = 0
    @place_for_cb = false
  end

  attr_reader :city_name, :hall_name, :hall_address, :seats_quant, :place_for_cb

  def city(city_name)
    @city_name = city_name
  end

  def hall(hall_name)
    @hall_name = hall_name
  end

  def address(hall_address)
    @hall_address = hall_address
  end

  def seats(num)
    @seats_quant = num.to_i
  end

  def place_for_coffee_brakes(val)
    @place_for_cb = !!val
  end

  class <<self
    def describe(&block)
      self.instance.instance_eval(&block)
    end

    def city
      self.instance.city_name
    end

    def hall
      self.instance.hall_name
    end

    def address
      self.instance.hall_address
    end

    def seats
      self.instance.seats_quant
    end

    def place_for_coffee_brakes
      self.instance.place_for_cb
    end
  end
end