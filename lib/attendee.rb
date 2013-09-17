class Attendee
  attr_accessor :first_name , :last_name, :phone_number, :zip_code
  #Getters and setters
    # def first_name
    #   @first_name
    # end

    # def first_name=(value)
    #   @first_name = value
    # end

  def initialize(data)
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @phone_number = PhoneNumber.new(data)
    @zip_code = ZipCode.new(data)
  end

end