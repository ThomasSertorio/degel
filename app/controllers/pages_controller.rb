class PagesController < ApplicationController

  def dashboard
    @pushes = Push.order(created_at: :desc).all
  end

end
