class Restaurant < ActiveRecord::Base

  attr_accesible :name, :longitude, :latitude, :description

  validates :name, :longitude, :laitude, :description, :presence => true

  validates :longitude, :numericality => { :only_integer => true }
  validates :latitude, :numericality => { :only_integer => true }


end

some_values = {:name => "David", :occupation => "Code Artist"}

params = {
  :restaurant => some_values
}

Restaurant.new(params[:restaurant])
Restaurant.new(:name => "David", :occupation => "Code Artist")
Restaurant.new()