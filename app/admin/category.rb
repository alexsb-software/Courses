ActiveAdmin.register Category do
    permit_params :name

    index do
        selectable_column
        id_column
        column :name
        actions
    end

    sidebar :category_courses, :only => :show do
        ul do
            category.courses.collect do |course|
                li link_to(course.name, admin_course_path(course))
            end
        end
    end

    filter :courses
    filter :name

end
