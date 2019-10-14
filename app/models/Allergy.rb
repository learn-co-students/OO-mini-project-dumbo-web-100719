class Allergy

  attr_reader :name, :allergen

  @@all = []

  def initialize(name, allergen)
    @name = name
    @allergen = allergen

    @@all << self
  end

  def self.all #should return all of the Allergy instances
    @@all
  end

end
