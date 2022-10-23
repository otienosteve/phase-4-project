class Candidate < ApplicationRecord
    has_one :resumes
    has_many :job_posts 
end
