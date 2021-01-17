# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'rendering locals in a partial', type: :view do
  let!(:user) { create(:user) }

  before :each do
    create(:cv)
    create(:resume)
    create(:experience)
    create(:experience, :etudes)
    create(:experience, :interet)
    assign(:experiences, Experience.all)
    create(:skill)
    create(:skill, :communication)
    create(:skill, :soft_skill)
    assign(:skills, Skill.all)
    assign(:message, Message.new)
    # sign_in user
  end

  it "displays the page" do
    render template: "pages/home.html.erb"

    expect(rendered).to include("George Abitbol")
  end
end
