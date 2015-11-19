require 'rails_helper'

RSpec.feature "A user views their profiles", type: :feature do
  let!(:code_school) do
    CodeSchool.create(name: "Wyncode")
  end

  let!(:user) do #the "!" will create :user on the spot
    User.create(name: "Diego Lugo", email: "diego@example.com", code_school: code_school)
  end

  before do
    visit user_path(user)
  end

  it "displays their name" do
    expect(page).to have_content user.name
  end

  it "displays their email" do
    expect(page).to have_content user.email
  end

  it "dislays their code school" do
    save_and_open_page
    expect(page).to have_content user.code_school.name
  end
end
