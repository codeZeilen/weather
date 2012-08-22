require './model/post'
require './model/sympathy'

require 'active_record'
require 'rubygems'

load './settings.rb'

p = Post.new
p.name = "It's me"
p.content = "This is a funny thing as it works"
p.good = true
p.save

s = p.sympathies.create
s.name = "Myself"
s.save

s = p.sympathies.create
s.name = "You"
s.save

#
# Second Post
#
p = Post.new
p.name = "Another awsome post"
p.content = "This is a funny thing as it works"
p.good = true
p.save

#
# Third Post
#
p = Post.new
p.name = "Another awsome post"
p.content = "This is a funny thing as it works"
p.good = false
p.save
