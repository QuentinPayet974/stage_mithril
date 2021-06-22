def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to root_sign_in_path, notice: "User deleted."
    end
  end