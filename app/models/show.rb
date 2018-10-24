class Show < ActiveRecord::Base
  
  has_one :network 
  has_many :characters 
  has_many :actors, through: :characters
  
  def build_network(Network.call_letters = nil)
      self.network_id = Network.find_or_create_by(Network.call_letters = nil)
   end 
   
  
  
end