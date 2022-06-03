# frozen_string_literal: true

require 'rails_helper'

describe'コンタクトモデルのテスト' do
  it'有効なお問合せは保存されるか' do
   expect(FactoryBot.build(:contact)).to be_valid
  end
end