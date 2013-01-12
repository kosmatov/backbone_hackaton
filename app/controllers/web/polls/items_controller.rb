class Web::Polls::ItemsController < ApplicationController
  def vote
    @poll = Poll.find(params[:poll_id])
    @item = @poll.items.find(params[:id])
    @item.vote!

    redirect_to poll_path @poll
  end
end
