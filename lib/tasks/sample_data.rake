namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		make_powers
		make_characters
		make_organizations
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
	Character.create!(name: "Jane Doe",
		strength: 2,
		dexterity: 3,
		stamina: 3,
		perception: 2,
		intelligence: 3,
		wits: 2,
		appearance: 2,
		manipulation: 2,
		charisma: 2)
	@character = Character.find(2)
	@character.known_powers.create(power_id:1, rating: 4)
end

def make_powers
	Power.create!(name: "Energy Projection",
		description: "Project energy!");
	Power.create!(name: "Telekinesis",
		description: "Move things with yo mind!");
	Power.create!(name: "Armor",
		description: "Protect yourself!"))
end

def make_organizations
	@org = Organization.create!(name: "Paradopolis",
		description: "We're in the business of doing business!");
	@org.members.create(character_id: 1, title: "CEO")
end
