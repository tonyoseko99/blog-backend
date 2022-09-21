class Testimonial < ActiveRecord::Base
    belongs_to :User
    belongs_to :Article
end