class Member::SpotsController < ApplicationController
  def top
  end

  def about
  end

  def index
  	@spots = Spot.all
  end

  def show
  	@spot = Spot.find(params[:id])
  	@comment = Comment.new
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
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update params.require(:spot).permit(:content)
    if image = params[:spot][:image]
       @spot.images.attach(image)
    end
    redirect_to @spot
  end

  def destroy

  end

  private
  def spot_params
    params.require(:spot).permit(:name, :address, :genre_id, :introduction, spot_images_images: [])
  end
end
