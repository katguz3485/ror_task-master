require 'spec_helper'
require 'rails_helper'

feature 'User visits teachers page', type: :feature do
  let!(:teacher_1) { create :teacher, first_name: 'Pies', last_name: 'Pluto', academic_title: 'Dr.' }
  let!(:teacher_2) { create :teacher, first_name: 'Donald', last_name: 'Kaczor', academic_title: 'Prof.' }


  before(:each) do
    sign_in
    expect(page).to have_content 'Logout'
    visit teachers_path
  end

  scenario 'should see teachers list' do
    within('.breadcrumbs') do
      expect(page).to have_content 'RoR Workshops » Teachers'
    end

    expect(page).to have_content 'Pies'
    expect(page).to have_content 'Donald'

  end


end
