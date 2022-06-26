require 'minitest/autorun'
require 'minitest/pride'
require '../lib/joke'

class JokeTest < Minitest::Test

  def test_if_it_exists
    joke = Joke.new({id: 1, setup: "Why did the strawberry cross the road?", punchline: "Because his mother was in a jam."})

    assert_instance_of Joke, joke
  end

  def test_it_has_attributes
    joke = Joke.new({id: 1, setup: "Why did the strawberry cross the road?", punchline: "Because his mother was in a jam."})

    assert_equal 1, joke.id
    assert_equal "Why did the strawberry cross the road?", joke.setup
    assert_equal "Because his mother was in a jam.", joke.punchline
  end
end
