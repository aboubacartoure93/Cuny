require 'test_helper'

class ElectronicsComputersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electronics_computer = electronics_computers(:one)
  end

  test "should get index" do
    get electronics_computers_url
    assert_response :success
  end

  test "should get new" do
    get new_electronics_computer_url
    assert_response :success
  end

  test "should create electronics_computer" do
    assert_difference('ElectronicsComputer.count') do
      post electronics_computers_url, params: { electronics_computer: { availableNow: @electronics_computer.availableNow, condition: @electronics_computer.condition, electronicsLocation: @electronics_computer.electronicsLocation, electronicsPrice: @electronics_computer.electronicsPrice, electronicsTitle: @electronics_computer.electronicsTitle, electronisDescription: @electronics_computer.electronisDescription, student_id: @electronics_computer.student_id } }
    end

    assert_redirected_to electronics_computer_url(ElectronicsComputer.last)
  end

  test "should show electronics_computer" do
    get electronics_computer_url(@electronics_computer)
    assert_response :success
  end

  test "should get edit" do
    get edit_electronics_computer_url(@electronics_computer)
    assert_response :success
  end

  test "should update electronics_computer" do
    patch electronics_computer_url(@electronics_computer), params: { electronics_computer: { availableNow: @electronics_computer.availableNow, condition: @electronics_computer.condition, electronicsLocation: @electronics_computer.electronicsLocation, electronicsPrice: @electronics_computer.electronicsPrice, electronicsTitle: @electronics_computer.electronicsTitle, electronisDescription: @electronics_computer.electronisDescription, student_id: @electronics_computer.student_id } }
    assert_redirected_to electronics_computer_url(@electronics_computer)
  end

  test "should destroy electronics_computer" do
    assert_difference('ElectronicsComputer.count', -1) do
      delete electronics_computer_url(@electronics_computer)
    end

    assert_redirected_to electronics_computers_url
  end
end
