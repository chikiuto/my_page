class UsersController < ApplicationController
    def login_form
    end

    def login
        @user = User.find_by(email: params[:email],
                            password: params[:password])
        if @user
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
end