class Kid < ApplicationRecord
  has_many :comments, dependent: :destroy


  def age
    Date.current() > birthday ? (Date.current() - birthday).to_i / 365 : ((birthday - Date.current()).to_i / 365) * -1
  end

end
