require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) {create(:user)}
  let(:post) { create(:post) }
  describe 'GET/posts/index' do
    it '空港投稿一覧表示に成功すること' do
      get posts_path
      expect(response).to have_http_status(302)
    end
  end
end
