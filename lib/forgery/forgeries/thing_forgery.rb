class Forgery::Thing < Forgery 
  def self.thing_name
    dictionaries[:thing].random 
  end
end