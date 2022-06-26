require 'minitest/autorun'
require 'minitest/pride'
require '../lib/joke'
require '../lib/user'

class UserTest < Minitest::Test

  def test_if_it_exists
    sal = User.new("Sal")

    assert_instance_of User, sal
  end

  def test_it_has_a_name
    sal = User.new("Sal")

    assert_equal "Sal", sal.name
  end

  def test_it_has_another_name
    nikhil = User.new("Nikhil")

    assert_equal "Nikhil", nikhil.name
  end

  def test_it_has_empty_array
    sal = User.new("Sal")

    assert_equal [], sal.jokes
  end 


end
