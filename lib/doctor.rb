class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    Appointment.all << appointment
    appointment
  end

  def appointments
    Appointment.all
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end

end
