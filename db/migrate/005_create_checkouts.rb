class CreateCheckouts < ActiveRecord::Migration[5.2]
    def change
        create_table :checkouts do |t|
            t.integer :user_id
            t.integer :book_id
            t.string :due_date
            t.boolean :returned
        end
    end
end
            