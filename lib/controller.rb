require 'sinatra'
require 'gossip'
require 'pry'

class ApplicationController < Sinatra::Base
	get '/' do
		erb :index
 	end

 	get '/gossips/new/' do
 		erb :new_gossip
 	end

 	post '/gossips/new/' do
 		puts "ce programme ne fait rien pour me moment, on va donc afficher un message en console"
 		@babar = Gossip.new("super_auteur", "super gossip").save
 	end

end
