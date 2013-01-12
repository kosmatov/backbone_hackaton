require 'test_helper'

class Web::PollsControllerTest < ActionController::TestCase
   test "show should be success" do
     poll = create :poll
     get :show, id: poll.id
     assert_response :success
   end
end
