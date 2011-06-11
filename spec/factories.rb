Factory.define :user do |user|
	user.name					"Tom Henderson"
	user.email				"tom@example.net"
	user.password			"lienelivija"
	user.password_confirmation "lienelivija"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end
