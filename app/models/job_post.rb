class JobPost < ApplicationRecord
    belongs_to :candidate
    belongs_to :company
end
