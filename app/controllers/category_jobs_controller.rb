class CategoryJobsController < ApplicationController
    def _index 
        @category_jobs = CategoryJob.all
    end

    def new 
        @category_job = CategoryJob.new
    end

    def create
        @category_job = CategoryJob.new(category_jobs_params)
        if @category_job.save 
            flash[:notice] = "You are successful create category"
            redirect_to root_path
        end
    end

    def category_jobs_params
        params.require(:category_jobs).permit(:category_name, :category_description)
    end
end
