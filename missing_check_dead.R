# Rules regarding the dead patients file


!(death_cause_orig_desc %in% c("", " ", NA, NULL)) # Dead patients but missing primary death reason
!(death_sec_cause_desc %in% c("", " ", NA, NULL)) # Dead patients but missing secondary death reason
!(mort_simple_grp %in% c("", " ", NA, NULL)) # Dead patients but missing morality simple group info
!(death_date %in% c("", " ", NA, NULL)) # Dead patients but missing death date

#sapply(ELEVATION, is.integer)  # is right datatype
#is_within_range(ELEVATION, -1, 8)  # is between min max
#sapply(LOCATION, is.character)  #
#LOCATION %in% LETTERS[1:10]  #


#sapply(GENUS, is.character)  #
#is_proper_name(GENUS) 
