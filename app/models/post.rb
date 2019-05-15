class Post < ActiveRecord::Base

  belongs_to :author
  validate :is_title_case
  before_validation :make_title_case
<<<<<<< HEAD
=======
  before_save :email_author_about_post
>>>>>>> c55d83debf601d0bb048e749e40de8846934f40c

  private

  def is_title_case
    if title.split.any?{|w|w[0].upcase != w[0]}
      errors.add(:title, "Title must be in title case")
    end
  end

  def make_title_case
    self.title = self.title.titlecase
  end
end
