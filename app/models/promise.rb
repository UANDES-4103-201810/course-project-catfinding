class Promise < ApplicationRecord
  belongs_to :project

  has_attached_file :avatar, styles: { medium: "252x313>", thumb: "100x100>" }, default_url: "/assets/:medium/gato_promise.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :name, length: {minimum: 3}

  validates :description, length: {minimum: 20}
  validates :amount, numericality: {greater_than: 0}
end
