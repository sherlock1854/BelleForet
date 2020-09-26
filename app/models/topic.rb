class Topic < ApplicationRecord

    belongs_to :admin


    has_many :favorites, dependent: :destroy
    has_many :comments, dependent: :destroy


    attachment :image, destroy: false


    validates :title, presence: true, length: {maximum: 30, minimum: 2}
    validates :body, presence: true
    validates :image, presence: true

end