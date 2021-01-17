require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    let(:params) {{name: "yuuki"}}
   
    it "年齢1:ユーザーの名前が取得できること" do
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "yuukiちゃん"
    end  
    it "年齢15:ユーザーの名前が取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "yuuki君"
    end
    it "年齢20:ユーザーの名前が取得できること" do
       params.merge!(age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "yuukiさん"
    end
  end  
end

