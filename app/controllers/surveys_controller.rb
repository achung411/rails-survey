class SurveysController < ApplicationController

	def index
	end

	def result
		if (session[:counter] == nil)
			session[:counter] = 0
		else
			session[:counter] += 1
		end
	end

	def create
		@user = params[:survey]
		session[:name] = params[:survey][:name]
		session[:location] = params[:survey][:location]
		session[:language] = params[:survey][:language]
		session[:comment] = params[:survey][:comment]
		redirect_to '/surveys/result'
	end
end
