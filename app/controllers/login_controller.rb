class LoginController < ApplicationController
  def index
    # show login screen
  end

  def create
    if params[:login][:password] == Server.find(:first).password
      session["person"] = "junk_authentication"
      redirect_to :controller => "index"
    else
      redirect_to :action => "index"
    end
  end
  
  def destroy
    session["person"] = nil
  end
end
