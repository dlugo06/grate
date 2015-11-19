require 'rails_helper'

RSpec.feature "A user views their profiles", type: :feature do
  let! (:user) do #the "!" will create it on the spot
    User.create(name: "Diego Lugo", email: "diego@example.com")
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
    expect(page).to have_content user.code_school.name
  end
end
