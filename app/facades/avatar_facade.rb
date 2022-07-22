class AvatarFacade
  def self.affiliated_memebers(nation)
    AvatarService.get_affiliated_members(nation).map do |data|
      Character.new(data)
    end
  end
end
