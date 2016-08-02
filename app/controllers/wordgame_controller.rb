require 'longest_word'

class WordgameController < ApplicationController
  def game
    @grid = generate_grid(9).join(" ")
    @start_time = Time.now
  end

  def score
    @attempt = params[:attempt]
    @end_time = Time.now
    @results = run_game(@attempt, params[:grid_variable].split(""), params[:start_time].to_datetime, @end_time)
  end
end

