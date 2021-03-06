require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'creation' do
    before do
      @post = Post.create(
          date: Date.today,
          rationale: 'This is your rationale'
        )
    end

    it 'can be created' do
      expect(@post).to be_valid
    end

    it 'cannot be created without date or rationale' do
      @post.date = nil
      @post.rationale = nil
      expect(@post).not_to be_valid
    end
  end
end
