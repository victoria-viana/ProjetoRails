require 'test_helper'

class CoachTest < ActiveSupport::TestCase
 def setup
    @coach = Coach.new(name: "Example User", email: "user@example.com", cpf: "000.000.000-00")
  end

  test "should be valid" do
    assert @coach.valid?
  end
test "name should not be too long" do
    @coach.name = "a" * 51
    assert_not @coach.valid?
  end

  test "email should not be too long" do
    @coach.email = "a" * 244 + "@example.com"
    assert_not @coach.valid?
  end
  test "email addresses should be unique" do
    duplicate_user = @coach.dup
    @coach.save
    assert_not duplicate_coach.valid?
  end
end


