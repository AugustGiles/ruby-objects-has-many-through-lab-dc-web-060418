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
    appointment = Appointment.new(self, doctor, date)
    Appointment.all << appointment
    appointment
  end

  def appointments
    Appointment.all
  end

  def doctors
    Appointment.all.collect do |appointments|
      appointments.doctor
    end
  end

end
