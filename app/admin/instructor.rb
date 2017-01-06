ActiveAdmin.register Instructor do
    permit_params :name, :email, :linkedin, :image_url, :bio

    index do
        selectable_column
        id_column
        column :name
        column :email
        column :linkedin
        actions
    end

    sidebar :instructor_courses, :only => :show do
        ul do
            instructor.courses.collect do |course|
                li link_to(course.name, admin_course_path(course))
            end
        end
    end

    filter :name
    filter :email

end
