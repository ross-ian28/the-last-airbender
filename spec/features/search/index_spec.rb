require "rails_helper"

RSpec.describe "Search index page" do
  before :each do
    visit "/"

    select "Fire Nation", :from => :nation

    click_button "Search For Members"
  end
  it "gets to correct page and shows number of people" do
    expect(current_path).to eq("/search")
    expect(page).to have_content("97 people live in this nation")
  end

  it "checks for first and last affiliated memebers" do
    expect(page).to have_content("Chan (Fire Nation admiral)")
    expect(page).to have_content('Allies: ["Ozai"]')
    expect(page).to have_content('Enemies: ["Earth Kingdom"]')
    expect(page).to have_content("Affiliation: Fire Nation Navy")

    expect(page).to have_content("Fire Nation train conductor")
    expect(page).to have_content('Allies: ["Aang"]')
    expect(page).to have_content('Enemies: ["Combustion Man"]')
    expect(page).to have_content("Affiliation: Fire Nation Fire Nation train")
  end
end
