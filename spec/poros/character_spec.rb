require 'rails_helper'

RSpec.describe Character do
  it 'populates Character fields from JSON response' do
    data = {
      name: "Pabu",
      allies: '["Avatar Aang"]',
      enemies: '["No one"]',
      affiliation: "Air Nomad",
    }

    character = Character.new(data)

    expect(character).to be_a Character

    expect(character.name).to eq(data[:name])
    expect(character.allies).to eq(data[:allies])
    expect(character.enemies).to eq(data[:enemies])
    expect(character.affiliation).to eq(data[:affiliation])
  end
end
