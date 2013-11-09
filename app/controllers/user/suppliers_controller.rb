class User::SuppliersController < ApplicationController
  def new
    @supplier = Supplier.new
  end

  def create
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        auto_login @supplier
        format.html { redirect_to root_path, notice: 'Welcome!' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def learn_more

  end

  private
  def supplier_params
    params.require(:supplier).permit(:username, :email, :password, :password_confirmation)
  end

end
