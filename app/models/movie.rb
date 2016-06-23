class Movie < ActiveRecord::Base

  validates :title, presence: true
  validates :director, presence: true
  validates :description, presence: true
  validates :release_date, presence: true
  validates :poster_image_url, presence: true

  validates :runtime_in_minutes, numericality: {only_integer: true}

  validate :release_date_is_in_past

  private

  def release_date_is_in_past
    if release_date && release_date >= Date.today
      errors.add(:release_date, 'Should be in the past')
    end
  end

end
