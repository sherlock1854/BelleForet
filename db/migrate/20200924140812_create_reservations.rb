class CreateReservations < ActiveRecord::Migration[5.2]
    def change
        create_table :reservations do |t|

            t.references :customer
            t.string :first_name
            t.string :last_name
            t.string :first_name_kana
            t.string :last_name_kana
            t.string :tel
            t.string :email
            t.string :people
            t.text :body
            t.boolean :reservation_status
            t.timestamps

        end
    end
end
