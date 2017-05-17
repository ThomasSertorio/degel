class PushesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :push ]

  def push
    unless params.blank?
      Push.create(data: params.except(:controller, :action))
    end
    render :head => true
  end
end
