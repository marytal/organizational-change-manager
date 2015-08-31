class TicketsController < ApplicationController
  before_action :check_if_registered_user_present, only: :create

  def show
    @ticket = Ticket.find(params[:id])
    comments = @ticket.contents.comments
    positive = comments.positive_comments
    negative = comments.negative_comments
    neutral = comments.neutral_comments
    @comments = [positive, neutral, negative]
    @suggestions = @ticket.contents.suggestions
  end

  def create
    ticket = Ticket.create(ticket_params.merge( { closed: false } ))
    ticket.update(registered_user_id: @registered_user.id)
    redirect_to ticket_path(ticket)
  end

  def update
  end

  private

  def check_if_registered_user_present
    redirect_to root_path unless @registered_user
  end

  def ticket_params
    params.require(:ticket).permit(:name, :description, :closed)
  end
end
