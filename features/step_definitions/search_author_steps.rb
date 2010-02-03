Given /^the site has many authors$/ do
  Dupe.create(
    :authors, 
    [
      {:name => 'Famous Rubyist'}, 
      {:name => 'Infamous Rubyist'}, 
      {:name => 'Weird Haskeller'}
    ]
  )
end

When /^I type some text into the author search form$/ do
  When %{I go to the author search page}
  When %{I fill in "Search:" with "Ruby"}
end

When /^I submit the form$/ do
  When %{I press "Search"}
end

Then /^I should see any authors whose name at least partially matches my search text$/ do
  Then %{I should see "Famous Rubyist"}
  Then %{I should see "Infamous Rubyist"}
  Then %{I should not see "Weird Haskeller"}
end