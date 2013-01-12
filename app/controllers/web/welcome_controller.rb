class Web::WelcomeController < ApplicationController
  def index
    @polls = Poll.all
    @sample_poll = Poll.sample.first
  end
end
