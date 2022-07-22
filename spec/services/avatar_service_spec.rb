require 'rails_helper'

RSpec.describe AvatarService do
  describe 'get_affiliated_members' do
    it 'returns an array of character data' do
      characters = AvatarService.get_affiliated_members("fire+nation")

      expect(characters).to be_an(Array)
      expect(characters[0][:name]).to eq("Chan (Fire Nation admiral)")

      expect(characters[0]).to include :allies, :enemies, :name, :affiliation
    end
  end
end
