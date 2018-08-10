require 'rails_helper'

RSpec.describe SubjectItemsController, type: :controller do

  let(:user) { create :user }

  before { sign_in user }

  describe 'GET #show' do
    let(:subject_item) { create :subject_item }
    subject {get :show, params: { id: subject_item.id} }

    it_behaves_like 'template rendering action', :show
  end


  describe 'GET #index' do
    subject {get :index}

    it_behaves_like 'template rendering action', :index
  end

  describe 'GET #edit' do
    let(:subject_item) { create :subject_item}
    subject {get :edit, params: {id: subject_item.id}}

    it_behaves_like 'template rendering action', :edit
  end

  describe 'GET #new' do
    subject {get :new}

    it_behaves_like 'template rendering action', :new
  end

  describe 'POST #create' do
    let!(:params) {{subject_item: build(:subject_item).attributes}}
    subject {post :create, params: params}

    context 'success' do
      it {is_expected.to redirect_to subject_item_path(controller.subject_item)}

      it 'flashes info' do
        subject
        expect(flash[:notice]).to eq I18n.t('shared.created', resource: 'Subject Item')
      end

      it 'creates subject item' do
        expect {subject}.to change(SubjectItem, :count).by(1)
      end
    end

    context 'failure' do
      include_context 'record save failure'

      it_behaves_like 'template rendering action', :new
    end
  end
end


