class OpinionsController < ApplicationController
  respond_to :json

  def create
    opinion = Opinion.where(user_id: @current_user.id, content_id: opinion_params[:content_id]).first_or_create
    previous = opinion.agree.nil?
    if opinion.agree.to_s == opinion_params[:agree].to_s
      change = false
    else
      change = true
    end
    opinion.update(agree: opinion_params[:agree])
    render json: { opinion: opinion, change: change, previous: previous }
  end

  private

  def opinion_params
    params.permit(:agree, :user_id, :content_id)
  end
end
