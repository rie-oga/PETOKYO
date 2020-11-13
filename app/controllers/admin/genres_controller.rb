class Admin::GenresController < ApplicationController
  before_action :ensure_genre, only: [:edit, :update, :destroy]

  def index
    @genres = Genre.all
    @genre = Genre.new
    respond_to do |format| # respond_toメソッドを使って結果をどのフォーマットで返すかを指定
      format.html
      format.js # ajaxで実行すると、このformat.jsに該当するindex.js.erbを返す
    end
  end

  def create
    @genre = Genre.new(genre_params)
    respond_to do |format|
      if @genre.save
        @genres = Genre.all
        format.js # ajax使用箇所でsaveに成功すればformat.jsに該当するcreate.js.erbが実行される
      else
        format.js { render :index }
      end
    end
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    redirect_to admin_genres_path
  end

  def destroy
    @genre.destroy
    redirect_to admin_genres_path
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end

  def ensure_genre
    @genre = Genre.find(params[:id])
    unless current_admin
      redirect_to member_spots_path
    end
  end
end
