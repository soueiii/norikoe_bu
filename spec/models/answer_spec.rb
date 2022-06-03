# frozen_string_literal: true

require 'rails_helper'

describe'アンサーモデルのテスト' do
  it'有効な解答は保存されるか' do
   expect(FactoryBot.build(:answer)).to be_valid
  end
end