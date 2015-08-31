class ContentsController < ApplicationController
  def create
    content = Content.create(content_params)
    redirect_to ticket_path(content.ticket)
  end

  private

  def content_params
    params.require(:content)
      .permit(:status, :content, :suggestion, :user_id, :ticket_id)
  end
end
