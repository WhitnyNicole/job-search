class Interview < ApplicationRecord
    # belongs_to :user
    has_many :reviews

    def pretty_created_date
        created_at.strftime("%b %d, %Y")
    end
    
end
