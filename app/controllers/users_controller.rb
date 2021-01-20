class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
        #UserSerializer.new(users)
    end

    def show
        user = User.find(params[:id])
        render json: user
        #UserSerializer.new(user)
    end

    def create
        byebug
        @user = User.new(user_params)
        @club = Club.find_by(name: params[:club_name])
        @user.club_id = @club.id
        if @user.save
            payload = {user_id: @user.id}
            token = encode_token(payload)
            render json: {user: @user, token: token}
            #render json: {user: UserSerializer.new(@user), token: token}

        else
            render json: {error: @user.errors.full_messages}, status: :not_acceptable
        end
    end

    def update 
        @user = User.find_by_id(params[:id])
        @user.update(user_params)
        if @user
            payload = {user_id: @user.id}
            token = encode_token(payload)
            render json: {user: @user, token: token}
            #render json: {user: UserSerializer.new(@user), token: token}

        else
            render json: {error: @user.errors.full_messages}, status: :not_acceptable 
        end
    end

    def profile
        render json: {user: current_user}, status: :accepted
        #render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.permit(:username, :password, :id)
    end


end
