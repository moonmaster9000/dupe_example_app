Given /^the library has lots of books$/ do
  Dupe.create :book, :name => "Rooby Rocks" 
  Dupe.create :book, :name => "Rails Rocks too!" 
end

Then /^I should see all of the books in the library$/ do
  Then %{I should see "Rooby Rocks"}
  Then %{I should see "Rails Rocks too!"}
end