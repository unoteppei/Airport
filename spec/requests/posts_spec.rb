require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) {create(:user)}
  let(:post) { create(:post) }

  describe "GET /new" do
    it "空港投稿画面に成功すること" do
      sign_in user
      get new_post_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET/posts/index' do
    it '空港投稿一覧に成功すること' do
      get posts_path
      expect(response).to have_http_status(302)
    end
  end
end
