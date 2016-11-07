require_relative '../config/application.rb'
require 'test/unit'
require 'rack/test'

class BlocBooksControllerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    BlocBooks::Application.new
  end

  def test_it_routes_http_to_controller_and_action
    get "/books/welcome"

    assert last_response.ok?
    assert_equal(200, last_response.status)
    assert(last_response.body.include?("BlocBooks!"))
  end

  def test_it_routes_create
    get "/books/create"

    assert_equal(200, last_response.status)
    assert(last_response.body.include?("Create"))
  end

  def test_it_routes_read
    get "/books/read"

    assert_equal(200, last_response.status)
    assert(last_response.body.include?("Read"))
  end

  def test_it_routes_update
    get "/books/update"

    assert_equal(200, last_response.status)
    assert(last_response.body.include?("Update"))
  end

  def test_it_routes_destroy
    get "/books/destroy"

    assert_equal(200, last_response.status)
    assert(last_response.body.include?("Destroy"))
  end

  def test_it_routes_http_to_fav_icon
    get "/favicon.ico"

    assert_equal(404, last_response.status)
  end
end
