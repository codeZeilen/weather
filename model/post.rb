require 'active_record'

class Post < ActiveRecord::Base

    belongs_to :poster

    has_many :sympathies

    attr_accessible :id, :name, :content, :good, :poster_id, :poster

end
