require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'petmatch'
}

ActiveRecord::Base.establish_connection(options)
