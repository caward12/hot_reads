class Link < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true

  def self.hot_links
    Link.all.order(read_count: :desc).limit(10)
  end

  def update_read_count
    update(read_count: read_count+1)
  end

end