# config.ru
require "sinatra"
require 'rubygems'
require 'bundler'

Bundler.require

require './app'
run HelloWorldApp
