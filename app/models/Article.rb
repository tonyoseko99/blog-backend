class Article < ActiveRecord::Base
    has_many :testimonials
    has_many :users, through: :testimonials
end