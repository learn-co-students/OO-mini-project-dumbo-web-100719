class Ingredient

  attr_reader :ingredient_name

  @@all = []

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name 

    @@all << self
  end
  
  def self.all #should return all of the ingredient instances
    @@all
  end
  
  def self.most_common_allergen #should return the ingredient instance that the highest number of users are allergic to
      allergen_list = []
      Allergy.all.each { |allergy| allergen_list << allergy.allergen }
      allergen_list.max_by {|ingredient| allergen_list.count(ingredient)}
      
      # Allergy.all.select { |allergy| allergy.allergen }.max_by {|ingredient| .count(ingredient)}
  end

end


