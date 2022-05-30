# frozen_string_literal: true

require 'rails_helper'

describe'ユーザーモデルのテスト' do
  it'有効なプロフ情報の時は保存されるか' do
   expect(FactoryBot.build(:user)).to be_valid
  end
end