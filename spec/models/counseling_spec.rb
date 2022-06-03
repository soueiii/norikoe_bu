# frozen_string_literal: true

require 'rails_helper'
describe'カウンセリングモデルのテスト' do
  it'有効なカウンセリングは保存されるか' do
   expect(FactoryBot.build(:counseling)).to be_valid
  end
end