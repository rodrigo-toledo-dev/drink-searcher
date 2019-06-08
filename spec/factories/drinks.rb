# encoding: utf-8

require 'faker'

FactoryBot.define do
  factory :drink do
    name { Faker::Name.name }
    image_url { 'https://example.com/image.jpg' }
    description { Faker::Lorem.paragraph }
    rating_avg { Faker::Number.between(0, 5) }
    alcohol_level { Faker::Number.between(31, 100) }
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
      description { 'Bebida brasileira também conhecido como garapa, o caldo extraído da moagem da cana é consumido in natura e é pura energia. Somado a um bom pastel de feira, é a ‘cara’ de São Paulo. Há também versões com hortelã e abacaxi, ou de abacaxi com hortelã.' }
      distilled { 1 }
      base_ingredient { 'Caldo de cana, abacaxi, hortelã' }
      alcohol_level { 30 }
      origin { 'Brasil' }
      ibu { 2 }
      temperature { :cold }

      factory 'moscow_mule' do
        name { 'Moscow Mule' }
        description {"Moscow mule is a cocktail made with vodka, spicy ginger beer, and lime juice, garnished with a slice or wedge of lime. It is a type of buck and therefore sometimes known as a vodka buck. The Moscow mule is popularly served in a copper mug. Public health advisories recommend the mugs be plated with nickel or stainless steel on the inside and the lip."}
        alcohol_level {32}
        distilled { true }
        temperature {:extra_cold}
        base_ingredient {'vodka'}
        origin {'Los Angeles'}
        drinkware {'Copper Mug'}
        ibu {2}
        rating_avg {4.99}
      end
    end
  end
end
