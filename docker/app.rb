#!/usr/bin/env ruby

require 'bundler/setup'
require 'sinatra/base'

set :bind, '0.0.0.0'

class HelloWorldApp < Sinatra::Base
  set :bind, "0.0.0.0"

  get '/' do
    "<h1>Hello, World! from docker</h1>"
  end
end


