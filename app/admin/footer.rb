class Footer < ActiveAdmin::Component

    def build
        super :id => "footer"
        super :style => "font-size: 100%"

        div do
            "#{Date.today.year} © | Software Development Committee"
        end
    end

end