class HomeController < ApplicationController
  def index
    if current_user
      redirect_to uploads_path
    end
  end
end
