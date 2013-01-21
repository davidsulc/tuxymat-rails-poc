require 'spec_helper'

describe VendingMachinesController do

  def valid_attributes
    FactoryGirl.attributes_for(:vending_machine)
  end
  
  context "admin" do
    before(:each) do
      @admin = FactoryGirl.create(:admin)
      sign_in @admin
    end

    describe "GET index" do
      it "assigns all vending_machines as @vending_machines" do
        vending_machine = VendingMachine.create! valid_attributes
        get :index, {}
        assigns(:vending_machines).should eq([vending_machine])
      end
    end

    describe "GET show" do
      it "assigns the requested vending_machine as @vending_machine" do
        vending_machine = VendingMachine.create! valid_attributes
        get :show, {:id => vending_machine.to_param}
        assigns(:vending_machine).should eq(vending_machine)
      end
    end

    describe "GET new" do
      it "assigns a new vending_machine as @vending_machine" do
        get :new, {}
        assigns(:vending_machine).should be_a_new(VendingMachine)
      end
    end

    describe "GET edit" do
      it "assigns the requested vending_machine as @vending_machine" do
        vending_machine = VendingMachine.create! valid_attributes
        get :edit, {:id => vending_machine.to_param}
        assigns(:vending_machine).should eq(vending_machine)
      end
    end

    describe "POST create" do
      describe "with valid params" do
        it "creates a new VendingMachine" do
          expect {
            post :create, {:vending_machine => valid_attributes}
          }.to change(VendingMachine, :count).by(1)
        end

        it "assigns a newly created vending_machine as @vending_machine" do
          post :create, {:vending_machine => valid_attributes}
          assigns(:vending_machine).should be_a(VendingMachine)
          assigns(:vending_machine).should be_persisted
        end

        it "redirects to the created vending_machine" do
          post :create, {:vending_machine => valid_attributes}
          response.should redirect_to(VendingMachine.last)
        end
      end

      describe "with invalid params" do
        it "assigns a newly created but unsaved vending_machine as @vending_machine" do
          # Trigger the behavior that occurs when invalid params are submitted
          VendingMachine.any_instance.stub(:save).and_return(false)
          post :create, {:vending_machine => { "serial_number" => "invalid value" }}
          assigns(:vending_machine).should be_a_new(VendingMachine)
        end

        it "re-renders the 'new' template" do
          # Trigger the behavior that occurs when invalid params are submitted
          VendingMachine.any_instance.stub(:save).and_return(false)
          post :create, {:vending_machine => { "serial_number" => "invalid value" }}
          response.should render_template("new")
        end
      end
    end

    describe "PUT update" do
      describe "with valid params" do
        it "updates the requested vending_machine" do
          vending_machine = VendingMachine.create! valid_attributes
          # Assuming there are no other vending_machines in the database, this
          # specifies that the VendingMachine created on the previous line
          # receives the :update_attributes message with whatever params are
          # submitted in the request.
          VendingMachine.any_instance.should_receive(:update_attributes).with({ "serial_number" => "MyString" })
          put :update, {:id => vending_machine.to_param, :vending_machine => { "serial_number" => "MyString" }}
        end

        it "assigns the requested vending_machine as @vending_machine" do
          vending_machine = VendingMachine.create! valid_attributes
          put :update, {:id => vending_machine.to_param, :vending_machine => valid_attributes}
          assigns(:vending_machine).should eq(vending_machine)
        end

        it "redirects to the vending_machine" do
          vending_machine = VendingMachine.create! valid_attributes
          put :update, {:id => vending_machine.to_param, :vending_machine => valid_attributes}
          response.should redirect_to(vending_machine)
        end
      end

      describe "with invalid params" do
        it "assigns the vending_machine as @vending_machine" do
          vending_machine = VendingMachine.create! valid_attributes
          # Trigger the behavior that occurs when invalid params are submitted
          VendingMachine.any_instance.stub(:save).and_return(false)
          put :update, {:id => vending_machine.to_param, :vending_machine => { "serial_number" => "invalid value" }}
          assigns(:vending_machine).should eq(vending_machine)
        end

        it "re-renders the 'edit' template" do
          vending_machine = VendingMachine.create! valid_attributes
          # Trigger the behavior that occurs when invalid params are submitted
          VendingMachine.any_instance.stub(:save).and_return(false)
          put :update, {:id => vending_machine.to_param, :vending_machine => { "serial_number" => "invalid value" }}
          response.should render_template("edit")
        end
      end
    end

    describe "DELETE destroy" do
      it "destroys the requested vending_machine" do
        vending_machine = VendingMachine.create! valid_attributes
        expect {
          delete :destroy, {:id => vending_machine.to_param}
        }.to change(VendingMachine, :count).by(-1)
      end

      it "redirects to the vending_machines list" do
        vending_machine = VendingMachine.create! valid_attributes
        delete :destroy, {:id => vending_machine.to_param}
        response.should redirect_to(vending_machines_url)
      end
    end
  end
  
  context "user" do
    before(:each) do
      @user = FactoryGirl.create(:user)
      sign_in @user
    end

    describe "GET new" do
      it "redirects to root_url" do
        get :new, {}
        response.should redirect_to root_url
      end
    end

    describe "GET new" do
      it "redirects to root_url" do
        get :new, {}
        response.should redirect_to root_url
      end
    end
    
    describe "GET edit" do
      it "redirects to root_url" do
        vending_machine = VendingMachine.create! valid_attributes
        get :edit, {:id => vending_machine.to_param}
        response.should redirect_to root_url
      end
    end
    
    describe "POST create" do
      it "redirects to root_url" do
        post :create, {:vending_machine => valid_attributes}
        response.should redirect_to root_url
      end
    end
    
    describe "PUT update" do
      it "redirects to root_url" do
        vending_machine = VendingMachine.create! valid_attributes
        put :update, {:id => vending_machine.to_param, :vending_machine => { "serial_number" => "MyString" }}
        response.should redirect_to root_url
      end
    end

    describe "DELETE destroy" do
      it "redirects to root_url" do
        vending_machine = VendingMachine.create! valid_attributes
        delete :destroy, {:id => vending_machine.to_param}
        response.should redirect_to root_url
      end
    end
    
  end

end
