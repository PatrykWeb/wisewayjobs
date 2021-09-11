class JobOffersController < ApplicationController

    def index 
        @job_offer = JobOffer.find_by(category_job_id: params[:id])
    end

    def new
        
    end

    def create

    end

    def _search 

    end

    def job_offers_params

    end
end
