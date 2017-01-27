gem 'activerecord', '= 4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'films.sqlite3')

class Film < ActiveRecord::Base
  # attr_accessor :id, :title, :country, :genre, :rating, :description
  field :title, as: :string
  field :country, as: :string
  field :genre, as: :string
  field :rating, as: :integer
  field :description, as: :text
end
Film.auto_upgrade! #if we add a field into our list of fields, it will be automatically reflected in DB
