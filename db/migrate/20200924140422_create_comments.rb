class CreateComments < ActiveRecord::Migration[5.2]
    def change
        create_table :comments do |t|

            t.references :topic
            t.references :customer
            t.text :comment
            t.timestamps

        end
    end
end
