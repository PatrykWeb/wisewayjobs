class JobOffersController < ApplicationController

    def index 
        @job_offer = JobOffer.where(category_job_id: params[:id])
    end

    def new

    end

    def create
        @job_offer = JobOffer.new(job_offers_params)
        if @job_offer.save
            flash[:notice] = "dodales poprawnie oferte pracy"
        end
    end

    def _search 

    end

    def job_offers_params
        params.require(:job_offer).permit(:name, :description, :salary, :city, :category_job_id)
    end
end
