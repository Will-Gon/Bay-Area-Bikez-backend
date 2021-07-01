class LikesController < ApplicationController

    def index
        likes = Like.all
        render json: likes
        #render json: LikeSerializer.new(likes)
    end

    def create
        if Place.find(params[:like][:place_id]) && User.find(params[:like][:user_id])
            new_like = Like.create(like_params)
            #render json: LikeSerializer.new(new_like)
            render json: {id: new_like.id, place: new_like.place}
        else
            render json: {error: 'Could Not find Place'}
        end
        #render json: new_like
        #render json: LikeSerializer.new(new_like)
    end

    def destroy
        like = Like.find(params[:id])
        like.destroy
        render json: like
        #render json: LikeSerializer.new(like)
    end

    private 

    def like_params
        params.require(:like).permit(:place_id, :user_id)
    end

end
