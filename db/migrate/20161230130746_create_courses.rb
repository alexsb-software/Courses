class CreateCourses < ActiveRecord::Migration[5.0]
    def change
        create_table :courses do |t|
            t.string :name
            t.text :description
            t.text :prerequisites
            t.text :content
            t.string :duration
            t.string :place
            t.date :start
            t.string :time
            t.decimal :member_fees, :precision => 10, :scale => 6
            t.decimal :non_member_fees, :precision => 10, :scale => 6
            t.string :image_url
            t.boolean :confirmed
            t.references :category, foreign_key: true
            t.references :instructor, foreign_key: true

            t.timestamps
        end

        add_index :courses, :confirmed
    end
end
