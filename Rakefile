# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
require 'csv'

desc "Import data from csv file"
task :import => [:environment] do

  file = "data/customers.csv"

  CSV.foreach(file, :headers => true) do |row|
    puts "hi"
  end

end

Rails.application.load_tasks
