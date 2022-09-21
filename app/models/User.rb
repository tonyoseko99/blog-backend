class User < ActiveRecord::Base
    has_many :testimonials
    has_many :testimonials_through_articles
end