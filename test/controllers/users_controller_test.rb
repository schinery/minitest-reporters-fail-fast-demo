require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  describe UsersController do
    let(:user_params) do
      {
        user: {
          email: "test@example.com",
          name: "Test User",
          password: "Password123",
          password_confirmation: "Password123"
        }
      }
    end

    before do
      @user = create(:user)
      sign_in @user
    end

    describe "GET index" do
      it "should get the list users page" do
        get users_url
        assert_response :success
      end
    end

    describe "GET new" do
      it "should get new user page" do
        get new_user_url
        assert_response :success
      end
    end

    describe "POST create" do
      describe "with a successful request" do
        before do
          assert_difference("User.count") do
            post users_url, params: user_params
          end
        end

        it "should redirect" do
          assert_redirected_to user_url(User.find_by(email: "test@example.com"))
        end
      end

      describe "with a unsuccessful request" do
        before do
          user_params[:user].delete(:email)

          assert_no_difference("User.count") do
            post users_url, params: user_params
          end
        end

        it "should render" do
          assert_response :success
        end
      end
    end

    describe "GET show" do
      it "should get the show user page" do
        get user_url(@user)
        assert_response :success
      end
    end

    describe "GET edit" do
      it "should get the edit page" do
        get edit_user_url(@user)
        assert_response :success
      end
    end

    describe "POST update" do
      describe "with a successful request" do
        before do
          patch user_url(@user), params: { user: { email: "foo@bar.com" } }
        end

        it "should redirect" do
          assert_redirected_to user_url(@user)
        end
      end

      describe "with a unsuccessful request" do
        before do
          User.any_instance.expects(:update).with({ "name" => "foo" }).returns(false)
          patch user_url(@user), params: { user: { name: "foo" } }
        end

        it "should render" do
          assert_response :success
        end
      end
    end

    describe "DELETE destroy" do
      it "should destroy a user" do
        @another_user = create(:user)

        assert_difference("User.count", -1) do
          delete user_url(@another_user)
        end

        assert_redirected_to users_url
      end

      it "users cannot delete themselves" do
        assert_no_difference("User.count") do
          delete user_url(@user)
        end

        assert_redirected_to users_url
      end
    end
  end
end
