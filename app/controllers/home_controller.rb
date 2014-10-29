class HomeController < ApplicationController


  def home
      @micrositios = Micrositio.all
      @eventos = Evento.all
      @actividades = Actividad.all
      @users = User.all
      @user = User.new
  end



  def instrucciones
    @actividades = Actividad.all
  end








end