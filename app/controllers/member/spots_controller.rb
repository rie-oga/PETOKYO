class Member::SpotsController < ApplicationController
  before_action :ensure_spot, only: [:edit, :update, :destroy]

  def top
  end

  def about
  end

  def index
    @spots = Spot.order(ave_rate:"DESC")#spotコントローラにave_rageカラムあり。コメント保存の時点でaverageを出している←commentコントローラに記述
    if params[:genre_id]
       @genre = Genre.find(params[:genre_id])
       @spots = @spots.where(genre_id: params[:genre_id])
    end
    if params[:spot_id]
      @spot = Spot.find(params[:spot_id])
    end
    respond_to do |format|#respond_toメソッドを使って結果をどのフォーマットで返すかを指定
      format.html
      format.js#ajaxで実行すると、このformat.jsに該当するindex.js.erbを返す
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @spots = Spot.order(ave_rate:"DESC")#降順
    @spot_images = @spot.spot_images.page(params[:page]).per(15)
    if params[:genre_id]
       @genre = Genre.find(params[:genre_id])
       @spots = @spots.where(genre_id: params[:genre_id])
    end
  	@comment = Comment.new
    @comments = @spot.comments.order(id:"DESC")#降順
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
    unless comment.member == current_member || current_admin
           redirect_to member_spots_path
    end
  end
end
