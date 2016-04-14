#!/usr/bin/env ruby
class GreeterController < ApplicationController
    def hello
      random_names = ["Johnny", "Timmy", "Stewie"]
      @name = random_names.sample()
      @time = Time.now()
      @times_displayed ||= 0
      @times_displayed += 1
    end
    def goodbye
    end
end
