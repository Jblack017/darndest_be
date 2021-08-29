class Kid < ApplicationRecord
  has_many :comments, dependent: :destroy


  def age
    (Date.current() - birthday).to_i / 365
  end

end
