class ShortUrl < ActiveRecord::Base
  validates :longform, length: { minimum: 6 }
  validates :longform, format: { with: /\Ahttps?:\/\// } #Best way so far
  #validates :longform, format: { with: /\A#{URI::regexp}\z/}





  before_save :generate_shortform

  def generate_shortform
    if shortform.nil?
      random_string = (0...50).map { ('a'..'z').to_a[rand(26)] }.sample(6).join
      while ShortUrl.where(shortform: random_string).length != 0
        random_string = (0...50).map { ('a'..'z').to_a[rand(26)] }.sample(6).join
      end
      self.shortform = random_string
    end
  end

end


