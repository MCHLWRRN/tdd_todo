require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "the new page" do
     get :new
     assert_response :success
  end

  test "the create page" do
  	post :create, :task => {:name => 'tie my shoes', :assignedto => 'Ken'}
  	t = Task.last
  	assert_equal "tie my shoes", t.name
  	assert_redirected_to task_path(t)
  end

  test "the show page" do
  	# t = Task.create(:assignedto => 'Ken', :name => 'tie my shoes')
  	t = FactoryGirl.create(:task, :assignedto => 'Mike')
  	get :show, :id => t.id
  	assert_response :success
  end

end
