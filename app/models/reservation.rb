class Reservation < ApplicationRecord

    belongs_to :customer
    belongs_to :admin


    validates :first_name, presence: true
    validates :last_name,  presence: true
    validates :first_name_kana, presence: true
    validates :last_name_kana,  presence: true
    validates :tel, presence: true
    validates :email, presence: true
    validates :people, presence: true

end