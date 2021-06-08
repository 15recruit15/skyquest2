require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'create post' do
    it "is valid post" do
      post = FactoryBot.build(:post)
      expect(post).to be_valid
    end
  end 

  context 'can not create post' do
    it "is invalid without title" do
      post = FactoryBot.build(:post, title: "")
      expect(post).not_to be_valid
    end

    it "is invalid without content" do
      post = FactoryBot.build(:post, content: "")
      expect(post).not_to be_valid
    end
  end 
end