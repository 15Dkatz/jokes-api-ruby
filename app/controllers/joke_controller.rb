class JokeController < ApplicationController
  def initialize
    @jokes = read_jokes
  end

  def read_jokes
    require "json"
    json = File.read("./data/jokes.json")
    JSON.parse(json)
  end

  def random_joke
    joke = "A very random joke"
    render json: { status: "SUCCESS", message: "a random joke", body: joke }
  end

  def jokes
    render json: { status: "SUCCESS", message: "all jokes", body: @jokes }
  end
end
