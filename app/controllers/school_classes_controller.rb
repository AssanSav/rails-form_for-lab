class SchoolClassesController < ApplicationController 
    before_action :find_school_class, only: [:show, :edit, :update]
    def new 
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.new(school_class_params)
        if @school_class.save 
            redirect_to school_class_path(@school_class)
        end
    end 

    def show 
    end

    def edit 
    end 

    def update 
        if @school_class.update(school_class_params)
            redirect_to school_class_path(@school_class)
        end
    end

    private 

    def find_school_class 
        @school_class = SchoolClass.find(params[:id])
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end