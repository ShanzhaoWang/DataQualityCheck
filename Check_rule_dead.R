# An example rule file


# Rules regarding dead patients 


(death_cause_orig_desc == "") | !(death_cause_orig_desc == "") & str_detect(death_cause_orig_desc, "([a-zA-Z]+)|([0-9]{9,10}[a-zA-Z]+)") # Incorrect format for the primary death reason 
is.withinRange(length(unlist(str_split(death_cause_orig_desc, " "))), 3, 15) # Incorrect length for primary death reason
(death_sec_cause_desc == "") | !(death_sec_cause_desc == "") & str_detect(death_sec_cause_desc, "([a-zA-Z]+)|([0-9]{9,10}[a-zA-Z]+)") # Incorrect secondary death reason format
is.withinRange(length(unlist(str_split(death_sec_cause_desc, " "))), 3, 15) # Incorrect length for secondary death reason


death_date %in% c("", " ") | !(str_detect(death_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Dead patients with incorrect date: Missing day or/and month
death_date %in% c("", " ") | !(as.Date(death_date, "%d/%m/%Y") %in% c(NA)) # Dead patients with incorrect date: Wrong format 
death_date %in% c("", " ") | as.Date(death_date, "%d/%m/%Y") %in% c(NA) | as.Date(death_date, "%d/%m/%Y") < Sys.Date() # Dead patients death date is invalid(B/C it's in the future)


last_attended_appt %in% c("", " ") | !(str_detect(last_attended_appt, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Dead patients with incorrect last_attended_appt: Missing day or/and month
last_attended_appt %in% c("", " ") | !(as.Date(last_attended_appt, "%d/%m/%Y") %in% c(NA)) # Dead patients with incorrect last_attended_appt: Wrong format 
last_attended_appt %in% c("", " ") | as.Date(last_attended_appt, "%d/%m/%Y") %in% c(NA) | as.Date(last_attended_appt, "%d/%m/%Y")  < Sys.Date() # Dead Patients last_attended_appt is invalid(B/C it's in the future)

last_contact_date %in% c("", " ") | !(str_detect(last_contact_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Dead patients with incorrect last_contact_date: Missing day or/and month
last_contact_date %in% c("", " ") | !(as.Date(last_contact_date, "%d/%m/%Y") %in% c(NA)) # Dead patients with incorrect last_contact_date: Wrong format 
last_contact_date %in% c("", " ") | as.Date(last_contact_date, "%d/%m/%Y") %in% c(NA) | as.Date(last_contact_date, "%d/%m/%Y") < Sys.Date() # Dead patients last_contact_date is invalid(B/C it's in the future)

diagnosis_date %in% c("", " ") | !(str_detect(diagnosis_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Dead patients with incorrect diagnosis_date: Missing day or/and month
diagnosis_date %in% c("", " ") | !(as.Date(diagnosis_date, "%d/%m/%Y") %in% c(NA)) # Dead patients with incorrect diagnosis_date: Wrong format 
diagnosis_date %in% c("", " ") | as.Date(diagnosis_date, "%d/%m/%Y") %in% c(NA) | as.Date(diagnosis_date, "%d/%m/%Y") < Sys.Date() # Dead patients diagnosis_date is invalid(B/C it's in the future)

site_admit_date %in% c("", " ") | !(str_detect(site_admit_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Dead patients with incorrect site_admit_date: Missing day or/and month
site_admit_date %in% c("", " ") | !(as.Date(site_admit_date, "%d/%m/%Y") %in% c(NA)) # Dead patients with incorrect site_admit_date: Wrong format 
site_admit_date %in% c("", " ") | as.Date(site_admit_date, "%d/%m/%Y") %in% c(NA) | as.Date(site_admit_date, "%d/%m/%Y") < Sys.Date() # Dead patients site_admit_date is invalid(B/C it's in the future)


#sapply(ELEVATION, is.integer)  # is right datatype
#is_within_range(ELEVATION, -1, 8)  # is between min max
#sapply(LOCATION, is.character)  #
#LOCATION %in% LETTERS[1:10]  #


#sapply(GENUS, is.character)  #
#is_proper_name(GENUS) 
