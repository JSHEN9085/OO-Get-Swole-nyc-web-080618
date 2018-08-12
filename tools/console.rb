require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lifter1 = Lifter.new("Lifter1", 10)
lifter2 = Lifter.new("Lifter2", 20)
lifter3 = Lifter.new("Lifter3", 30)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")

membership1 = Membership.new(20, lifter1, gym1)
membership2 = Membership.new(18, lifter2, gym2)
membership3 = Membership.new(25, lifter1, gym3)
membership4 = Membership.new(25, lifter2, gym3)
membership5 = Membership.new(25, lifter3, gym3)

binding.pry
