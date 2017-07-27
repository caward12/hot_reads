require 'rails_helper'

describe "links request" do
  it "can create link" do
    post "/api/v1/links?url=http://turing.io"

    expect(response).to be_success

    link = JSON.parse(response.body)

    expect(link["url"]).to eq("http://turing.io")
  end
end