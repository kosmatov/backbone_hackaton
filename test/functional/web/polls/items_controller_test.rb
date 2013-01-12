require 'test_helper'

class Web::Polls::ItemsControllerTest < ActionController::TestCase
  def setup
    @poll = create :poll, items_count: 1
    @item = @poll.items.last
    @params = {poll_id: @poll.id, id: @item.id}
  end

  test "should get vote" do
    get :vote, @params
    assert_response :redirect
    @item.reload
    assert_equal @item.votes_count, 1
  end

end
