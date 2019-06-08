require 'rails_helper'

describe "Simple Filter drinks actions" do
  context 'Visitor filter by advanced form' do
    before do
      FactoryBot.create_list(:drink, 20)
      FactoryBot.create(:caipirinha)
      FactoryBot.create(:caldo_cana)
    end

    context 'Fill the form and find the expected results' do
      before do
        visit root_path
      end

      scenario 'Visitor filter and find just one result' do
        fill_in 'filter_search',	with: 'Caipirinha'
        click_button 'btn_simple_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 1)
      end

      scenario 'Visitor filter and get two results by basic filter' do
        fill_in 'filter_search',	with: 'brasileira'
        click_button 'btn_simple_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 2)
        page.has_selector?('h3', text: 'Caipirinha', count: 1)
        page.has_selector?('h3', text: 'Caldo de Cana', count: 1)
      end

      scenario 'Visitor filter and just one result using filter' do
        drink_expected = create(:moscow_mule)
        fill_in 'filter_search',	with: drink_expected.origin
        click_button 'btn_simple_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 1)
        page.has_selector?('h3', text: drink_expected.name, count: 1)
      end

      scenario 'Visitor filter and find nothing because one argument' do
        drink_expected = create(:moscow_mule)
        fill_in 'filter_search',	with: '-------------- there is nothing'
        click_button 'btn_simple_filter'
        expect(page).to have_http_status(:success)
        page.has_selector?('.drinks-list .drink-card', count: 0)
        page.has_selector?('h3', text: drink_expected.name, count: 0)
      end
    end
  end
end
