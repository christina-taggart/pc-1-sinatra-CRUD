require 'spec_helper'

describe "Note"  do
  before :each do
    @note = Note.new({title: "Test note", body: "test note body"})
  end

  it "should have a title" do
    expect(@note.title).to exist
  end

  it "should have a body" do
    expect(@note.body).to exist
  end
end