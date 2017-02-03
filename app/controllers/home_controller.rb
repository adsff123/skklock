class HomeController < ApplicationController
  before_action :require_login
  def index
    @lock = ["A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"]
    
  end
  
  def register 
    lock = Lock.new
    lock.number = params[:number]
    lock.user_id = params[:user_id]
    lock.major = current_user.major    
    lock.save
    
    redirect_to "/home/index"
  end
  



  
end
