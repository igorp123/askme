class UsersController < ApplicationController
  def index
    @users = [
      User.new(
        id: 1,
        name: 'Igor',
        username: 'igor',
        avatar_url: 'https://pp.userapi.com/c844418/v844418450/92b72/2_U9SbJGuxM.jpg?ava=1'
        ),
      User.new(
        id: 2,
        name: 'Misha',
        username: 'mish'
      )
    ]
  end

  def new
  end

  def edit
  end

  def show
    @user = User.new(
      name: 'Игорь',
      avatar_url: 'https://pp.userapi.com/c844418/v844418450/92b72/2_U9SbJGuxM.jpg?ava=1',
      username: 'igor'
    )

    @questions = [
      Question.new(text: 'Как дела?', created_at: Date.parse('28.11.2018')),
      Question.new(text: 'Как жизнь?', created_at: Date.parse('28.11.2018')),
    ]

    @new_question = Question.new()
  end
end
