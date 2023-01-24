class UserController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        render json:{message: "User is added"}, status: :created
      else
        render json:{message: "error"}, status: :unprocessable_entity
    end
end


    private
        def user_params
            params.permit(:name,:email,:password)
        end
    
end
