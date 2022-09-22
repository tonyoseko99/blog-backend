class User < ActiveRecord::Base
    has_many :testimonials
    has_many :articles, through: :testimonials
end