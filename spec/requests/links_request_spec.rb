require 'rails_helper'

describe "links request" do
  it "can create link" do
    post "/api/v1/links?url=http://turing.io"

    expect(response).to be_success

    link = JSON.parse(response.body)

    expect(link["url"]).to eq("http://turing.io")
  end

  it "returns hot links" do
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

    get "/api/v1/links"

    expect(response).to be_success

    links = JSON.parse(response.body)

    expect(links.count).to eq(10)
    expect(links.first).to be_a(Hash)
    expect(links.first["url"]).to eq("https://www.target.com/")
    expect(links.last["url"]).to eq("http://www.diynetwork.com/")
  end
end