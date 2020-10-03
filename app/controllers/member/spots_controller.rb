class Member::SpotsController < ApplicationController
  before_action :ensure_spot, only: [:show, :edit, :update, :destroy]

  def top
  end

  def about
  end

  def index
    @genres = Genre.all
    @spots = Spot.order(ave_rate:"DESC")#spotコントローラにave_rageカラムあり。コメント保存の時点でaverageを出している←commentコントローラに記述
    if params[:genre_id]
       @genre = Genre.find(params[:genre_id])
       @spots = @spots.where(genre_id: params[:genre_id])
    end
  end

  def show
  	@comment = Comment.new
    @comments = @spot.comments
  end

  def new
    @spot = Spot.new
    @spot.spot_images.build
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.member_id = current_member.id
    @spot.save
    redirect_to member_spots_path
  end

  def edit
  end

  def update
    if @spot.update(spot_params)
       redirect_to member_spots_path
    else
       render :edit
    end
  end

  def destroy
    @spot.destroy
    redirect_to member_spots_path
  end

  private
  def spot_params
    params.require(:spot).permit(:name, :address, :genre_id, :introduction, spot_images_images: [])
  end

  def ensure_spot
    @spot = Spot.find(params[:id])
  end
end
