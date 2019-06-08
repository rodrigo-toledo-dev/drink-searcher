# encoding: utf-8

require 'faker'

FactoryBot.define do
  factory :drink do
    name { Faker::Name.name }
    image_url { 'https://example.com/image.jpg' }
    description { Faker::Lorem.paragraph }
    rating_avg { Faker::Number.between(0, 5) }
    alcohol_level { Faker::Number.between(0, 100) }
    ibu { Faker::Number.between(0, 10) }
    temperature { :hot }

    factory :caipirinha do
      name { 'Caipirinha' }
      description { 'Bebida brasileira, toda festa exige!' }
      alcohol_level { 50 }
      ibu { 4 }
      temperature { :cold }
    end

    factory :caldo_cana do
      name { 'Caldo de Cana' }
      description { 'Também conhecido como garapa, o caldo extraído da moagem da cana é consumido in natura e é pura energia.  Somado a um bom pastel de feira, é a ‘cara’ de São Paulo. Há também versões com hortelã e abacaxi, ou de abacaxi com hortelã.' }
      alcohol_level { 30 }
      ibu { 2 }
      temperature { :cold }
    end
  end
end
