require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe "GET #index" do
      let(:manufacturers) { create_list :manufacturer, 3 }
      let(:products) { create_list :product, 8 }

      before { get :index }

      context "required output per page" do
        it "render to index view" do
          is_expected.to render_template :index
        end

        it "instance var manufacturers include only manufacturers" do
          expect(assigns(key :manufacturers)).to match_array(manufacturers)
        end

        it "instance products include only products" do
          expect(assigns(key :products)).to match_array(products)

        end
      end
  end
end
