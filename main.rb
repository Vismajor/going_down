require 'pry-byebug'

require_relative 'building'
require_relative 'lift'
require_relative 'person'

def catch_lift(person)
  lift.enter(person)
  building.vacate(person)
end

def exit_lift(person)
  .occupy(person)
  .leave(person)
end

b = Building.new(name: 'Argyle House', post_code: 'EH3 9DR', floors: 11, lifts: 4)

shaggy = Person.new(name: "Shaggy", destination: 9)
scooby  = Person.new(name: "Scooby", destination: 9)
fred    = Person.new(name: "Fred", destination: 4)
daphne  = Person.new(name: "Daphne", destination: 4)
velma   = Person.new(name: "Velma", destination: 7)


binding.pry; ''

#check if the lift in the building is got people in it. If it does, then we need them to leave lift. Catch the lift -> check the building occupancy - if they included, if yes -> add them to the lift.