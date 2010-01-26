Get %r{/books\.xml\?author_id=(\d+)} do |author_id|
  Dupe.find(:books) {|b| b.author.id == author_id.to_i }
end