class ZipCode
  attr_accessor :value_zip

  def initialize(data)
    @value_zip = clean_zip_code(data[:value_zip])
  end

  def clean_zip_code(number)
    if number
      number.to_s.rjust(5,"0")[0..4]
    else
      number = "00000"
    end
  end

end