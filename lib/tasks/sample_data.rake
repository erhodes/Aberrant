namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_characters
		make_powers
	end
end

def make_characters
	Character.create!(name: "John Doe",
		strength: 2,
		dexterity: 3,
		stamina: 3,
		perception: 2,
		intelligence: 3,
		wits: 2,
		appearance: 2,
		manipulation: 2,
		charisma: 2)
end

def make_powers
	Power.create!(name: "Energy Projection",
		description: "Project energy!");
end