require 'spec_helper'

describe Subscribem::AccountsController do
  context "creates the account's schema" do
    routes { Subscribem::Engine.routes }
    # let!(:account) { double(Subscribem::Account) }
    # before do
    #   Subscribem::Account.should_receive(:create_with_owner).
    #   and_return(account)
    #   allow(account).to receive(:valid?).and_return(value)
    #   account.stub :valid? => true
    #   controller.stub(:force_authentication!)
    # end
    let(:params) do
      {:account => {name: 'something', subdomain: 'something', owner_attributes: {email: 'bb@gmail.com', password: 'password', password_confirmation: 'password'}}}
    end
    context "the user is already signed in" do
      before do
        allow(subject).to receive(:user_signed_in).and_return(true)
      end
      it 'adds the admin role for this account' do
        post :create, params
        account = Subscribem::Account.first
        user = account.owner
        expect(user.has_role? :admin, account).to be_truthy
      end
    end
    context "the user is not signed in" do
      before do
        allow(subject).to receive(:user_signed_in).and_return(false)
      end
      it 'adds the admin role for this account' do
        post :create, params
        account = Subscribem::Account.first
        user = account.owner
        expect(user.has_role? :admin, account).to be_truthy
      end
    end
  end
end
