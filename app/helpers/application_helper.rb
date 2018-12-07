module ApplicationHelper
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

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
