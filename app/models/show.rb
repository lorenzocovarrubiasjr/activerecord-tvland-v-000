class Show < ActiveRecord::Base
  
  has_one :network 
  has_many :characters 
  has_many :actors, through: :characters
  
  def build_network(call_letters)
      self.network_id = Network.find_or_create_by(call_letters)
   end 
   
  
  
end