class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    data = "Home page"
    render json: { status: "SUCCESS", message: "reached home", body: data }
  end

  def random_joke
    joke = "Random joke"
    render json: { status: "SUCCESS", message: "a random joke", body: joke }
  end
end
