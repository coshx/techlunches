require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PresentationsController do

  # This should return the minimal set of attributes required to create a valid
  # Presentation. As you add validations to Presentation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PresentationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all presentations as @presentations" do
      presentation = Presentation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:presentations).should eq([presentation])
    end
  end

  describe "GET show" do
    it "assigns the requested presentation as @presentation" do
      presentation = Presentation.create! valid_attributes
      get :show, {:id => presentation.to_param}, valid_session
      assigns(:presentation).should eq(presentation)
    end
  end

  describe "GET new" do
    it "assigns a new presentation as @presentation" do
      get :new, {}, valid_session
      assigns(:presentation).should be_a_new(Presentation)
    end
  end

  describe "GET edit" do
    it "assigns the requested presentation as @presentation" do
      presentation = Presentation.create! valid_attributes
      get :edit, {:id => presentation.to_param}, valid_session
      assigns(:presentation).should eq(presentation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Presentation" do
        expect {
          post :create, {:presentation => valid_attributes}, valid_session
        }.to change(Presentation, :count).by(1)
      end

      it "assigns a newly created presentation as @presentation" do
        post :create, {:presentation => valid_attributes}, valid_session
        assigns(:presentation).should be_a(Presentation)
        assigns(:presentation).should be_persisted
      end

      it "redirects to the created presentation" do
        post :create, {:presentation => valid_attributes}, valid_session
        response.should redirect_to(Presentation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved presentation as @presentation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Presentation.any_instance.stub(:save).and_return(false)
        post :create, {:presentation => { "title" => "invalid value" }}, valid_session
        assigns(:presentation).should be_a_new(Presentation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Presentation.any_instance.stub(:save).and_return(false)
        post :create, {:presentation => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested presentation" do
        presentation = Presentation.create! valid_attributes
        # Assuming there are no other presentations in the database, this
        # specifies that the Presentation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Presentation.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => presentation.to_param, :presentation => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested presentation as @presentation" do
        presentation = Presentation.create! valid_attributes
        put :update, {:id => presentation.to_param, :presentation => valid_attributes}, valid_session
        assigns(:presentation).should eq(presentation)
      end

      it "redirects to the presentation" do
        presentation = Presentation.create! valid_attributes
        put :update, {:id => presentation.to_param, :presentation => valid_attributes}, valid_session
        response.should redirect_to(presentation)
      end
    end

    describe "with invalid params" do
      it "assigns the presentation as @presentation" do
        presentation = Presentation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Presentation.any_instance.stub(:save).and_return(false)
        put :update, {:id => presentation.to_param, :presentation => { "title" => "invalid value" }}, valid_session
        assigns(:presentation).should eq(presentation)
      end

      it "re-renders the 'edit' template" do
        presentation = Presentation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Presentation.any_instance.stub(:save).and_return(false)
        put :update, {:id => presentation.to_param, :presentation => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested presentation" do
      presentation = Presentation.create! valid_attributes
      expect {
        delete :destroy, {:id => presentation.to_param}, valid_session
      }.to change(Presentation, :count).by(-1)
    end

    it "redirects to the presentations list" do
      presentation = Presentation.create! valid_attributes
      delete :destroy, {:id => presentation.to_param}, valid_session
      response.should redirect_to(presentations_url)
    end
  end

end
