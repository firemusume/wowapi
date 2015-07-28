
class Character < ActiveRecord::Base
  attr_accessible :name, :realm, :klass_id, :race_id, :side, :thumbnail
  belongs_to :race
  belongs_to :klass

  def self.get_character(search)
    if search
      url=("https://us.api.battle.net/wow/character/illidan/#{search}?locale=en_US&apikey=ewfqxk73fd5qsvgrz5mdhtmmxxvj3h5j")
      response=HTTParty.get(url)
      name=response['name']
      realm=response['realm']
      klass_id=response['class']
      race_id=response['race']
      side=Race.find(response['race']).side
      thumbnail=("http://us.battle.net/static-render/us/#{response['thumbnail']}")

      c=Character.where({name: search}).first

      if c 
        return c
      else
        Character.create({name: name, realm: realm, klass_id: klass_id, race_id: race_id, side: side, thumbnail: thumbnail})
        where({name: search}).first
      end

    end
  	
	end

end
	