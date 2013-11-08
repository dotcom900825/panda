class DistributorsController < ApplicationController
  def new
    @distributor = Distributor.new
  end

  def create
    @distributor = Distributor.new(distributor_params)

    respond_to do |format|
      if @distributor.save
        auto_login @distributor
        format.html { redirect_to root_path, notice: 'Welcome!' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  private
  def distributor_params
    params.require(:distributor).permit(:username, :email, :password, :password_confirmation)
  end

end


