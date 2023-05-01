class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    @greetings = @greetings.map do |greeting|
      greeting.greeting
    end
    @greetings = @greetings.sample
    sleep 1
    render json: {greeting: @greetings}
  end
end