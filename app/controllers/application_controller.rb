class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  def index
    data = "Home page"
    render json: { status: "SUCCESS", message: "reached home", body: data }
  end
end
