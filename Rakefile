namespace :db do

  task :environment do
    require 'active_record'
    require 'logger'
    ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database =>  'db/test.sqlite3.db'
  end

  desc "Migrate the database"
  task(:migrate => :environment) do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate")
  end

end
