require 'minitest/autorun'
require 'minitest/pride'
require '../lib/joke'
require '../lib/user'
require 'pry'

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

  def test_it_can_learn_a_joke
    joke = Joke.new({id: 1, setup: "Why did the strawberry cross the road?", punchline: "Because his mother was in a jam."})
    sal = User.new("Sal")
    sal.learn(joke)

    assert_equal [joke], sal.jokes
  end

  def test_it_allows_users_to_tell_jokes
    joke = Joke.new({id: 1, setup: "Why did the strawberry cross the road?", punchline: "Because his mother was in a jam."})
    sal = User.new("Sal")
    ali = User.new("Ali")
    sal.tell(ali, joke)

    assert_equal [joke], ali.jokes
    assert_equal 1, ali.jokes.count
  end


end
