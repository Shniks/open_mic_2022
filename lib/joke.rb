class Joke

  attr_reader  :id,
               :setup,
               :punchline

  def initialize(data)
    @id = data[:id]
    @setup = data[:setup]
    @punchline = data[:punchline]
  end

end
