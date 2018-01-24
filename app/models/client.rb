class Client < ActiveRecord::Base
  validates_presence_of :name, uniq: true
  default_scope { order(name: :asc) }
end
