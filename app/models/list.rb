class List < ApplicationRecord
  has_many :bookmarks, dependant: :destroy #Each instance of List has 0 or many instances of Bookmark and hence there are suddenly 17 methods available for maipulating data in the corresponding join models, such as:
  # List.bookmarks  
  # List.bookmarks.count
  # List.bookmarks.any?
  # List.bookmarks.create(...)
  # list.bookmarks.find(...)
  # ...more





  has_many :movies, through: :bookmarks #Each instance of List has 0 or many instances of Movie through Bookmark, hence there are suddenly 17 methods available for maipulating data in the corresponding join models, such as:
  # List.movies  
  # List.movies.count
  # List.movies.any?
  # List.movies.create(...)
  # list.movies.find(...)
  # ...more

  validates :gnere, uniqueness: {case_sensitive: false}, presence: true

end
