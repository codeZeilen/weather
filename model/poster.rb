require 'active_record'

class Poster < ActiveRecord::Base

    has_many :posts

end
