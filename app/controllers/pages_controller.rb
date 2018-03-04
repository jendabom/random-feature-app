class PagesController < ApplicationController
  def fortune
    index = 0
    fortunes = ["you will be a millionaire", "you will learn to tie your shoes", "be wary of stairs"]
    random_fortune = fortunes[rand(index .. (fortunes.length - 1))]
    render json: {fortune: random_fortune}
  end

  def lotto_prediction
    numbers = []
    6.times do
      number = rand(1 ..60)
      numbers << number
    end
    render json: {lottery_prediction: numbers}
  end

  def count_my_visits

  end

  def ninty_nine_bottles_lyrics
    basic_line = "#{@num_of_bottles} bottles of beer on the wall, #{@num_of_bottles} bottles of beer"
    second_line = "Take one down, pass it around, #{@num_of_bottles} bottles of beer on the wall."
    @lyrics = []
    num_of_bottles = 99

    98.times do
      @num_of_bottles
      @lyrics << basic_line
      @num_of_bottles -= 1
      @lyrics << second_line
    end
    render json: {lyric: @lyrics }
  end
end
