# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

feature 'User visits students page', type: :feature do
  let!(:student_1) { create :student, first_name: 'Jan' }
  let!(:student_2) { create :student, first_name: 'Adam' }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit students_path
  end

  scenario 'should see students list' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workshops » Students'
    end
    expect(page).to have_content 'Jan'
    expect(page).to have_content 'Adam'
  end
end
