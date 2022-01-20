FactoryBot.define do
  factory :user do
    email { 'test@example' }
    password { 'test1234' }
    password_confirmation { password }
    nickname { 'test' }
    last_name { 'テスト' }
    first_name { 'テスト' }
    last_name_kana { 'テスト' }
    first_name_kana { 'テスト' }
    birth_date { '2000-01-01' }
  end
end
