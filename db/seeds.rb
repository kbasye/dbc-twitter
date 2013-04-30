User.create(
	username: 'goalbook',
	email: 'goalbook@goalbook.com',
	password: 'password'
	)

20.times do |user|
	User.create(
		username: Faker::Internet.user_name,
		email: Faker::Internet.email,
		password: 'password'
		)
end

60.times do |tweet|
	Tweet.create(
		body: Faker::Lorem.sentences(3),
		user_id: Random.rand(1..20)
	)
end