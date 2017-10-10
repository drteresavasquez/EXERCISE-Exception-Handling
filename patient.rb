class Patient
    attr_accessor :first_name, :last_name, :status, :current_balance, :med_list

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @med_list = []
  end

  def patient_status(status)
    begin
        raise ArgumentError,"Argument is not a string" unless status.is_a? String

        rescue ArgumentError => e
        puts "Exception message: #{e.message}"
    end
    @status = status
  end

  def patient_currently_admitted?(admit_time)
        puts "Patient currently in hospital, admitted at #{admit_time}"
  end

  def patient_new_total(amount)
    @current_balance = 0
    puts "Current balance before calculation: #{current_balance}"
    begin
        raise ZeroDivisionError, "Not divisible by Zero (0). Check current Balance." unless @current_balance != 0
    rescue ZeroDivisionError => e 
        puts "Exception message: #{e.message}"
    else
        @current_balance = (current_balance + amount)/current_balance
            # This runs only if there are no exceptions
        @current_balance = amount
    end
  end

  def add_med_to_list(med, dosage)
    begin
        raise ArgumentError,"#{dosage} is not an integer" unless dosage.is_a? Integer
    rescue ArgumentError => e
        puts "Exception message: #{e.message}"
    else
        puts "Medication added: #{med}"
        @med_list.push([med,dosage])
    end

    #Create a new class called MedTypeError that inherits from StandardError and use that as seen below:
    begin
        raise MedTypeError, "This is not a valid medication" unless med.is_a? String

        rescue MedTypeError => e
            puts "Exception message: #{e.message}"
        else
            puts @med_list
    end
  end

  def patient_medications_list
    begin
    raise RuntimeError, "Medications list is not valid."
    rescue RuntimeError => e 
        puts "Exception message: #{e.message}"
    else
    puts "User medication list:"
    puts @med_list
    ensure
     # This needs to run whether there was an exception or not.
     puts "Disclaimer: The hospital is not responsible for the user's health due to medications they may be using."
    end
  end
  
end

class MedTypeError < StandardError
end