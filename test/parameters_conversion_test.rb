require 'test_helper'
require 'action_controller/parameters'

class ParametersConversionTest < ActiveSupport::TestCase

  test "nested ActiveSupport::HashWithIndifferentAccess are converted to ActionController::Parameters" do
    parameters  = ActionController::Parameters.new({:people => [{:a => 'b'}]}.with_indifferent_access)
    assert_instance_of( ActionController::Parameters,
                        parameters[:people].first)
  end

end
