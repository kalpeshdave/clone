class Interconnect < ActiveRecord::Base
  belongs_to :person
  belongs_to :work
  validates_uniqueness_of :id, :scope => [:person_id, :work_id], :message => "Hi my name is kalpesh."
end
