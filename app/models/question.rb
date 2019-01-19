class Question < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: 'User', optional: true

  has_and_belongs_to_many :hashtags

  validates :text, :user, presence: true
  validates :text, length: { maximum: 255 }

  before_save :set_hashtags

  private

  def set_hashtags
    self.hashtags.clear

    [text, answer].each do |item|
      item.to_s.scan(Hashtag::HASHTAG_REGEXP) do |tag|
        hashtag = Hashtag.where(name: tag[1..-1]).first_or_create!
        self.hashtags << hashtag
      end
    end
  end
end
