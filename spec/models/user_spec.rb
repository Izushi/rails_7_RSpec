require "rails_helper"

RSpec.describe User, type: :model do
  describe "名前の表示" do
    let(:params) { { name: "satoru" } }

    it "年齢1：ユーザの名前が取得できること" do
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "satoruちゃん"
    end
    it "年齢15:ユーザの名前が取得できること" do
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "satoru君"
    end
    it "年齢20:ユーザの名前が取得できること" do
      params.merge!(age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "satoruさん"
    end
  end
end
