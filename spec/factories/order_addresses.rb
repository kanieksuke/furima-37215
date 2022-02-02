FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567' }
    prefecture { 2 }
    city { '東京都' }
    addresses { '1-1' }
    building { '東京ハイツ' }
    phone_number { '0123456789' }
  end
end
