class User
  attr_reader  :name,
               :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    jokes << joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def perform_routine_for(user)
    jokes.map do |joke|
      tell(user, joke)
    end
  end

  def learn_routine(filename)
    File.foreach(filename) do |line|
      @jokes << line[0..-4]
    end
    @jokes.shift
  end

end
