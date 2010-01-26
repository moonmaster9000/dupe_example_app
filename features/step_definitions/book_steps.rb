Given /^the library has lots of books$/ do
  Dupe.stub 2, :books
end

Then /^I should see all of the books in the library$/ do
  Dupe.find(:books).each do |book|
    Then %{I should see "#{book.name}"}
    Then %{I should see "by #{book.author.name}"}
  end
end