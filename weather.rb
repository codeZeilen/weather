require 'rubygems'
require 'sinatra/base'
require 'active_record'
require 'rabl'
require 'active_support/core_ext'
require 'active_support/inflector'
require 'builder'

Dir.glob("./" + File.dirname(__FILE__) + '/model/*.rb') { |file| require file }
Dir.glob("./" + File.dirname(__FILE__) + '/lib/**.rb') { |file| require file }
Dir.glob("./" + File.dirname(__FILE__) + '/lib/sinatra/*.rb') { |file| require file }

load "./" + File.dirname(__FILE__) + '/settings.rb'

class Weather < Sinatra::Base
  Rabl.register!

  helpers Sinatra::StandardAPI

  set :public_folder, 'static'

  get '/' do
      erb :index
  end

  get '/posts' do
    @posts = Post.find(:all, :limit => 25)
    render :rabl, :posts, :format => "json"
  end

  get '/new_posts/:from_id' do
    @posts = Post.where("id > ?", params[:from_id])
    render :rabl, :posts, :format => "json"
  end

  #start the server if file is executed directly
  run! if app_file == $0
end
