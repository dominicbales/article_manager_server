# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    link {'dev.to.test'}
    title {'title test'}
    avatar {'none'}
    time {'3 min'}

    # t.bigint "user_id", null: false
    # t.bigint "account_id", null: false
  end
end