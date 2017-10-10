require_relative 'patient'

new_patient = Patient.new("Molly", "Weasley")
puts new_patient.first_name
puts new_patient.last_name

def patient_contact_info
#Error 1: NameError:  undefined local variable or method `patient_contact_info' for main:Object
    begin
    
    raise NameError, "There ain't a method named patient_contact_info. Try again."

    rescue NameError => e
    print "Exception message: #{e.message}"
    end
end

puts patient_contact_info

#Error 2: `patient_status': Argument is not a string (ArgumentError)
puts new_patient.patient_status(:coma)

#Error 3: `patient_currently_admitted?': wrong number of arguments (given 0, expected 1) (ArgumentError)
# puts new_patient.patient_currently_admitted?

#Error 4:  divided by 0 (ZeroDivisionError)
print new_patient.patient_new_total(125)

#Error 5: `add_med_to_list': 123.12 is not a integer (ArgumentError)
new_patient.add_med_to_list("lipitor", 123.12)

#Error 5: `patient_medications_list': Medications list is not valid. (RuntimeError)
new_patient.patient_medications_list