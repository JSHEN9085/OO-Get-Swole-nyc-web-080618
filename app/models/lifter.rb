
class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_lift
    sum = 0
    Lifter.all.each do |lifter|
      sum += lifter.lift_total
    end
    sum.to_f / Lifter.all.length
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  def total_cost
    cost = memberships.map do |membership|
      membership.cost
    end
    cost.sum
  end


end
