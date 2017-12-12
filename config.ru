require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/blog_controller.rb'

run BlogController
