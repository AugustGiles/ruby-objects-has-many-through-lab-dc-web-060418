class Patient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(self, date, doctor)
    Appointment.all << appointment
    appointment
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end.uniq
  end

end
