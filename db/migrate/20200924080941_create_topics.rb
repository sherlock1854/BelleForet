class CreateTopics < ActiveRecord::Migration[5.2]
    def change
        create_table :topics do |t|

            t.references :admin
            t.string :title
            t.text :body
            t.string :image_id
            t.timestamps

        end
    end
end
