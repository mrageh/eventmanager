class ZipCode
  attr_accessor :zipcode

  def initialize(data)
    @zipcode = clean_zip_code(data[:zipcode])
  end

  def clean_zip_code(number)
    if number.length < 5
      number.rjust(5, '0')
    end
    number
  end
end