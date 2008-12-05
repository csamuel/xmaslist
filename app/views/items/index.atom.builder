atom_feed do |feed|
	feed.title("My Items")
	feed.update(@items.first.created_at)
	
	@items.each do |item|
	  feed.entry(item) do |entry|
	    entry.title(item.name)
	    entry.content(item.description, :type => 'html')
	    entry.author { |author| author.name("Chris Samuel")}
	  end
	end
end