require 'rails_helper'

describe "guest user" do
  it "can view links index" do
    Link.create(url: "https://www.target.com/", read_count: 2)
    Link.create(url: "http://turing.io", read_count: 1)
    Link.create(url: "https://www.google.com/", read_count: 1)
    Link.create(url: "https://www.walmart.com/", read_count: 1)
    Link.create(url: "http://www.hgtv.com/", read_count: 1)
    Link.create(url: "http://www.foodnetwork.com/", read_count: 1)
    Link.create(url: "http://www.cookingchanneltv.com/", read_count: 1)
    Link.create(url: "http://www.bonappetit.com/", read_count: 1)
    Link.create(url: "https://www.yummly.co/", read_count: 1)
    Link.create(url: "http://www.diynetwork.com/", read_count: 1)
    Link.create(url: "http://www.cnn.com/")

    visit root_path

    expect(page).to have_content("https://www.target.com/")
    expect(page).to have_content("http://turing.io")
    expect(page).to_not have_content("http://www.cnn.com/")
  end
end