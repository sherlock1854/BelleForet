class CreateFavorites < ActiveRecord::Migration[5.2]
    def change
        create_table :favorites do |t|

            t.references :topic
            t.references :customer
            t.timestamps

        end
    end
end
