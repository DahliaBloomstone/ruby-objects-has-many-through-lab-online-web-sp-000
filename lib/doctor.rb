class Doctor

attr_reader :name

@@all = [ ]

def initialize(name)
@name = name
@@all << self
end

def self.all
  @@all
  end

def new_appointment(patient, date)
  Appointment.new(patient, self, date)
  end

def appointments
  Appointment.all.select do |appointment|
  appointment.doctor == self
  end

  def patients
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end

end
