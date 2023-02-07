class CampFacility < ApplicationRecord
  has_one_attached :image
  belongs_to :genre

  def get_image
    (image.attached?) ? image : 'default-image.jpg'
  end

end