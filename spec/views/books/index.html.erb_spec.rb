require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        description: "MyText"
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        description: "MyText"
      )
    ])
  end

  xit "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
