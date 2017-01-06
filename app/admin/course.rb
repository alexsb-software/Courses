ActiveAdmin.register Course do
    permit_params :name, :description, :prerequisites, :content, :duration, :place, :start,
        :time, :member_fees, :non_member_fees, :image_url, :confirmed, :category_id, :instructor_id

    index do
        selectable_column
        id_column
        column :name
        column :place
        column :start
        column :confirmed
        column :category_id
        column :instructor_id
        actions
    end

    filter :category
    filter :instructor
    filter :name
    filter :place
    filter :start
    filter :time
    filter :member_fees
    filter :non_member_fees
    filter :confirmed

end
