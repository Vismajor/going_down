class Lift
  attr_accessor :max_people, :current_floor, :name
  attr_reader :passengers

  def initialize(options={})
    self.current_floor = 0
    self.max_people = 8
    @passengers = []
  end
  #methods: overloaded?, get in, get out

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
    passengers.slice(0)
  end

  def overloaded?
    passengers.size >= max_people 
  end
end