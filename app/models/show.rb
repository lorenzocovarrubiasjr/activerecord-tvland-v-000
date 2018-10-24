class Show < ActiveRecord::Base
  
  belongs_to :network 
  has_many :characters 
  has_many :actors, through: :characters
  
  def build_network(network_call_letters)
      network_abr = Network.find_or_create_by(call_letters: network_call_letters)
      self.network = network_abr
      binding.pry
   end 
   
  
  
end