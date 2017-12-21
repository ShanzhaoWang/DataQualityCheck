
# Rules regarding the entire file

pat_status %in% c("A", "D") # Patients are missing vital status 
!(last_attended_appt %in% c("", " ", NA, NULL)) # Patients missing the date of last appointment 
!(last_contact_date %in% c("", " ", NA, NULL)) # Patients missing the date of last contact  
!(diagnosis_date %in% c("", " ", NA, NULL)) # Patients missing the date of diagnosis
!(site_admit_date %in% c("", " ", NA, NULL)) # Patients missing the date of site admission 
!(last_contact_type_desc %in% c("", " ")) # Patients are missing the last contact type 

#sapply(ELEVATION, is.integer)  # is right datatype
#is_within_range(ELEVATION, -1, 8)  # is between min max
#sapply(LOCATION, is.character)  #
#LOCATION %in% LETTERS[1:10]  #


#sapply(GENUS, is.character)  #
#is_proper_name(GENUS) 
