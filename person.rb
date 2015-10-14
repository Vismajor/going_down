class Person
  attr_accessor :current_floor, :name, :destination


  def initialize(options={})
    self.name = options[:name]
    self.destination = options[:destination]
    self.current_floor = options[:current_floor]
  end

end