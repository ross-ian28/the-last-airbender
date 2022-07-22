require 'rails_helper'

RSpec.describe AvatarFacade do
  describe 'affiliated_memebers' do
    it 'maps a response from the AvatarService' do
      characters = AvatarFacade.affiliated_memebers("fire+nation")

      expect(characters.count).to eq(97)
      expect(characters).to be_an Array
      expect(characters).to be_all Character
    end
  end
end
