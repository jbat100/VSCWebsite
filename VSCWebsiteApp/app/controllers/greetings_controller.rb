class GreetingsController < ApplicationController
  def hello
    @time = Time.now
    @files = Dir.glob('*')
  end

  def goodbye
    @time = Time.now
  end
end
