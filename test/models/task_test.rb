require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "is assigned to Mike" do
  	t1 = FactoryGirl.create(:task, :assignedto => 'Mike')
  	t2 = FactoryGirl.create(:task, :assignedto => 'Ken')
    assert t1.is_assigned_to_mike?
    assert !t2.is_assigned_to_mike?
  end
end
