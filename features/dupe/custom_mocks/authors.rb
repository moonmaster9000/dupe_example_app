Get %r{/authors/search\.xml\?q=([^&]+)$} do |search_text|
  Dupe.find(:authors) {|a| a.name.downcase.include? search_text.downcase}
end