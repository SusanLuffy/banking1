class Banking < ActiveRecord::Base
    validates :Title, :Amount, presence: true
end
