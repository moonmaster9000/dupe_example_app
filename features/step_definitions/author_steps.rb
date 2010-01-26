Given /^an author with many books$/ do
  @author = Dupe.create :author
  @books = Dupe.stub 10, :books, :like => {:author => @author}
end

When /^I view the books page for that author$/ do
  When %{I go to the books page for the author with id "#{@author.id}"}
end

Then /^I should see the name of that author$/ do
  Then %{I should see "#{@author.name}"}
end

Then /^I should see all of the books written by that author$/ do
  @books.each do |book|
    Then %{I should see "#{book.name}"}
  end
end