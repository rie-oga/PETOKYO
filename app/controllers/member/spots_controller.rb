class Member::SpotsController < ApplicationController
  before_action :ensure_spot, only: [:show, :edit, :update, :destroy]

  def top
    @genres = Genre.all
    @spots = Spot.all
  end

  def about
  end

  def index
     #spot_ids= Hash[Comment.group(:spot_id).average(:rate).sort.reverse].keys
     #@spots = Spot.where(id: spot_ids).order_as_specified(id: spot_ids)
     @spots = Spot.joins(:comments).merge(Comment.order(rate: :desc))#rate順に表示
    if params[:genre_id]
       @genre = Genre.find(params[:genre_id])
       @spots = @spots.where(genre_id: params[:genre_id])
       #@spot = Spot.where(genre_id:@genre)
       #@spots = @genre.spots.find(Comment.group(:spot_id).order('count(spot_id) desc').pluck(:spot_id))
        #ランキング機能
        #comment.group(:spot_id) まず(spot_id)が同じものにグループを分ける
        #order('count(spot_id) desc') それを、番号の多い順に並び替える
        #pluck(:spot_id) 最後に:spot_idカラムのみを数字で取り出すように指定
        #Spot.find() 最終的に、pluckで取り出される数字をスポットのIDとすることでrake順にspotを取得する事ができる
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
