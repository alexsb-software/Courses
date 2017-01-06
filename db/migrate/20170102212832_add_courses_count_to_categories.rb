class AddCoursesCountToCategories < ActiveRecord::Migration[5.0]
    def self.up
        add_column :categories, :courses_count, :integer, :null => false, :default => 0
    end

    def self.down
        remove_column :categories, :courses_count
    end
end
