module UsersHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def declension(number, vopros, voprosa, voprosov)
    number = number % 100

    if number.between?(11, 19)
      voprosov
    else
      remainder = number % 10

      case remainder
      when 1
        vopros
      when 2..4
        voprosa
      else
        voprosov
      end
    end
  end
end
