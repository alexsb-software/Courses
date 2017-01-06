ActiveAdmin.register_page "Dashboard" do

    # menu false

    menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

    content title: proc { I18n.t("active_admin.dashboard") } do
        div class: "blank_slate_container", id: "dashboard_default_message" do
            span class: "blank_slate" do
                # span I18n.t("active_admin.dashboard_welcome.welcome")
                span "Welcome to IEEE AlexSB Courses System Admin Panel"
            end
        end

        columns do
            column do
                panel "Tips" do
                    ul do
                        ul strong "Adding a new course" do
                            li "The course image will be hosted on facebook. You can get the URL by right click on the image then choosing 'copy image address'.
                                    After that you paste to the image url field."
                        end
                    end
                end
            end
        end

    end # content
end
