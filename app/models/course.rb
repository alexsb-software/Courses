class Course < ApplicationRecord
    belongs_to :category
    counter_culture :category

    belongs_to :instructor

    validates_presence_of :name, :category, :instructor

    def self.search(params)
        where("name LIKE ?", "%#{params}%")
    end

    def self.search_by_category(category_id)
        where(:category => category_id)
    end

    scope :confirmed, -> { where(:confirmed => 1) }
    scope :unconfirmed, -> { where(:confirmed => 0) }

    default_scope -> { order(:id => :desc) }
end
