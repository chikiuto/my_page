class UsersController < ApplicationController
    def login_form
    end

    def login
        @user = User.find_by(email: login_params[:email])
                           
        if @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            session[:admin_name] = @user.name
            flash[:notice] = "ログインしました"
            redirect_to("/comment/")
        else
            @error_message = "メールアドレスまたはパスワードが間違っています"
            render("users/login_form")
        end
    end

    def logout
        session[:user_id] = nil
        flash[:notice] = "ログアウトしました"
        redirect_to("/comment")
    end

    private

    def login_params
        params.require(:session).permit(:email, :password)
    end
end