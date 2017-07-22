class Task < ApplicationRecord
  belongs_to :course
  
  validates :course_id, presence: true
  validates :title, presence: true
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/ 
end
