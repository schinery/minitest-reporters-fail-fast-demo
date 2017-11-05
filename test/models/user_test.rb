require "test_helper"

class UserTest < ActiveSupport::TestCase

  describe User do
    describe "columns" do
      it "should have the following columns" do
        assert User.column_names.include?("current_sign_in_at")
        assert User.column_names.include?("current_sign_in_ip")
        assert User.column_names.include?("email")
        assert User.column_names.include?("encrypted_password")
        assert User.column_names.include?("last_sign_in_at")
        assert User.column_names.include?("last_sign_in_ip")
        assert User.column_names.include?("name")
        assert User.column_names.include?("remember_created_at")
        assert User.column_names.include?("reset_password_sent_at")
        assert User.column_names.include?("reset_password_token")
        assert User.column_names.include?("sign_in_count")
      end
    end
  end
end
