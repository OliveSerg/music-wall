class Track < ActiveRecord::Base

  validates :song_title, :author, presence: true
  validates :url,
    format: {with: /\A(http)\.[\w\d]+\.[a-zA-Z]{3}\z/},
    allow_blank: true

end
