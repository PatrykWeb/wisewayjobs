class HomeController < ApplicationController
  def index
    @category_job = CategoryJob.all
  end
end
