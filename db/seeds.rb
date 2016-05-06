Card.delete_all

card_content = [{question: 'What ended in the year 1919?', answer: '1918', deck_id: 1},
	{question: 'It goes all over the world, but always stays in a corner. What is that?' answer: 'stamp', deck_id: 1},
	{question: 'It goes up and comes down, but never move. What it is?', answer:'staircase',deck_id: 1},
	{question: 'I have four legs – but I can’t walk. What Am I?', answer: 'chair', deck_id: 1},
	{question: 'There is a head and there is a tail! But no body – what is it?', answer: 'coin', deck_id: 1}
]

Deck.create!(name: 'Jokes')
Card.create!(card_content)

card_content_2 = [{question: 'Who is the Chancellor of Germany?', answer: 'Angela Merkel', deck_id: 2},
{question: 'Who is the Prime Minister of Canada?', answer: 'Justin Trudeau', deck_id: 2},
{question: 'Who is the President of South Africa?', answer: 'Jacob Zuma', deck_id: 2},
{question: 'Who is the Prime Minister of the United Kingdom?', answer: 'David Cameron', deck_id: 2},
{question: 'Who is the Prime Minister of New Zealand?', answer: 'John Key', deck_id: 2}]

Deck.create!(name: 'World Leaders')
Card.create!(card_content_2)