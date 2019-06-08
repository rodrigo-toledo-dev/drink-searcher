require 'rails_helper'

describe "Filter drinks actions" do
  before do
    visit root_path
  end

  scenario 'Visitor dont see advanced form' do
    expect(page).to have_selector('.advanced-form', visible: false)
    expect(page).to have_selector('.simple-form', visible: true)
  end

  context 'Visitor filter by advanced form' do
    before do
      FactoryBot.create_list(:drink, 10)
      FactoryBot.create(:caipirinha)
      FactoryBot.create(:caldo_cana)
    end

    context 'Fill the form and find just the expected results' do
      before do
        visit root_path
      end

      scenario 'Visitor see drinks without filter' do
        page.has_selector?('.drinks-list .drink-card', count: 12)
      end

      scenario 'Visitor click to see advanced form' do
        find('.advanced-form').click
        expect(page).to have_selector('.advanced-form', visible: true)
        expect(page).to have_selector('.simple-form', visible: false)
      end

      scenario 'Visitor filter and find just one result' do
        page.has_selector?('.drinks-list .drink-card', count: 12)
        expect(page).to have_selector('.advanced-form', visible: true)
        fill_in 'filter_base_ingredient',	with: 'Caipirinha'
        click_button 'btn_advanced_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 1)
      end

      scenario 'Visitor filter and get two results by basic filter' do
        page.has_selector?('.drinks-list .drink-card', count: 13)
        expect(page).to have_selector('.advanced-form', visible: true)
        fill_in 'filter_base_ingredient',	with: 'Caipirinha'
        fill_in 'filter_alcohol_level',	with: 30
        click_button 'btn_advanced_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 2)
        page.has_selector?('h3', text: 'Caipirinha', count: 1)
        page.has_selector?('h3', text: 'Caldo de Cana', count: 1)
      end

      scenario 'Visitor filter and just one result using filter' do
        drink_expected = create(:moscow_mule)
        page.has_selector?('.drinks-list .drink-card', count: 13)
        fill_in 'filter_base_ingredient',	with: drink_expected.name
        fill_in 'filter_drinkware',	with: drink_expected.drinkware
        fill_in 'filter_alcohol_level',	with: drink_expected.alcohol_level
        fill_in 'filter_temperature',	with: drink_expected.temperature
        fill_in 'filter_ibu',	with: drink_expected.ibu
        click_button 'btn_advanced_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 1)
        page.has_selector?('h3', text: drink_expected.name, count: 1)
      end

      scenario 'Visitor filter and find nothing because one argument' do
        drink_expected = create(:moscow_mule)
        page.has_selector?('.drinks-list .drink-card', count: 13)
        fill_in 'filter_base_ingredient',	with: '-------------- there is nothing'
        fill_in 'filter_drinkware',	with: drink_expected.drinkware
        fill_in 'filter_alcohol_level',	with: drink_expected.alcohol_level
        fill_in 'filter_temperature',	with: drink_expected.temperature
        fill_in 'filter_ibu',	with: drink_expected.ibu
        click_button 'btn_advanced_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 0)
        page.has_selector?('h3', text: drink_expected.name, count: 0)
      end
    end
  end
end
