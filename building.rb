class Building
  attr_accessor :name, :post_code, :floors, :occupants
  attr_reader :lifts


  def initialize(options={})
    self.name = options[:name]
    self.post_code = options[:post_code]
    self.floors = options.fetch(:floors, 1)
    @occupants = []
    @lifts = options[:lifts].times.map { Lift.new}
  end

#if you want to fiddle with the name more
#def name=(value)
#  @name = value.to_s.upcase
#end
#methods: people occupation
end