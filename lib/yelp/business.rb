class Yelp::Business
  attr_reader :id, :name, :image_url, :is_closed
  def initialize(json)
    @id = json['id']
    @name = json['name']
    @image_url = json['image_url']
    @is_closed = json['is_closed']
  end
  def open?
    !is_closed
  end

  def to_json
    {
      'id' => self.id,
      'winery_name' => self.name,
      'img_url' => self.image_url
    }
  end
end
