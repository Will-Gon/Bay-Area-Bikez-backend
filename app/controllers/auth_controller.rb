class AuthController < ApplicationController

    #Will come back to this when I get to frontend
    def login
        @user = User.find_by(username: params[:username])
        # byebug
        if @user && @user.authenticate(params[:password])
            payload = {user_id: @user.id}
            token = encode_token(payload)
            # render json: {user: @user, token: token, success: 'Welcome back'}
            render json: {user: UserSerializer.new(@user), token: token, success: 'Welcome back'}
        else
            render json: {error: 'Incorrect username or password'}, status: :unauthorized
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
