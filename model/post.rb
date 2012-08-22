require 'active_record'

class Post < ActiveRecord::Base

    belongs_to :poster

    has_many :sympathies

end
