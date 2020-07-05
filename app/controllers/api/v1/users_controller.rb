module Api
	module V1

		class UsersController < ApplicationController

			def index

				primary_user = User.find_by(name: params[:name])

				other_users = User.where.not(id: primary_user[:id])

				obj = {id: primary_user[:id],other_users: other_users}

				render json: {status: "success", data: obj}, status: :ok

			end


			# def show

			# 	message = Message.find(params[:id])
			# 	render json: {status: "success", data: message}, status: :ok

			# end


			# def create

			# 	message = Message.new({body: params[:body]})

			# 	if message.save

			# 		render json: {status: "success"}, status: :ok

			# 	else

			# 		render json: {status: "error"}, status: :ok

			# 	end
			# end


			# private

			# def message_params

			# end
		end
	end
end