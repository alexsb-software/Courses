class CreateInstructors < ActiveRecord::Migration[5.0]
    def change
        create_table :instructors do |t|
            t.string :name
            t.string :email
            t.string :linkedin
            t.string :image_url
            t.text :bio

            t.timestamps
        end

        add_index :instructors, :name, unique: true
    end
end
