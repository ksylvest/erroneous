require 'test_helper'

class ErroneousTest < ActiveSupport::TestCase
  test "erroneous is a module" do
    assert_kind_of Module, Erroneous
  end
end
