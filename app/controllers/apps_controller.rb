class AppsController < ApplicationController

  def index
    @apps = App.all
    puts "Hello"
  end

end
