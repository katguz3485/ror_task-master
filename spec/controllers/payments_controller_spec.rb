# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PaymentsController, type: :controller do
  let(:user) { create :user }

  before { sign_in user }

  describe 'GET #index' do
    subject { get :index }

    it_behaves_like 'template rendering action', :index
  end
end
