class UsersController < ApplicationController
  before_action :load_user

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url, notice: 'Пользователь зарегистрирован!'
    else
      render 'new'
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if @user.update(user_params)
      redirect_to user_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end

  def show
    @questions = @user.questions.order(created_at: :desc)

    @new_questioion = @user.questions.build
  end

  private
  def user_params
    params.require(:user).permit(:email, :password,
                                 :password_confirmation, :name,
                                 :username, :avatar_url)
  end

  def load_user
    @user ||= User.find params[:id]
  end

end
