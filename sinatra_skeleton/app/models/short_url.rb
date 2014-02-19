class ShortUrl < ActiveRecord::Base

  before_save :generate_shortform

  def generate_shortform
    if shortform.nil?
      self.shortform = ShortUrl.all.last.id + 1
    end
  end

end
