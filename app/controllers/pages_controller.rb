class PagesController < ApplicationController

  def dashboard
    @pushes = Push.order(created_at: :desc).all
    @last_measure = @pushes.first
  end

end
