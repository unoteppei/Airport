require 'rails_helper'
RSpec.describe "Users" do
  it "ログインしてる時、プロフィールページにアクセスできる" do
    user = create(:user)  
    sign_in user
    get character_path
    expect(response).to have_http_status(200)
  end
end
