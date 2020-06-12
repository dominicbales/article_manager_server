# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    url {'test.dev.to'}
    user_id {1}

    # t.bigint "user_id", null: false
    # t.bigint "account_id", null: false
  end
end