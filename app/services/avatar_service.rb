class AvatarService
  def self.conn
    Faraday.new("https://last-airbender-api.herokuapp.com")
  end

  def self.get_affiliated_members(nation)
    response = conn.get("/api/v1/characters?perPage=100&affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
