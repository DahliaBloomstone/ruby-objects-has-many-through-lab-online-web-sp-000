class Patient

attr_reader :name, :appointment, :doctor

@@all = [ ]

def initialize(name)
@name = name
@@all << self
  end

def self.all
  @@all
end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments #returns all appointments associated w patient
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors #has many docs through appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
end
