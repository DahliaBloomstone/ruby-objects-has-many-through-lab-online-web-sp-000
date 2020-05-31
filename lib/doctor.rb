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
end

def self.appointments 
Appointment.all
end

#Appointment.map do |appointment|
  #appointment.patient
    #end
  #end

end
