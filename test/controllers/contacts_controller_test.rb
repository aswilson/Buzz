require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { available: @contact.available, first_name: @contact.first_name, id: @contact.id, image: @contact.image, last_name: @contact.last_name, latitude: @contact.latitude, location: @contact.location, longitude: @contact.longitude, status: @contact.status, time_zone: @contact.time_zone }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { available: @contact.available, first_name: @contact.first_name, id: @contact.id, image: @contact.image, last_name: @contact.last_name, latitude: @contact.latitude, location: @contact.location, longitude: @contact.longitude, status: @contact.status, time_zone: @contact.time_zone }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
