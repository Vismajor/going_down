require 'pry-byebug'

class Lift
  attr_accessor  :floor
  attr_reader :passengers, :max_passengers

  def initialize(options={})
    self.floor = 0
    @max_passengers = 8
    @passengers = []
  end
  #methods: overloaded?, get in, get out

  def distance_to_floor(floor)
    (self.floor - floor).abs
  end

  def go_up
    self.current_floor += 1
  end

  def go_down
    self.current_floor -= 1
  end

  def enter(passenger)
    passengers << passenger unless overloaded?
  end

  #takes a passenger out - how to store it?
  def leave(passenger)
    passengers.pop 
  end

  def overloaded?
    passengers.size >= max_passengers 
  end
end