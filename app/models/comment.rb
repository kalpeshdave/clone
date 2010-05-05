class Comment < ActiveRecord::Base
belongs_to :blog
 # validates_presence_of :name, :comment, :email, :url, :message => "Please Fill Required Information"
 # validates_format_of :email, :with => %r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i, :message => "Please Fill Correct Email Address."
end
