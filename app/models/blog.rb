class Blog < ActiveRecord::Base
  belongs_to :person
  has_many :comments, :dependent => :destroy
  has_one :blogcatagory

 # Validations
validates_presence_of :title, :body , :message => "Pleas Fill the Required Information"






end
