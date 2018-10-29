require 'rails_helper'

RSpec.describe TodoList, type: :model do
  it "should have many todo_items" do
    t = TodoList.reflect_on_association(:todo_items)
    expect(t.macro).to equal(:has_many)
  end

  it "should belong to user" do
  	t = TodoList.reflect_on_association(:user)
  	expect(t.macro).to equal(:belongs_to)
  end
end

