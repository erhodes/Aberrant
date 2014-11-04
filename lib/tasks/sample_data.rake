namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_powers
		make_characters
	end
end

def make_characters
	@character = Character.create!(name: "John Doe",
		strength: 2,
		dexterity: 3,
		stamina: 3,
		perception: 2,
		intelligence: 3,
		wits: 2,
		appearance: 2,
		manipulation: 2,
		charisma: 2)
	@character.known_powers.create(power_id: 1, rating: 1)
	@character.known_powers.create(power_id: 2, rating: 3)
end

def make_powers
	Power.create!(name: "Energy Projection",
		description: "Project energy!");
	Power.create!(name: "Telekinesis",
		description: "Move things with yo mind!");
end