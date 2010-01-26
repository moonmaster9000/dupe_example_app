Dupe.define :book do |book|
  book.uniquify :name
  book.author do 
    Dupe.create :author
  end
end

Dupe.define :author do |author|
  author.uniquify :name
end