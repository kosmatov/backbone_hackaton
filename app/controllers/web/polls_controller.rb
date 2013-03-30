class Web::PollsController < ApplicationController
  def show
    @poll = Poll.find(params[:id])
    @sample_poll = Poll.sample.first
  end

  def index
    @polls = Poll.all
    respond_with @polls
  end
end
