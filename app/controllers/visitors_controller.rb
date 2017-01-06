class VisitorsController < ApplicationController
    def index
        @categories = Category.where('courses_count > ?', 0)
        @courses = Course.confirmed

        if params[:category_id]
            @courses = @courses.search_by_category(params[:category_id])
        end

        @courses = @courses.paginate(:page => params[:page], per_page: 3)
    end

    def search
        if params[:search]
            @courses = Course.confirmed.search(params[:search]).paginate(:page => params[:page], per_page: 6)
            @search_text = params[:search]
        else
            redirect_to :action => :index
        end
    end
end
