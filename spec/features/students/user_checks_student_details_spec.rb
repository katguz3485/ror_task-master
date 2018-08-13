# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'

feature 'User checks student details', type: :feature do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak' }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit students_path
    find(:xpath, "//a[@title='show']").click
  end

  scenario do
    Capybara::Screenshot.screenshot_and_open_image
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workshops » Students » Jan Nowak'
    end
  end
end
