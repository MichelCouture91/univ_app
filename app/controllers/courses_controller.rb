class CoursesController < ApplicationController

    before_action :set_course, only: [:show]

    def show
       
    end

    def index
        @courses = Courses.all
    end



    private
    def course_params
        params.require(:courses).permit(:code, :name, :description)
    end

    def set_course
        @course = Courses.find(params[:id])
    end

end
