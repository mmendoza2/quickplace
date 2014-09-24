class RelationcategoriasController < ApplicationController
  before_filter :authenticate_user!

  def create
    @categoria = Categoria.find(params[:relationcategoria][:followed_id])
    current_user.followcategoria!(@categoria)
    respond_to do |format|
      format.html { redirect_to(:back)}
      format.js
    end

  end

  def destroy
    @categoria = Relationcategoria.find(params[:id]).followed
    current_user.unfollowcategoria!(@categoria)
    respond_to do |format|
      format.html { redirect_to(:back) }
      format.js
    end

  end

end