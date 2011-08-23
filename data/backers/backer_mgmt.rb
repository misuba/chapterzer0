require 'csv'
require 'time'

reward_files = %w[ ks_20.csv ks_256.csv ks_29.csv ks_2.csv
	ks_400.csv ks_42.csv ks_500.csv ks_64.csv ks_9.csv ]

no_reward_file = "ks_none.csv"

def pledge_level(file)
	case file
		when file = "ks_2.csv "
			reward = :punk_as_x
		when file = "ks_9.csv"
			reward = :join_the_mathpunx
		when file = "ks_20.csv"
			reward = :existence
		when file = "ks_29.csv"
			reward = :uniqueness
		when file = "ks_42.csv"
			reward = :answers_to_everything
		when file = "ks_64.csv"
			reward = :nonlinear
		when file = "ks_256.csv"
			reward = :research_patron
		when file = "ks_400.csv"
			reward = :spacetime
		when file = "ks_500.csv"
			reward = :traveling_salesman
	end
	reward
end

array = []

def parse(file)
	array = []
	CSV.foreach(file, :headers => true) do |row|
		name = row[0] 
		email = row[1]
		pledge_amount = row[2]
		pledged_at = Time.parse(row[3])

		array << { :name => name, :email => email, 
			:pledge_amount => pledge_amount, :pledged_at => pledged_at }
	end
	array
end

backers = []

reward_files.each do |file|
	reward = pledge_level file
	these_backers = parse(file)

	these_backers.each do |backer|
		backer.merge :reward => reward
	end
	backers += these_backers
end

no_reward_backers = parse("ks_none.csv")
no_reward_backers.each do |backer|
	if backer[:pledge_amount][1,10].to_f >= 9
		backer[:mathpunx] = true
	end
end

backers += no_reward_backers 
