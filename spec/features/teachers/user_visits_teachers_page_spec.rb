# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

feature 'User visits teachers page' do
  let!(:teacher_1) { create :teacher, first_name: 'Pies', last_name: 'Pluto', academic_title: 'Dr.' }
  let!(:teacher_2) { create :teacher, first_name: 'Donald', last_name: 'Kaczor', academic_title: 'Prof.' }
  let!(:teacher_3) { create :teacher, first_name: 'Tad', last_name: 'Holak', academic_title: 'Prof.' }

  background do
    sign_in
    expect(page).to have_content 'Logout'
    visit teachers_path
  end

  scenario 'should see teachers list' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workhops » Teachers'
    end

    expect(page).to have_content 'Pies'
    expect(page).to have_content 'Donald'
    expect(page).to have_content 'Holak'
  end

  scenario 'only when sign in' do
    logout
    visit teachers_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
