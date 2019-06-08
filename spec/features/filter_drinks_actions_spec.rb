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
      end
    end
  end
end
