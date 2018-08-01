require 'rails_helper'
require 'spec_helper'

RSpec.feature 'User checks student details', type: :feature do

  let!(:student) {create :student, first_name: 'Jan', last_name: 'Nowak'}

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit students_path
    find(:xpath, "//a[@title='show']").click
  end

  scenario do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Students » Jan Nowak'
    end
  end



end
