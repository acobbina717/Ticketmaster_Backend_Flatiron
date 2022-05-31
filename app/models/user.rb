class User < ActiveRecord::Base
  has_many :tickets
  has_many :events, through: :tickets
  has_many :reviews
end