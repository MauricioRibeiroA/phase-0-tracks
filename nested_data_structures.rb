library = {
	sections: {
		childrenBooks: {
		  titles: [
			"Peter _Pan",
			"Alice",
			"Harry_Potter"
		  ]
		},
		business: {
		  titles: [
		    "Richard Branson, The Virgin Way",
		    "How_business_works",
		    "Mastering patient flow"
		    ]
		},  
		philosophy: {
		  titles: [
		    "Meditation",
		    "Letters from a Stoic",
		    "Fragments"
		    ]
		},
		authors: {
		  names: []
		},
  },
  prices: {
    :Peter_Pan => 15 ,
    :Harry_Potter => 15 ,
    :Alice => 20
  }
}


#how to know the books
library[:sections].map do |books|
       p books
end

# how to add a new information to the database
p library[:sections][:authors][:names].push("Batman")

# how to find a book from the index
p library[:sections][:business][:titles][1]

# command to list the price of the books
library[:prices].each do |book, price|
  p book, price
end

# command to know how much you're gonna pay if buy two books 
library[:prices][:Peter_Pan] + library[:prices][:Alice]

