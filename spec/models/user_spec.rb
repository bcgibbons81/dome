require 'rails_helper'

 RSpec.describe User, type: :model do
   it "is valid with an email, and password" do
   	user = User.new(
 
       email:      "tester@test.com",
       password:   "12345678",
    )
     expect(user).to be_valid
   end
    
    it "is invalid without an email address" do
    	user = User.new(
 
       email:      " ",
       password:   "12345678",
    )
     expect(user).to be_invalid
   end

    it "is invalid with a duplicate email address" do 
    
    User.create(
      
      email:      "tester@test.com",
      password:   "12345678",
    )
    user = User.new(
     
     email:      "tester@test.com",
     password:   "12345678",
   )
   user.valid?
   expect(user.errors[:email]).to include("has already been taken")
   end


  it "should have many todo_lists" do
    t = User.reflect_on_association(:todo_lists)
    expect(t.macro).to equal(:has_many)
  end

  it "returns a user's full name as a string" do
   user = User.new(
     firstname: "Ben",
     lastname:  "Gibbons",
     email:      "ben@test.com",
   )
   expect(user.name).to eq "Ben Gibbons"
 end

it "returns a user's full name as a string" do
   user = User.new(
     firstname: "Ben",
     lastname:  "Gibbons ",
     email:      "ben@test.com",
   )

   expect(user.name).to include(" ")
end
 end