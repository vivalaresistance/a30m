class Runner < ActiveRecord::Base
  validates_presence_of :name
  validates_length_of :name, :minimum => 2
end
