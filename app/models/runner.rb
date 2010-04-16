class Runner < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :minimum => 2
  has_many :units
  has_many :goals

  accepts_nested_attributes_for :goals, 
     :allow_destroy => :true ,  
     :reject_if => proc { |attrs|   attrs.all? { |k, v| v.blank? } } 
end
