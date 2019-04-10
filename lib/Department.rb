class Department

attr_reader :name, :manager, :location

@@all = []

  def initialize(name, location)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


end
