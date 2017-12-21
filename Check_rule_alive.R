# An example rule file

# Testing the example database clinical.csv

# Rules regarding alive patients 

death_date %in% c( "", " ", NULL, NA ) # Alive but has unexpected death date
death_fuzz %in% c( "", " ", NULL, NA ) # ALive but has unexpected fuzzy death date
death_cause_orig_desc %in% c( "", " ", NULL, NA ) # Alive but has unexpected original death reason
death_sec_cause_desc %in% c( "", " ", NULL, NA ) # Alive but has unexpected secondary death reason
mort_simple_grp %in% c( "", " ", NULL, NA ) # Alive but has Mortality simple grouped 

last_attended_appt %in% c("", " ") | !(str_detect(last_attended_appt, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Alive patients with incorrect last_attended_appt: Missing day or/and month
last_attended_appt %in% c("", " ") | !(as.Date(last_attended_appt, "%d/%m/%Y") %in% c(NA)) # Alive patients with incorrect last_attended_appt type: Wrong format 
last_attended_appt %in% c("", " ") | as.Date(last_attended_appt, "%d/%m/%Y") %in% c(NA) | as.Date(last_attended_appt, "%d/%m/%Y")  < Sys.Date() # Alive patients last_attended_appt is invalid(B/C it's in the future)

last_contact_date %in% c("", " ") | !(str_detect(last_contact_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Alive patients with incorrect last_contact_date: Missing day or/and month
last_contact_date %in% c("", " ") | !(as.Date(last_contact_date, "%d/%m/%Y") %in% c(NA)) # Alive patients with incorrect last_contact_date: Wrong format 
last_contact_date %in% c("", " ") | as.Date(last_contact_date, "%d/%m/%Y") %in% c(NA) | as.Date(last_contact_date, "%d/%m/%Y") < Sys.Date() # Alive patients last_contact_date is invalid(B/C it's in the future)

diagnosis_date %in% c("", " ") | !(str_detect(diagnosis_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Alive patients with incorrect diagnosis_date: Missing day or/and month
diagnosis_date %in% c("", " ") | !(as.Date(diagnosis_date, "%d/%m/%Y") %in% c(NA)) # Alive patients with incorrect diagnosis_date: Wrong format 
diagnosis_date %in% c("", " ") | as.Date(diagnosis_date, "%d/%m/%Y") %in% c(NA) | as.Date(diagnosis_date, "%d/%m/%Y") < Sys.Date() # Alive patients diagnosis_date is invalid(B/C it's in the future)

site_admit_date %in% c("", " ") | !(str_detect(site_admit_date, "(01/[0-9]*/[0-9]*)|([0-9]*/01/[0-9]*)")) # Alive patients with incorrect site_admit_date: Missing day or/and month
site_admit_date %in% c("", " ") | !(as.Date(site_admit_date, "%d/%m/%Y") %in% c(NA)) # Alive patients with incorrect site_admit_date type: Wrong format 
site_admit_date %in% c("", " ") | as.Date(site_admit_date, "%d/%m/%Y") %in% c(NA) | as.Date(site_admit_date, "%d/%m/%Y") < Sys.Date() # Alive patients site_admit_date is invalid(B/C it's in the future)




#sapply(ELEVATION, is.integer)  # is right datatype
#is_within_range(ELEVATION, -1, 8)  # is between min max
#sapply(LOCATION, is.character)  #
#LOCATION %in% LETTERS[1:10]  #


#sapply(GENUS, is.character)  #
#is_proper_name(GENUS) 
