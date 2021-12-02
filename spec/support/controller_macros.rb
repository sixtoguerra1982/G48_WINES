#DONE module added to test devise with rspec using factorybot '1/12'
# Define login methods
# Illustrated in Devise wiki, you can define both admin/standard users’ login
# Inside the method, a fixture is generated by FactoryBot, but you can also write User.new instead


module ControllerMacros

  # TODO use this to authenticate editor?
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      admin = FactoryBot.create(:admin)
      sign_in admin
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryBot.create(:user)
      sign_in user
    end
  end


end