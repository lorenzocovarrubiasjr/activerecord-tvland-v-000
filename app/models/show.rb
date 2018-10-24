class Show < ActiveRecord::Base
  
  has_one :network 
  has_many :characters 
  has_many :actors, through: :characters
  
  def build_network(network_call_letters)
      self.network = Network.find_or_create_by(call_letters: network_call_letters)
   end 
   
  
  
end