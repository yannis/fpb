class Award < ActiveRecord::Base
  validates_presence_of :laureate, :title, :awarded_on
end
