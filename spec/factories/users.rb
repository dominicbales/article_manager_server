# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id {1}
    username {'test_name'}
    email {'test_rspec@test.com'}
    password {'123456'}
    password_confirmation {'123456'}

    # t.bigint "user_id", null: false
    # t.bigint "account_id", null: false
  end
end