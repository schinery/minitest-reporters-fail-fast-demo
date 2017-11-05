require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  describe HomeController do
    describe "GET index" do
      describe "when logged in" do
        before do
          sign_in create(:user)
          get root_url
        end

        it "should render" do
          # The test should be this, but set to test redirect to prove point
          # assert_response :success
          assert_redirected_to new_user_session_path
        end
      end

      describe "when not logged in" do
        before do
          get root_url
        end

        it "should redirect" do
          assert_redirected_to new_user_session_path
        end
      end
    end
  end
end
