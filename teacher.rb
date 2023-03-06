require './person'

class Student < Person
  def initialize(specilization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specilization = specilization
  end

  def can_use_services?
    true
  end
end
