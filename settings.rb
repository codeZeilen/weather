#Settings
#set :server, %w{mongrel webrick}
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'db/test.sqlite3.db',
  :encoding => 'UTF-8'
)
