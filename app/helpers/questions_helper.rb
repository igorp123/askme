module QuestionsHelper
  def add_hashtag_link(str)
    str.gsub(Hashtag::HASHTAG_REGEXP) { |hashtag| link_to hashtag, hashtag_path(hashtag[1..-1])}.html_safe
  end
end
