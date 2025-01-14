class MyExamplesController < ApplicationController
  def your_fortune
    fortunes = [
      "Tomorrow you're getting rich",
      "Remember!! All to the red",
      "You will overcome obstacles"
    ]
    render json: { message: fortunes.sample }
  end

  def lucky_numbers
    winning_numbers = []
    10.times do
      winning_numbers << rand(1...60)
    end
    render json: { message: winning_numbers }
  end
end
