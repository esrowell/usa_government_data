- view: college_generated
  fields:
  - dimension: unitid
    sql: integer(${TABLE}.unitid)
    description: Unit ID for institution
    view_label: ~ id
    label: id

  - dimension: opeid
    sql: integer(${TABLE}.opeid)
    description: 8-digit OPE ID for institution
    view_label: ~ ope8_id
    label: ope8_id

  - dimension: opeid6
    sql: integer(${TABLE}.opeid6)
    description: 6-digit OPE ID for institution
    view_label: ~ ope6_id
    label: ope6_id

  - dimension: instnm
    sql: ${TABLE}.instnm
    description: Institution name
    view_label: ~ school
    label: name

  - dimension: city
    sql: ${TABLE}.city
    description: City
    view_label: ~ school
    label: city

  - dimension: stabbr
    sql: ${TABLE}.stabbr
    description: State postcode
    view_label: ~ school
    label: state

  - dimension: zip
    sql: integer(${TABLE}.zip)
    description: ZIP code
    view_label: ~ school
    label: zip

  - dimension: accredagency
    sql: ${TABLE}.accredagency
    description: Accreditor for institution
    view_label: ~ school
    label: accreditor

  - dimension: insturl
    sql: ${TABLE}.insturl
    description: URL for institution's homepage
    view_label: ~ school
    label: school_url

  - dimension: npcurl
    sql: ${TABLE}.npcurl
    description: URL for institution's net price calculator
    view_label: ~ school
    label: price_calculator_url

  - dimension: sch_deg
    sql: integer(${TABLE}.sch_deg)
    description: Predominant degree awarded (recoded 0s and 4s)
    view_label: ~ school
    label: degrees_awarded.predominant_recoded

  - dimension: main
    sql: integer(${TABLE}.main)
    description: Flag for main campus
    view_label: ~ school
    label: main_campus

  - dimension: numbranch
    sql: integer(${TABLE}.numbranch)
    description: Number of branch campuses
    view_label: ~ school
    label: branches

  - dimension: preddeg
    sql: integer(${TABLE}.preddeg)
    description: Predominant degree awarded0        Not classified1        Predominantly certificate-degree granting2        Predominantly associate's-degree granting3        Predominantly bachelor's-degree granting4        Entirely graduate-degree granting
    view_label: ~ school
    label: degrees_awarded.predominant

  - dimension: highdeg
    sql: integer(${TABLE}.highdeg)
    description: Highest degree awarded0        Non-degree-granting1        Certificate degree2        Associate degree3        Bachelor's degree4        Graduate degree
    view_label: ~ school
    label: degrees_awarded.highest

  - dimension: control
    sql: integer(${TABLE}.control)
    description: Control of institution
    view_label: ~ school
    label: ownership

  - dimension: st_fips
    sql: integer(${TABLE}.st_fips)
    description: FIPS code for state
    view_label: ~ school
    label: state_fips

  - dimension: region
    sql: integer(${TABLE}.region)
    description: Region (IPEDS)
    view_label: ~ school
    label: region_id

  - dimension: locale
    sql: integer(${TABLE}.locale)
    description: Locale of institution
    view_label: ~ school
    label: locale

  - dimension: locale2
    sql: integer(${TABLE}.locale2)
    description: Degree of urbanization of institution
    view_label: ~ school
    label: degree_urbanization

  - dimension: latitude
    sql: float(${TABLE}.latitude)
    description: Latitude
    view_label: ~ location
    label: lat

  - dimension: longitude
    sql: float(${TABLE}.longitude)
    description: Longitude
    view_label: ~ location
    label: lon

  - dimension: ccbasic
    sql: integer(${TABLE}.ccbasic)
    description: Carnegie Classification -- basic
    view_label: ~ school
    label: carnegie_basic

  - dimension: ccugprof
    sql: integer(${TABLE}.ccugprof)
    description: Carnegie Classification -- undergraduate profile
    view_label: ~ school
    label: carnegie_undergrad

  - dimension: ccsizset
    sql: integer(${TABLE}.ccsizset)
    description: Carnegie Classification -- size and setting
    view_label: ~ school
    label: carnegie_size_setting

  - dimension: hbcu
    sql: integer(${TABLE}.hbcu)
    description: Flag for Historically Black College and University
    view_label: ~ school
    label: minority_serving.historically_black

  - dimension: pbi
    sql: integer(${TABLE}.pbi)
    description: Flag for predominantly black institution
    view_label: ~ school
    label: minority_serving.predominantly_black

  - dimension: annhi
    sql: integer(${TABLE}.annhi)
    description: Flag for Alaska Native Native Hawaiian serving institution
    view_label: ~ school
    label: minority_serving.annh

  - dimension: tribal
    sql: integer(${TABLE}.tribal)
    description: Flag for tribal college and university
    view_label: ~ school
    label: minority_serving.tribal

  - dimension: aanapii
    sql: integer(${TABLE}.aanapii)
    description: Flag for Asian American Native American Pacific Islander-serving institution
    view_label: ~ school
    label: minority_serving.aanipi

  - dimension: hsi
    sql: integer(${TABLE}.hsi)
    description: Flag for Hispanic-serving institution
    view_label: ~ school
    label: minority_serving.hispanic

  - dimension: nanti
    sql: integer(${TABLE}.nanti)
    description: Flag for Native American non-tribal institution
    view_label: ~ school
    label: minority_serving.nant

  - dimension: menonly
    sql: integer(${TABLE}.menonly)
    description: Flag for men-only college
    view_label: ~ school
    label: men_only

  - dimension: womenonly
    sql: integer(${TABLE}.womenonly)
    description: Flag for women-only college
    view_label: ~ school
    label: women_only

  - dimension: relaffil
    sql: integer(${TABLE}.relaffil)
    description: Religous affiliation of the institution
    view_label: ~ school
    label: religious_affiliation

  - dimension: adm_rate
    sql: float(${TABLE}.adm_rate)
    description: Admission rate
    view_label: ~ admissions
    label: admission_rate.overall

  - dimension: adm_rate_all
    sql: float(${TABLE}.adm_rate_all)
    description: Admission rate for all campuses rolled up to the 6-digit OPE ID
    view_label: ~ admissions
    label: admission_rate.by_ope_id

  - dimension: satvr25
    sql: float(${TABLE}.satvr25)
    description: 25th percentile of SAT scores at the institution (critical reading)
    view_label: ~ admissions
    label: sat_scores.25th_percentile.critical_reading

  - dimension: satvr75
    sql: float(${TABLE}.satvr75)
    description: 75th percentile of SAT scores at the institution (critical reading)
    view_label: ~ admissions
    label: sat_scores.75th_percentile.critical_reading

  - dimension: satmt25
    sql: float(${TABLE}.satmt25)
    description: 25th percentile of SAT scores at the institution (math)
    view_label: ~ admissions
    label: sat_scores.25th_percentile.math

  - dimension: satmt75
    sql: float(${TABLE}.satmt75)
    description: 75th percentile of SAT scores at the institution (math)
    view_label: ~ admissions
    label: sat_scores.75th_percentile.math

  - dimension: satwr25
    sql: float(${TABLE}.satwr25)
    description: 25th percentile of SAT scores at the institution (writing)
    view_label: ~ admissions
    label: sat_scores.25th_percentile.writing

  - dimension: satwr75
    sql: float(${TABLE}.satwr75)
    description: 75th percentile of SAT scores at the institution (writing)
    view_label: ~ admissions
    label: sat_scores.75th_percentile.writing

  - dimension: satvrmid
    sql: float(${TABLE}.satvrmid)
    description: Midpoint of SAT scores at the institution (critical reading)
    view_label: ~ admissions
    label: sat_scores.midpoint.critical_reading

  - dimension: satmtmid
    sql: float(${TABLE}.satmtmid)
    description: Midpoint of SAT scores at the institution (math)
    view_label: ~ admissions
    label: sat_scores.midpoint.math

  - dimension: satwrmid
    sql: float(${TABLE}.satwrmid)
    description: Midpoint of SAT scores at the institution (writing)
    view_label: ~ admissions
    label: sat_scores.midpoint.writing

  - dimension: actcm25
    sql: float(${TABLE}.actcm25)
    description: 25th percentile of the ACT cumulative score
    view_label: ~ admissions
    label: act_scores.25th_percentile.cumulative

  - dimension: actcm75
    sql: float(${TABLE}.actcm75)
    description: 75th percentile of the ACT cumulative score
    view_label: ~ admissions
    label: act_scores.75th_percentile.cumulative

  - dimension: acten25
    sql: float(${TABLE}.acten25)
    description: 25th percentile of the ACT English score
    view_label: ~ admissions
    label: act_scores.25th_percentile.english

  - dimension: acten75
    sql: float(${TABLE}.acten75)
    description: 75th percentile of the ACT English score
    view_label: ~ admissions
    label: act_scores.75th_percentile.english

  - dimension: actmt25
    sql: float(${TABLE}.actmt25)
    description: 25th percentile of the ACT math score
    view_label: ~ admissions
    label: act_scores.25th_percentile.math

  - dimension: actmt75
    sql: float(${TABLE}.actmt75)
    description: 75th percentile of the ACT math score
    view_label: ~ admissions
    label: act_scores.75th_percentile.math

  - dimension: actwr25
    sql: float(${TABLE}.actwr25)
    description: 25th percentile of the ACT writing score
    view_label: ~ admissions
    label: act_scores.25th_percentile.writing

  - dimension: actwr75
    sql: float(${TABLE}.actwr75)
    description: 75th percentile of the ACT writing score
    view_label: ~ admissions
    label: act_scores.75th_percentile.writing

  - dimension: actcmmid
    sql: float(${TABLE}.actcmmid)
    description: Midpoint of the ACT cumulative score
    view_label: ~ admissions
    label: act_scores.midpoint.cumulative

  - dimension: actenmid
    sql: float(${TABLE}.actenmid)
    description: Midpoint of the ACT English score
    view_label: ~ admissions
    label: act_scores.midpoint.english

  - dimension: actmtmid
    sql: float(${TABLE}.actmtmid)
    description: Midpoint of the ACT math score
    view_label: ~ admissions
    label: act_scores.midpoint.math

  - dimension: actwrmid
    sql: float(${TABLE}.actwrmid)
    description: Midpoint of the ACT writing score
    view_label: ~ admissions
    label: act_scores.midpoint.writing

  - dimension: sat_avg
    sql: float(${TABLE}.sat_avg)
    description: Average SAT equivalent score of students admitted
    view_label: ~ admissions
    label: sat_scores.average.overall

  - dimension: sat_avg_all
    sql: float(${TABLE}.sat_avg_all)
    description: Average SAT equivalent score of students admitted for all campuses rolled up to the 6-digit OPE ID
    view_label: ~ admissions
    label: sat_scores.average.by_ope_id

  - dimension: pcip01
    sql: float(${TABLE}.pcip01)
    description: Percentage of degrees awarded in Agriculture, Agriculture Operations, And Related Sciences.
    view_label: ~ academics
    label: program_percentage.agriculture

  - dimension: pcip03
    sql: float(${TABLE}.pcip03)
    description: Percentage of degrees awarded in Natural Resources And Conservation.
    view_label: ~ academics
    label: program_percentage.resources

  - dimension: pcip04
    sql: float(${TABLE}.pcip04)
    description: Percentage of degrees awarded in Architecture And Related Services.
    view_label: ~ academics
    label: program_percentage.architecture

  - dimension: pcip05
    sql: float(${TABLE}.pcip05)
    description: Percentage of degrees awarded in Area, Ethnic, Cultural, Gender, And Group Studies.
    view_label: ~ academics
    label: program_percentage.ethnic_cultural_gender

  - dimension: pcip09
    sql: float(${TABLE}.pcip09)
    description: Percentage of degrees awarded in Communication, Journalism, And Related Programs.
    view_label: ~ academics
    label: program_percentage.communication

  - dimension: pcip10
    sql: float(${TABLE}.pcip10)
    description: Percentage of degrees awarded in Communications Technologies/Technicians And Support Services.
    view_label: ~ academics
    label: program_percentage.communications_technology

  - dimension: pcip11
    sql: float(${TABLE}.pcip11)
    description: Percentage of degrees awarded in Computer And Information Sciences And Support Services.
    view_label: ~ academics
    label: program_percentage.computer

  - dimension: pcip12
    sql: float(${TABLE}.pcip12)
    description: Percentage of degrees awarded in Personal And Culinary Services.
    view_label: ~ academics
    label: program_percentage.personal_culinary

  - dimension: pcip13
    sql: float(${TABLE}.pcip13)
    description: Percentage of degrees awarded in Education.
    view_label: ~ academics
    label: program_percentage.education

  - dimension: pcip14
    sql: float(${TABLE}.pcip14)
    description: Percentage of degrees awarded in Engineering.
    view_label: ~ academics
    label: program_percentage.engineering

  - dimension: pcip15
    sql: float(${TABLE}.pcip15)
    description: Percentage of degrees awarded in Engineering Technologies And Engineering-Related Fields.
    view_label: ~ academics
    label: program_percentage.engineering_technology

  - dimension: pcip16
    sql: float(${TABLE}.pcip16)
    description: Percentage of degrees awarded in Foreign Languages, Literatures, And Linguistics.
    view_label: ~ academics
    label: program_percentage.language

  - dimension: pcip19
    sql: float(${TABLE}.pcip19)
    description: Percentage of degrees awarded in Family And Consumer Sciences/Human Sciences.
    view_label: ~ academics
    label: program_percentage.family_consumer_science

  - dimension: pcip22
    sql: float(${TABLE}.pcip22)
    description: Percentage of degrees awarded in Legal Professions And Studies.
    view_label: ~ academics
    label: program_percentage.legal

  - dimension: pcip23
    sql: float(${TABLE}.pcip23)
    description: Percentage of degrees awarded in English Language And Literature/Letters.
    view_label: ~ academics
    label: program_percentage.english

  - dimension: pcip24
    sql: float(${TABLE}.pcip24)
    description: Percentage of degrees awarded in Liberal Arts And Sciences, General Studies And Humanities.
    view_label: ~ academics
    label: program_percentage.humanities

  - dimension: pcip25
    sql: float(${TABLE}.pcip25)
    description: Percentage of degrees awarded in Library Science.
    view_label: ~ academics
    label: program_percentage.library

  - dimension: pcip26
    sql: float(${TABLE}.pcip26)
    description: Percentage of degrees awarded in Biological And Biomedical Sciences.
    view_label: ~ academics
    label: program_percentage.biological

  - dimension: pcip27
    sql: float(${TABLE}.pcip27)
    description: Percentage of degrees awarded in Mathematics And Statistics.
    view_label: ~ academics
    label: program_percentage.mathematics

  - dimension: pcip29
    sql: float(${TABLE}.pcip29)
    description: Percentage of degrees awarded in Military Technologies And Applied Sciences.
    view_label: ~ academics
    label: program_percentage.military

  - dimension: pcip30
    sql: float(${TABLE}.pcip30)
    description: Percentage of degrees awarded in Multi/Interdisciplinary Studies.
    view_label: ~ academics
    label: program_percentage.multidiscipline

  - dimension: pcip31
    sql: float(${TABLE}.pcip31)
    description: Percentage of degrees awarded in Parks, Recreation, Leisure, And Fitness Studies.
    view_label: ~ academics
    label: program_percentage.parks_recreation_fitness

  - dimension: pcip38
    sql: float(${TABLE}.pcip38)
    description: Percentage of degrees awarded in Philosophy And Religious Studies.
    view_label: ~ academics
    label: program_percentage.philosophy_religious

  - dimension: pcip39
    sql: float(${TABLE}.pcip39)
    description: Percentage of degrees awarded in Theology And Religious Vocations.
    view_label: ~ academics
    label: program_percentage.theology_religious_vocation

  - dimension: pcip40
    sql: float(${TABLE}.pcip40)
    description: Percentage of degrees awarded in Physical Sciences.
    view_label: ~ academics
    label: program_percentage.physical_science

  - dimension: pcip41
    sql: float(${TABLE}.pcip41)
    description: Percentage of degrees awarded in Science Technologies/Technicians.
    view_label: ~ academics
    label: program_percentage.science_technology

  - dimension: pcip42
    sql: float(${TABLE}.pcip42)
    description: Percentage of degrees awarded in Psychology.
    view_label: ~ academics
    label: program_percentage.psychology

  - dimension: pcip43
    sql: float(${TABLE}.pcip43)
    description: Percentage of degrees awarded in Homeland Security, Law Enforcement, Firefighting And Related Protective Services.
    view_label: ~ academics
    label: program_percentage.security_law_enforcement

  - dimension: pcip44
    sql: float(${TABLE}.pcip44)
    description: Percentage of degrees awarded in Public Administration And Social Service Professions.
    view_label: ~ academics
    label: program_percentage.public_administration_social_service

  - dimension: pcip45
    sql: float(${TABLE}.pcip45)
    description: Percentage of degrees awarded in Social Sciences.
    view_label: ~ academics
    label: program_percentage.social_science

  - dimension: pcip46
    sql: float(${TABLE}.pcip46)
    description: Percentage of degrees awarded in Construction Trades.
    view_label: ~ academics
    label: program_percentage.construction

  - dimension: pcip47
    sql: float(${TABLE}.pcip47)
    description: Percentage of degrees awarded in Mechanic And Repair Technologies/Technicians.
    view_label: ~ academics
    label: program_percentage.mechanic_repair_technology

  - dimension: pcip48
    sql: float(${TABLE}.pcip48)
    description: Percentage of degrees awarded in Precision Production.
    view_label: ~ academics
    label: program_percentage.precision_production

  - dimension: pcip49
    sql: float(${TABLE}.pcip49)
    description: Percentage of degrees awarded in Transportation And Materials Moving.
    view_label: ~ academics
    label: program_percentage.transportation

  - dimension: pcip50
    sql: float(${TABLE}.pcip50)
    description: Percentage of degrees awarded in Visual And Performing Arts.
    view_label: ~ academics
    label: program_percentage.visual_performing

  - dimension: pcip51
    sql: float(${TABLE}.pcip51)
    description: Percentage of degrees awarded in Health Professions And Related Programs.
    view_label: ~ academics
    label: program_percentage.health

  - dimension: pcip52
    sql: float(${TABLE}.pcip52)
    description: Percentage of degrees awarded in Business, Management, Marketing, And Related Support Services.
    view_label: ~ academics
    label: program_percentage.business_marketing

  - dimension: pcip54
    sql: float(${TABLE}.pcip54)
    description: Percentage of degrees awarded in History.
    view_label: ~ academics
    label: program_percentage.history

  - dimension: cip01cert1
    sql: integer(${TABLE}.cip01cert1)
    description: Certificate of less than one academic year in Agriculture, Agriculture Operations, And Related Sciences.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.agriculture

  - dimension: cip01cert2
    sql: integer(${TABLE}.cip01cert2)
    description: Certificate of at least one but less than two academic years in Agriculture, Agriculture Operations, And Related Sciences.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.agriculture

  - dimension: cip01assoc
    sql: integer(${TABLE}.cip01assoc)
    description: Associate degree in Agriculture, Agriculture Operations, And Related Sciences.
    view_label: ~ academics
    label: program.assoc.agriculture

  - dimension: cip01cert4
    sql: integer(${TABLE}.cip01cert4)
    description: Awards of at least two but less than four academic years in Agriculture, Agriculture Operations, And Related Sciences.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.agriculture

  - dimension: cip01bachl
    sql: integer(${TABLE}.cip01bachl)
    description: Bachelor's degree in Agriculture, Agriculture Operations, And Related Sciences.
    view_label: ~ academics
    label: program.bachelors.agriculture

  - dimension: cip03cert1
    sql: integer(${TABLE}.cip03cert1)
    description: Certificate of less than one academic year in Natural Resources And Conservation.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.resources

  - dimension: cip03cert2
    sql: integer(${TABLE}.cip03cert2)
    description: Certificate of at least one but less than two academic years in Natural Resources And Conservation.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.resources

  - dimension: cip03assoc
    sql: integer(${TABLE}.cip03assoc)
    description: Associate degree in Natural Resources And Conservation.
    view_label: ~ academics
    label: program.assoc.resources

  - dimension: cip03cert4
    sql: integer(${TABLE}.cip03cert4)
    description: Award of at least two but less than four academic years in Natural Resources And Conservation.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.resources

  - dimension: cip03bachl
    sql: integer(${TABLE}.cip03bachl)
    description: Bachelor's degree in Natural Resources And Conservation.
    view_label: ~ academics
    label: program.bachelors.resources

  - dimension: cip04cert1
    sql: integer(${TABLE}.cip04cert1)
    description: Certificate of less than one academic year in Architecture And Related Services.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.architecture

  - dimension: cip04cert2
    sql: integer(${TABLE}.cip04cert2)
    description: Certificate of at least one but less than two academic years in Architecture And Related Services.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.architecture

  - dimension: cip04assoc
    sql: integer(${TABLE}.cip04assoc)
    description: Associate degree in Architecture And Related Services.
    view_label: ~ academics
    label: program.assoc.architecture

  - dimension: cip04cert4
    sql: integer(${TABLE}.cip04cert4)
    description: Award of more than two but less than four academic years in Architecture And Related Services.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.architecture

  - dimension: cip04bachl
    sql: integer(${TABLE}.cip04bachl)
    description: Bachelor's degree in Architecture And Related Services.
    view_label: ~ academics
    label: program.bachelors.architecture

  - dimension: cip05cert1
    sql: integer(${TABLE}.cip05cert1)
    description: Certificate of less than one academic year in Area, Ethnic, Cultural, Gender, And Group Studies.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.ethnic_cultural_gender

  - dimension: cip05cert2
    sql: integer(${TABLE}.cip05cert2)
    description: Certificate of at least one but less than two academic years in Area, Ethnic, Cultural, Gender, And Group Studies.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.ethnic_cultural_gender

  - dimension: cip05assoc
    sql: integer(${TABLE}.cip05assoc)
    description: Associate degree in Area, Ethnic, Cultural, Gender, And Group Studies.
    view_label: ~ academics
    label: program.assoc.ethnic_cultural_gender

  - dimension: cip05cert4
    sql: integer(${TABLE}.cip05cert4)
    description: Award of more than two but less than four academic years in Area, Ethnic, Cultural, Gender, And Group Studies.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.ethnic_cultural_gender

  - dimension: cip05bachl
    sql: integer(${TABLE}.cip05bachl)
    description: Bachelor's degree in Area, Ethnic, Cultural, Gender, And Group Studies.
    view_label: ~ academics
    label: program.bachelors.ethnic_cultural_gender

  - dimension: cip09cert1
    sql: integer(${TABLE}.cip09cert1)
    description: Certificate of less than one academic year in Communication, Journalism, And Related Programs.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.communication

  - dimension: cip09cert2
    sql: integer(${TABLE}.cip09cert2)
    description: Certificate of at least one but less than two academic years in Communication, Journalism, And Related Programs.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.communication

  - dimension: cip09assoc
    sql: integer(${TABLE}.cip09assoc)
    description: Associate degree in Communication, Journalism, And Related Programs.
    view_label: ~ academics
    label: program.assoc.communication

  - dimension: cip09cert4
    sql: integer(${TABLE}.cip09cert4)
    description: Award of more than two but less than four academic years in Communication, Journalism, And Related Programs.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.communication

  - dimension: cip09bachl
    sql: integer(${TABLE}.cip09bachl)
    description: Bachelor's degree in Communication, Journalism, And Related Programs.
    view_label: ~ academics
    label: program.bachelors.communication

  - dimension: cip10cert1
    sql: integer(${TABLE}.cip10cert1)
    description: Certificate of less than one academic year in Communications Technologies/Technicians And Support Services.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.communications_technology

  - dimension: cip10cert2
    sql: integer(${TABLE}.cip10cert2)
    description: Certificate of at least one but less than two academic years in Communications Technologies/Technicians And Support Services.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.communications_technology

  - dimension: cip10assoc
    sql: integer(${TABLE}.cip10assoc)
    description: Associate degree in Communications Technologies/Technicians And Support Services.
    view_label: ~ academics
    label: program.assoc.communications_technology

  - dimension: cip10cert4
    sql: integer(${TABLE}.cip10cert4)
    description: Award of more than two but less than four academic years in Communications Technologies/Technicians And Support Services.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.communications_technology

  - dimension: cip10bachl
    sql: integer(${TABLE}.cip10bachl)
    description: Bachelor's degree in Communications Technologies/Technicians And Support Services.
    view_label: ~ academics
    label: program.bachelors.communications_technology

  - dimension: cip11cert1
    sql: integer(${TABLE}.cip11cert1)
    description: Certificate of less than one academic year in Computer And Information Sciences And Support Services.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.computer

  - dimension: cip11cert2
    sql: integer(${TABLE}.cip11cert2)
    description: Certificate of at least one but less than two academic years in Computer And Information Sciences And Support Services.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.computer

  - dimension: cip11assoc
    sql: integer(${TABLE}.cip11assoc)
    description: Associate degree in Computer And Information Sciences And Support Services.
    view_label: ~ academics
    label: program.assoc.computer

  - dimension: cip11cert4
    sql: integer(${TABLE}.cip11cert4)
    description: Award of more than two but less than four academic years in Computer And Information Sciences And Support Services.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.computer

  - dimension: cip11bachl
    sql: integer(${TABLE}.cip11bachl)
    description: Bachelor's degree in Computer And Information Sciences And Support Services.
    view_label: ~ academics
    label: program.bachelors.computer

  - dimension: cip12cert1
    sql: integer(${TABLE}.cip12cert1)
    description: Certificate of less than one academic year in Personal And Culinary Services.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.personal_culinary

  - dimension: cip12cert2
    sql: integer(${TABLE}.cip12cert2)
    description: Certificate of at least one but less than two academic years in Personal And Culinary Services.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.personal_culinary

  - dimension: cip12assoc
    sql: integer(${TABLE}.cip12assoc)
    description: Associate degree in Personal And Culinary Services.
    view_label: ~ academics
    label: program.assoc.personal_culinary

  - dimension: cip12cert4
    sql: integer(${TABLE}.cip12cert4)
    description: Award of more than two but less than four academic years in Personal And Culinary Services.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.personal_culinary

  - dimension: cip12bachl
    sql: integer(${TABLE}.cip12bachl)
    description: Bachelor's degree in Personal And Culinary Services.
    view_label: ~ academics
    label: program.bachelors.personal_culinary

  - dimension: cip13cert1
    sql: integer(${TABLE}.cip13cert1)
    description: Certificate of less than one academic year in Education.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.education

  - dimension: cip13cert2
    sql: integer(${TABLE}.cip13cert2)
    description: Certificate of at least one but less than two academic years in Education.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.education

  - dimension: cip13assoc
    sql: integer(${TABLE}.cip13assoc)
    description: Associate degree in Education.
    view_label: ~ academics
    label: program.assoc.education

  - dimension: cip13cert4
    sql: integer(${TABLE}.cip13cert4)
    description: Award of more than two but less than four academic years in Education.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.education

  - dimension: cip13bachl
    sql: integer(${TABLE}.cip13bachl)
    description: Bachelor's degree in Education.
    view_label: ~ academics
    label: program.bachelors.education

  - dimension: cip14cert1
    sql: integer(${TABLE}.cip14cert1)
    description: Certificate of less than one academic year in Engineering.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.engineering

  - dimension: cip14cert2
    sql: integer(${TABLE}.cip14cert2)
    description: Certificate of at least one but less than two academic years in Engineering.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.engineering

  - dimension: cip14assoc
    sql: integer(${TABLE}.cip14assoc)
    description: Associate degree in Engineering.
    view_label: ~ academics
    label: program.assoc.engineering

  - dimension: cip14cert4
    sql: integer(${TABLE}.cip14cert4)
    description: Award of more than two but less than four academic years in Engineering.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.engineering

  - dimension: cip14bachl
    sql: integer(${TABLE}.cip14bachl)
    description: Bachelor's degree in Engineering.
    view_label: ~ academics
    label: program.bachelors.engineering

  - dimension: cip15cert1
    sql: integer(${TABLE}.cip15cert1)
    description: Certificate of less than one academic year in Engineering Technologies And Engineering-Related Fields.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.engineering_technology

  - dimension: cip15cert2
    sql: integer(${TABLE}.cip15cert2)
    description: Certificate of at least one but less than two academic years in Engineering Technologies And Engineering-Related Fields.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.engineering_technology

  - dimension: cip15assoc
    sql: integer(${TABLE}.cip15assoc)
    description: Associate degree in Engineering Technologies And Engineering-Related Fields.
    view_label: ~ academics
    label: program.assoc.engineering_technology

  - dimension: cip15cert4
    sql: integer(${TABLE}.cip15cert4)
    description: Award of more than two but less than four academic years in Engineering Technologies And Engineering-Related Fields.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.engineering_technology

  - dimension: cip15bachl
    sql: integer(${TABLE}.cip15bachl)
    description: Bachelor's degree in Engineering Technologies And Engineering-Related Fields.
    view_label: ~ academics
    label: program.bachelors.engineering_technology

  - dimension: cip16cert1
    sql: integer(${TABLE}.cip16cert1)
    description: Certificate of less than one academic year in Foreign Languages, Literatures, And Linguistics.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.language

  - dimension: cip16cert2
    sql: integer(${TABLE}.cip16cert2)
    description: Certificate of at least one but less than two academic years in Foreign Languages, Literatures, And Linguistics.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.language

  - dimension: cip16assoc
    sql: integer(${TABLE}.cip16assoc)
    description: Associate degree in Foreign Languages, Literatures, And Linguistics.
    view_label: ~ academics
    label: program.assoc.language

  - dimension: cip16cert4
    sql: integer(${TABLE}.cip16cert4)
    description: Award of more than two but less than four academic years in Foreign Languages, Literatures, And Linguistics.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.language

  - dimension: cip16bachl
    sql: integer(${TABLE}.cip16bachl)
    description: Bachelor's degree in Foreign Languages, Literatures, And Linguistics.
    view_label: ~ academics
    label: program.bachelors.language

  - dimension: cip19cert1
    sql: integer(${TABLE}.cip19cert1)
    description: Certificate of less than one academic year in Family And Consumer Sciences/Human Sciences.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.family_consumer_science

  - dimension: cip19cert2
    sql: integer(${TABLE}.cip19cert2)
    description: Certificate of at least one but less than two academic years in Family And Consumer Sciences/Human Sciences.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.family_consumer_science

  - dimension: cip19assoc
    sql: integer(${TABLE}.cip19assoc)
    description: Associate degree in Family And Consumer Sciences/Human Sciences.
    view_label: ~ academics
    label: program.assoc.family_consumer_science

  - dimension: cip19cert4
    sql: integer(${TABLE}.cip19cert4)
    description: Award of more than two but less than four academic years in Family And Consumer Sciences/Human Sciences.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.family_consumer_science

  - dimension: cip19bachl
    sql: integer(${TABLE}.cip19bachl)
    description: Bachelor's degree in Family And Consumer Sciences/Human Sciences.
    view_label: ~ academics
    label: program.bachelors.family_consumer_science

  - dimension: cip22cert1
    sql: integer(${TABLE}.cip22cert1)
    description: Certificate of less than one academic year in Legal Professions And Studies.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.legal

  - dimension: cip22cert2
    sql: integer(${TABLE}.cip22cert2)
    description: Certificate of at least one but less than two academic years in Legal Professions And Studies.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.legal

  - dimension: cip22assoc
    sql: integer(${TABLE}.cip22assoc)
    description: Associate degree in Legal Professions And Studies.
    view_label: ~ academics
    label: program.assoc.legal

  - dimension: cip22cert4
    sql: integer(${TABLE}.cip22cert4)
    description: Award of more than two but less than four academic years in Legal Professions And Studies.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.legal

  - dimension: cip22bachl
    sql: integer(${TABLE}.cip22bachl)
    description: Bachelor's degree in Legal Professions And Studies.
    view_label: ~ academics
    label: program.bachelors.legal

  - dimension: cip23cert1
    sql: integer(${TABLE}.cip23cert1)
    description: Certificate of less than one academic year in English Language And Literature/Letters.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.english

  - dimension: cip23cert2
    sql: integer(${TABLE}.cip23cert2)
    description: Certificate of at least one but less than two academic years in English Language And Literature/Letters.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.english

  - dimension: cip23assoc
    sql: integer(${TABLE}.cip23assoc)
    description: Associate degree in English Language And Literature/Letters.
    view_label: ~ academics
    label: program.assoc.english

  - dimension: cip23cert4
    sql: integer(${TABLE}.cip23cert4)
    description: Award of more than two but less than four academic years in English Language And Literature/Letters.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.english

  - dimension: cip23bachl
    sql: integer(${TABLE}.cip23bachl)
    description: Bachelor's degree in English Language And Literature/Letters.
    view_label: ~ academics
    label: program.bachelors.english

  - dimension: cip24cert1
    sql: integer(${TABLE}.cip24cert1)
    description: Certificate of less than one academic year in Liberal Arts And Sciences, General Studies And Humanities.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.humanities

  - dimension: cip24cert2
    sql: integer(${TABLE}.cip24cert2)
    description: Certificate of at least one but less than two academic years in Liberal Arts And Sciences, General Studies And Humanities.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.humanities

  - dimension: cip24assoc
    sql: integer(${TABLE}.cip24assoc)
    description: Associate degree in Liberal Arts And Sciences, General Studies And Humanities.
    view_label: ~ academics
    label: program.assoc.humanities

  - dimension: cip24cert4
    sql: integer(${TABLE}.cip24cert4)
    description: Award of more than two but less than four academic years in Liberal Arts And Sciences, General Studies And Humanities.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.humanities

  - dimension: cip24bachl
    sql: integer(${TABLE}.cip24bachl)
    description: Bachelor's degree in Liberal Arts And Sciences, General Studies And Humanities.
    view_label: ~ academics
    label: program.bachelors.humanities

  - dimension: cip25cert1
    sql: integer(${TABLE}.cip25cert1)
    description: Certificate of less than one academic year in Library Science.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.library

  - dimension: cip25cert2
    sql: integer(${TABLE}.cip25cert2)
    description: Certificate of at least one but less than two academic years in Library Science.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.library

  - dimension: cip25assoc
    sql: integer(${TABLE}.cip25assoc)
    description: Associate degree in Library Science.
    view_label: ~ academics
    label: program.assoc.library

  - dimension: cip25cert4
    sql: integer(${TABLE}.cip25cert4)
    description: Award of more than two but less than four academic years in Library Science.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.library

  - dimension: cip25bachl
    sql: integer(${TABLE}.cip25bachl)
    description: Bachelor's degree in Library Science.
    view_label: ~ academics
    label: program.bachelors.library

  - dimension: cip26cert1
    sql: integer(${TABLE}.cip26cert1)
    description: Certificate of less than one academic year in Biological And Biomedical Sciences.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.biological

  - dimension: cip26cert2
    sql: integer(${TABLE}.cip26cert2)
    description: Certificate of at least one but less than two academic years in Biological And Biomedical Sciences.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.biological

  - dimension: cip26assoc
    sql: integer(${TABLE}.cip26assoc)
    description: Associate degree in Biological And Biomedical Sciences.
    view_label: ~ academics
    label: program.assoc.biological

  - dimension: cip26cert4
    sql: integer(${TABLE}.cip26cert4)
    description: Award of more than two but less than four academic years in Biological And Biomedical Sciences.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.biological

  - dimension: cip26bachl
    sql: integer(${TABLE}.cip26bachl)
    description: Bachelor's degree in Biological And Biomedical Sciences.
    view_label: ~ academics
    label: program.bachelors.biological

  - dimension: cip27cert1
    sql: integer(${TABLE}.cip27cert1)
    description: Certificate of less than one academic year in Mathematics And Statistics.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.mathematics

  - dimension: cip27cert2
    sql: integer(${TABLE}.cip27cert2)
    description: Certificate of at least one but less than two academic years in Mathematics And Statistics.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.mathematics

  - dimension: cip27assoc
    sql: integer(${TABLE}.cip27assoc)
    description: Associate degree in Mathematics And Statistics.
    view_label: ~ academics
    label: program.assoc.mathematics

  - dimension: cip27cert4
    sql: integer(${TABLE}.cip27cert4)
    description: Award of more than two but less than four academic years in Mathematics And Statistics.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.mathematics

  - dimension: cip27bachl
    sql: integer(${TABLE}.cip27bachl)
    description: Bachelor's degree in Mathematics And Statistics.
    view_label: ~ academics
    label: program.bachelors.mathematics

  - dimension: cip29cert1
    sql: integer(${TABLE}.cip29cert1)
    description: Certificate of less than one academic year in Military Technologies And Applied Sciences.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.military

  - dimension: cip29cert2
    sql: integer(${TABLE}.cip29cert2)
    description: Certificate of at least one but less than two academic years in Military Technologies And Applied Sciences.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.military

  - dimension: cip29assoc
    sql: integer(${TABLE}.cip29assoc)
    description: Associate degree in Military Technologies And Applied Sciences.
    view_label: ~ academics
    label: program.assoc.military

  - dimension: cip29cert4
    sql: integer(${TABLE}.cip29cert4)
    description: Award of more than two but less than four academic years in Military Technologies And Applied Sciences.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.military

  - dimension: cip29bachl
    sql: integer(${TABLE}.cip29bachl)
    description: Bachelor's degree in Military Technologies And Applied Sciences.
    view_label: ~ academics
    label: program.bachelors.military

  - dimension: cip30cert1
    sql: integer(${TABLE}.cip30cert1)
    description: Certificate of less than one academic year in Multi/Interdisciplinary Studies.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.multidiscipline

  - dimension: cip30cert2
    sql: integer(${TABLE}.cip30cert2)
    description: Certificate of at least one but less than two academic years in Multi/Interdisciplinary Studies.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.multidiscipline

  - dimension: cip30assoc
    sql: integer(${TABLE}.cip30assoc)
    description: Associate degree in Multi/Interdisciplinary Studies.
    view_label: ~ academics
    label: program.assoc.multidiscipline

  - dimension: cip30cert4
    sql: integer(${TABLE}.cip30cert4)
    description: Award of more than two but less than four academic years in Multi/Interdisciplinary Studies.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.multidiscipline

  - dimension: cip30bachl
    sql: integer(${TABLE}.cip30bachl)
    description: Bachelor's degree in Multi/Interdisciplinary Studies.
    view_label: ~ academics
    label: program.bachelors.multidiscipline

  - dimension: cip31cert1
    sql: integer(${TABLE}.cip31cert1)
    description: Certificate of less than one academic year in Parks, Recreation, Leisure, And Fitness Studies.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.parks_recreation_fitness

  - dimension: cip31cert2
    sql: integer(${TABLE}.cip31cert2)
    description: Certificate of at least one but less than two academic years in Parks, Recreation, Leisure, And Fitness Studies.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.parks_recreation_fitness

  - dimension: cip31assoc
    sql: integer(${TABLE}.cip31assoc)
    description: Associate degree in Parks, Recreation, Leisure, And Fitness Studies.
    view_label: ~ academics
    label: program.assoc.parks_recreation_fitness

  - dimension: cip31cert4
    sql: integer(${TABLE}.cip31cert4)
    description: Award of more than two but less than four academic years in Parks, Recreation, Leisure, And Fitness Studies.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.parks_recreation_fitness

  - dimension: cip31bachl
    sql: integer(${TABLE}.cip31bachl)
    description: Bachelor's degree in Parks, Recreation, Leisure, And Fitness Studies.
    view_label: ~ academics
    label: program.bachelors.parks_recreation_fitness

  - dimension: cip38cert1
    sql: integer(${TABLE}.cip38cert1)
    description: Certificate of less than one academic year in Philosophy And Religious Studies.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.philosophy_religious

  - dimension: cip38cert2
    sql: integer(${TABLE}.cip38cert2)
    description: Certificate of at least one but less than two academic years in Philosophy And Religious Studies.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.philosophy_religious

  - dimension: cip38assoc
    sql: integer(${TABLE}.cip38assoc)
    description: Associate degree in Philosophy And Religious Studies.
    view_label: ~ academics
    label: program.assoc.philosophy_religious

  - dimension: cip38cert4
    sql: integer(${TABLE}.cip38cert4)
    description: Award of more than two but less than four academic years in Philosophy And Religious Studies.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.philosophy_religious

  - dimension: cip38bachl
    sql: integer(${TABLE}.cip38bachl)
    description: Bachelor's degree in Philosophy And Religious Studies.
    view_label: ~ academics
    label: program.bachelors.philosophy_religious

  - dimension: cip39cert1
    sql: integer(${TABLE}.cip39cert1)
    description: Certificate of less than one academic year in Theology And Religious Vocations.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.theology_religious_vocation

  - dimension: cip39cert2
    sql: integer(${TABLE}.cip39cert2)
    description: Certificate of at least one but less than two academic years in Theology And Religious Vocations.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.theology_religious_vocation

  - dimension: cip39assoc
    sql: integer(${TABLE}.cip39assoc)
    description: Associate degree in Theology And Religious Vocations.
    view_label: ~ academics
    label: program.assoc.theology_religious_vocation

  - dimension: cip39cert4
    sql: integer(${TABLE}.cip39cert4)
    description: Award of more than two but less than four academic years in Theology And Religious Vocations.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.theology_religious_vocation

  - dimension: cip39bachl
    sql: integer(${TABLE}.cip39bachl)
    description: Bachelor's degree in Theology And Religious Vocations.
    view_label: ~ academics
    label: program.bachelors.theology_religious_vocation

  - dimension: cip40cert1
    sql: integer(${TABLE}.cip40cert1)
    description: Certificate of less than one academic year in Physical Sciences.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.physical_science

  - dimension: cip40cert2
    sql: integer(${TABLE}.cip40cert2)
    description: Certificate of at least one but less than two academic years in Physical Sciences.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.physical_science

  - dimension: cip40assoc
    sql: integer(${TABLE}.cip40assoc)
    description: Associate degree in Physical Sciences.
    view_label: ~ academics
    label: program.assoc.physical_science

  - dimension: cip40cert4
    sql: integer(${TABLE}.cip40cert4)
    description: Award of more than two but less than four academic years in Physical Sciences.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.physical_science

  - dimension: cip40bachl
    sql: integer(${TABLE}.cip40bachl)
    description: Bachelor's degree in Physical Sciences.
    view_label: ~ academics
    label: program.bachelors.physical_science

  - dimension: cip41cert1
    sql: integer(${TABLE}.cip41cert1)
    description: Certificate of less than one academic year in Science Technologies/Technicians.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.science_technology

  - dimension: cip41cert2
    sql: integer(${TABLE}.cip41cert2)
    description: Certificate of at least one but less than two academic years in Science Technologies/Technicians.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.science_technology

  - dimension: cip41assoc
    sql: integer(${TABLE}.cip41assoc)
    description: Associate degree in Science Technologies/Technicians.
    view_label: ~ academics
    label: program.assoc.science_technology

  - dimension: cip41cert4
    sql: integer(${TABLE}.cip41cert4)
    description: Award of more than two but less than four academic years in Science Technologies/Technicians.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.science_technology

  - dimension: cip41bachl
    sql: integer(${TABLE}.cip41bachl)
    description: Bachelor's degree in Science Technologies/Technicians.
    view_label: ~ academics
    label: program.bachelors.science_technology

  - dimension: cip42cert1
    sql: integer(${TABLE}.cip42cert1)
    description: Certificate of less than one academic year in Psychology.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.psychology

  - dimension: cip42cert2
    sql: integer(${TABLE}.cip42cert2)
    description: Certificate of at least one but less than two academic years in Psychology.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.psychology

  - dimension: cip42assoc
    sql: integer(${TABLE}.cip42assoc)
    description: Associate degree in Psychology.
    view_label: ~ academics
    label: program.assoc.psychology

  - dimension: cip42cert4
    sql: integer(${TABLE}.cip42cert4)
    description: Award of more than two but less than four academic years in Psychology.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.psychology

  - dimension: cip42bachl
    sql: integer(${TABLE}.cip42bachl)
    description: Bachelor's degree in Psychology.
    view_label: ~ academics
    label: program.bachelors.psychology

  - dimension: cip43cert1
    sql: integer(${TABLE}.cip43cert1)
    description: Certificate of less than one academic year in Homeland Security, Law Enforcement, Firefighting And Related Protective Services.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.security_law_enforcement

  - dimension: cip43cert2
    sql: integer(${TABLE}.cip43cert2)
    description: Certificate of at least one but less than two academic years in Homeland Security, Law Enforcement, Firefighting And Related Protective Services.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.security_law_enforcement

  - dimension: cip43assoc
    sql: integer(${TABLE}.cip43assoc)
    description: Associate degree in Homeland Security, Law Enforcement, Firefighting And Related Protective Services.
    view_label: ~ academics
    label: program.assoc.security_law_enforcement

  - dimension: cip43cert4
    sql: integer(${TABLE}.cip43cert4)
    description: Award of more than two but less than four academic years in Homeland Security, Law Enforcement, Firefighting And Related Protective Services.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.security_law_enforcement

  - dimension: cip43bachl
    sql: integer(${TABLE}.cip43bachl)
    description: Bachelor's degree in Homeland Security, Law Enforcement, Firefighting And Related Protective Services.
    view_label: ~ academics
    label: program.bachelors.security_law_enforcement

  - dimension: cip44cert1
    sql: integer(${TABLE}.cip44cert1)
    description: Certificate of less than one academic year in Public Administration And Social Service Professions.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.public_administration_social_service

  - dimension: cip44cert2
    sql: integer(${TABLE}.cip44cert2)
    description: Certificate of at least one but less than two academic years in Public Administration And Social Service Professions.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.public_administration_social_service

  - dimension: cip44assoc
    sql: integer(${TABLE}.cip44assoc)
    description: Associate degree in Public Administration And Social Service Professions.
    view_label: ~ academics
    label: program.assoc.public_administration_social_service

  - dimension: cip44cert4
    sql: integer(${TABLE}.cip44cert4)
    description: Award of more than two but less than four academic years in Public Administration And Social Service Professions.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.public_administration_social_service

  - dimension: cip44bachl
    sql: integer(${TABLE}.cip44bachl)
    description: Bachelor's degree in Public Administration And Social Service Professions.
    view_label: ~ academics
    label: program.bachelors.public_administration_social_service

  - dimension: cip45cert1
    sql: integer(${TABLE}.cip45cert1)
    description: Certificate of less than one academic year in Social Sciences.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.social_science

  - dimension: cip45cert2
    sql: integer(${TABLE}.cip45cert2)
    description: Certificate of at least one but less than two academic years in Social Sciences.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.social_science

  - dimension: cip45assoc
    sql: integer(${TABLE}.cip45assoc)
    description: Associate degree in Social Sciences.
    view_label: ~ academics
    label: program.assoc.social_science

  - dimension: cip45cert4
    sql: integer(${TABLE}.cip45cert4)
    description: Award of more than two but less than four academic years in Social Sciences.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.social_science

  - dimension: cip45bachl
    sql: integer(${TABLE}.cip45bachl)
    description: Bachelor's degree in Social Sciences.
    view_label: ~ academics
    label: program.bachelors.social_science

  - dimension: cip46cert1
    sql: integer(${TABLE}.cip46cert1)
    description: Certificate of less than one academic year in Construction Trades.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.construction

  - dimension: cip46cert2
    sql: integer(${TABLE}.cip46cert2)
    description: Certificate of at least one but less than two academic years in Construction Trades.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.construction

  - dimension: cip46assoc
    sql: integer(${TABLE}.cip46assoc)
    description: Associate degree in Construction Trades.
    view_label: ~ academics
    label: program.assoc.construction

  - dimension: cip46cert4
    sql: integer(${TABLE}.cip46cert4)
    description: Award of more than two but less than four academic years in Construction Trades.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.construction

  - dimension: cip46bachl
    sql: integer(${TABLE}.cip46bachl)
    description: Bachelor's degree in Construction Trades.
    view_label: ~ academics
    label: program.bachelors.construction

  - dimension: cip47cert1
    sql: integer(${TABLE}.cip47cert1)
    description: Certificate of less than one academic year in Mechanic And Repair Technologies/Technicians.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.mechanic_repair_technology

  - dimension: cip47cert2
    sql: integer(${TABLE}.cip47cert2)
    description: Certificate of at least one but less than two academic years in Mechanic And Repair Technologies/Technicians.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.mechanic_repair_technology

  - dimension: cip47assoc
    sql: integer(${TABLE}.cip47assoc)
    description: Associate degree in Mechanic And Repair Technologies/Technicians.
    view_label: ~ academics
    label: program.assoc.mechanic_repair_technology

  - dimension: cip47cert4
    sql: integer(${TABLE}.cip47cert4)
    description: Award of more than two but less than four academic years in Mechanic And Repair Technologies/Technicians.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.mechanic_repair_technology

  - dimension: cip47bachl
    sql: integer(${TABLE}.cip47bachl)
    description: Bachelor's degree in Mechanic And Repair Technologies/Technicians.
    view_label: ~ academics
    label: program.bachelors.mechanic_repair_technology

  - dimension: cip48cert1
    sql: integer(${TABLE}.cip48cert1)
    description: Certificate of less than one academic year in Precision Production.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.precision_production

  - dimension: cip48cert2
    sql: integer(${TABLE}.cip48cert2)
    description: Certificate of at least one but less than two academic years in Precision Production.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.precision_production

  - dimension: cip48assoc
    sql: integer(${TABLE}.cip48assoc)
    description: Associate degree in Precision Production.
    view_label: ~ academics
    label: program.assoc.precision_production

  - dimension: cip48cert4
    sql: integer(${TABLE}.cip48cert4)
    description: Award of more than two but less than four academic years in Precision Production.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.precision_production

  - dimension: cip48bachl
    sql: integer(${TABLE}.cip48bachl)
    description: Bachelor's degree in Precision Production.
    view_label: ~ academics
    label: program.bachelors.precision_production

  - dimension: cip49cert1
    sql: integer(${TABLE}.cip49cert1)
    description: Certificate of less than one academic year in Transportation And Materials Moving.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.transportation

  - dimension: cip49cert2
    sql: integer(${TABLE}.cip49cert2)
    description: Certificate of at least one but less than two academic years in Transportation And Materials Moving.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.transportation

  - dimension: cip49assoc
    sql: integer(${TABLE}.cip49assoc)
    description: Associate degree in Transportation And Materials Moving.
    view_label: ~ academics
    label: program.assoc.transportation

  - dimension: cip49cert4
    sql: integer(${TABLE}.cip49cert4)
    description: Award of more than two but less than four academic years in Transportation And Materials Moving.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.transportation

  - dimension: cip49bachl
    sql: integer(${TABLE}.cip49bachl)
    description: Bachelor's degree in Transportation And Materials Moving.
    view_label: ~ academics
    label: program.bachelors.transportation

  - dimension: cip50cert1
    sql: integer(${TABLE}.cip50cert1)
    description: Certificate of less than one academic year in Visual And Performing Arts.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.visual_performing

  - dimension: cip50cert2
    sql: integer(${TABLE}.cip50cert2)
    description: Certificate of at least one but less than two academic years in Visual And Performing Arts.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.visual_performing

  - dimension: cip50assoc
    sql: integer(${TABLE}.cip50assoc)
    description: Associate degree in Visual And Performing Arts.
    view_label: ~ academics
    label: program.assoc.visual_performing

  - dimension: cip50cert4
    sql: integer(${TABLE}.cip50cert4)
    description: Award of more than two but less than four academic years in Visual And Performing Arts.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.visual_performing

  - dimension: cip50bachl
    sql: integer(${TABLE}.cip50bachl)
    description: Bachelor's degree in Visual And Performing Arts.
    view_label: ~ academics
    label: program.bachelors.visual_performing

  - dimension: cip51cert1
    sql: integer(${TABLE}.cip51cert1)
    description: Certificate of less than one academic year in Health Professions And Related Programs.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.health

  - dimension: cip51cert2
    sql: integer(${TABLE}.cip51cert2)
    description: Certificate of at least one but less than two academic years in Health Professions And Related Programs.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.health

  - dimension: cip51assoc
    sql: integer(${TABLE}.cip51assoc)
    description: Associate degree in Health Professions And Related Programs.
    view_label: ~ academics
    label: program.assoc.health

  - dimension: cip51cert4
    sql: integer(${TABLE}.cip51cert4)
    description: Award of more than two but less than four academic years in Health Professions And Related Programs.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.health

  - dimension: cip51bachl
    sql: integer(${TABLE}.cip51bachl)
    description: Bachelor's degree in Health Professions And Related Programs.
    view_label: ~ academics
    label: program.bachelors.health

  - dimension: cip52cert1
    sql: integer(${TABLE}.cip52cert1)
    description: Certificate of less than one academic year in Business, Management, Marketing, And Related Support Services.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.business_marketing

  - dimension: cip52cert2
    sql: integer(${TABLE}.cip52cert2)
    description: Certificate of at least one but less than two academic years in Business, Management, Marketing, And Related Support Services.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.business_marketing

  - dimension: cip52assoc
    sql: integer(${TABLE}.cip52assoc)
    description: Associate degree in Business, Management, Marketing, And Related Support Services.
    view_label: ~ academics
    label: program.assoc.business_marketing

  - dimension: cip52cert4
    sql: integer(${TABLE}.cip52cert4)
    description: Award of more than two but less than four academic years in Business, Management, Marketing, And Related Support Services.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.business_marketing

  - dimension: cip52bachl
    sql: integer(${TABLE}.cip52bachl)
    description: Bachelor's degree in Business, Management, Marketing, And Related Support Services.
    view_label: ~ academics
    label: program.bachelors.business_marketing

  - dimension: cip54cert1
    sql: integer(${TABLE}.cip54cert1)
    description: Certificate of less than one academic year in History.
    view_label: ~ academics
    label: program.certificate_lt_1_yr.history

  - dimension: cip54cert2
    sql: integer(${TABLE}.cip54cert2)
    description: Certificate of at least one but less than two academic years in History.
    view_label: ~ academics
    label: program.certificate_lt_2_yr.history

  - dimension: cip54assoc
    sql: integer(${TABLE}.cip54assoc)
    description: Associate degree in History.
    view_label: ~ academics
    label: program.assoc.history

  - dimension: cip54cert4
    sql: integer(${TABLE}.cip54cert4)
    description: Award of more than two but less than four academic years in History.
    view_label: ~ academics
    label: program.certificate_lt_4_yr.history

  - dimension: cip54bachl
    sql: integer(${TABLE}.cip54bachl)
    description: Bachelor's degree in History.
    view_label: ~ academics
    label: program.bachelors.history

  - dimension: distanceonly
    sql: integer(${TABLE}.distanceonly)
    description: Flag for distance-education-only education
    view_label: ~ school
    label: online_only

  - dimension: ugds
    sql: integer(${TABLE}.ugds)
    description: Enrollment of undergraduate degree-seeking students
    view_label: ~ student
    label: size

  - dimension: ug
    sql: integer(${TABLE}.ug)
    description: Enrollment of all undergraduate students
    view_label: ~ student
    label: enrollment.all

  - dimension: ugds_white
    sql: float(${TABLE}.ugds_white)
    description: Total share of enrollment of undergraduate degree-seeking students who are white
    view_label: ~ student
    label: demographics.race_ethnicity.white

  - dimension: ugds_black
    sql: float(${TABLE}.ugds_black)
    description: Total share of enrollment of undergraduate degree-seeking students who are black
    view_label: ~ student
    label: demographics.race_ethnicity.black

  - dimension: ugds_hisp
    sql: float(${TABLE}.ugds_hisp)
    description: Total share of enrollment of undergraduate degree-seeking students who are Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.hispanic

  - dimension: ugds_asian
    sql: float(${TABLE}.ugds_asian)
    description: Total share of enrollment of undergraduate degree-seeking students who are Asian
    view_label: ~ student
    label: demographics.race_ethnicity.asian

  - dimension: ugds_aian
    sql: float(${TABLE}.ugds_aian)
    description: Total share of enrollment of undergraduate degree-seeking students who are American Indian/Alaska Native
    view_label: ~ student
    label: demographics.race_ethnicity.aian

  - dimension: ugds_nhpi
    sql: float(${TABLE}.ugds_nhpi)
    description: Total share of enrollment of undergraduate degree-seeking students who are Native Hawaiian/Pacific Islander
    view_label: ~ student
    label: demographics.race_ethnicity.nhpi

  - dimension: ugds_2mor
    sql: float(${TABLE}.ugds_2mor)
    description: Total share of enrollment of undergraduate degree-seeking students who are two or more races
    view_label: ~ student
    label: demographics.race_ethnicity.two_or_more

  - dimension: ugds_nra
    sql: float(${TABLE}.ugds_nra)
    description: Total share of enrollment of undergraduate degree-seeking students who are non-resident aliens
    view_label: ~ student
    label: demographics.race_ethnicity.non_resident_alien

  - dimension: ugds_unkn
    sql: float(${TABLE}.ugds_unkn)
    description: Total share of enrollment of undergraduate degree-seeking students whose race is unknown
    view_label: ~ student
    label: demographics.race_ethnicity.unknown

  - dimension: ugds_whitenh
    sql: float(${TABLE}.ugds_whitenh)
    description: Total share of enrollment of undergraduate degree-seeking students who are white non-Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.white_non_hispanic

  - dimension: ugds_blacknh
    sql: float(${TABLE}.ugds_blacknh)
    description: Total share of enrollment of undergraduate degree-seeking students who are black non-Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.black_non_hispanic

  - dimension: ugds_api
    sql: float(${TABLE}.ugds_api)
    description: Total share of enrollment of undergraduate degree-seeking students who are Asian/Pacific Islander
    view_label: ~ student
    label: demographics.race_ethnicity.asian_pacific_islander

  - dimension: ugds_aianold
    sql: float(${TABLE}.ugds_aianold)
    description: Total share of enrollment of undergraduate degree-seeking students who are American Indian/Alaska Native
    view_label: ~ student
    label: demographics.race_ethnicity.aian_prior_2009

  - dimension: ugds_hispold
    sql: float(${TABLE}.ugds_hispold)
    description: Total share of enrollment of undergraduate degree-seeking students who are Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.hispanic_prior_2009

  - dimension: ug_nra
    sql: float(${TABLE}.ug_nra)
    description: Total share of enrollment of undergraduate students who are non-resident aliens
    view_label: ~ student
    label: demographics.non_resident_aliens_2000

  - dimension: ug_unkn
    sql: float(${TABLE}.ug_unkn)
    description: Total share of enrollment of undergraduate students whose race is unknown
    view_label: ~ student
    label: demographics.race_ethnicity.unknown_2000

  - dimension: ug_whitenh
    sql: float(${TABLE}.ug_whitenh)
    description: Total share of enrollment of undergraduate students who are white non-Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.white_2000

  - dimension: ug_blacknh
    sql: float(${TABLE}.ug_blacknh)
    description: Total share of enrollment of undergraduate students who are black non-Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.black_2000

  - dimension: ug_api
    sql: float(${TABLE}.ug_api)
    description: Total share of enrollment of undergraduate students who are Asian/Pacific Islander
    view_label: ~ student
    label: demographics.race_ethnicity.api_2000

  - dimension: ug_aianold
    sql: float(${TABLE}.ug_aianold)
    description: Total share of enrollment of undergraduate students who are American Indian/Alaska Native
    view_label: ~ student
    label: demographics.race_ethnicity.aian_2000

  - dimension: ug_hispold
    sql: float(${TABLE}.ug_hispold)
    description: Total share of enrollment of undergraduate students who are Hispanic
    view_label: ~ student
    label: demographics.race_ethnicity.hispanic_2000

  - dimension: pptug_ef
    sql: float(${TABLE}.pptug_ef)
    description: Share of undergraduate part-time students who are degree-seeking or certificate-seeking
    view_label: ~ student
    label: part_time_share

  - dimension: pptug_ef2
    sql: float(${TABLE}.pptug_ef2)
    description: Share of undergraduate part-time students who are degree-seeking or certificate-seeking (not after 2000)
    view_label: ~ student
    label: part_time_share_2000

  - dimension: curroper
    sql: integer(${TABLE}.curroper)
    description: Flag for currently operating institution, 0=closed, 1=operating
    view_label: ~ school
    label: operating

  - dimension: npt4_pub
    sql: integer(${TABLE}.npt4_pub)
    description: Average net price for Title IV institutions (public institutions)
    view_label: ~ cost
    label: avg_net_price.public

  - dimension: npt4_priv
    sql: integer(${TABLE}.npt4_priv)
    description: Average net price for Title IV institutions (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: avg_net_price.private

  - dimension: npt4_prog
    sql: integer(${TABLE}.npt4_prog)
    description: Average net price for the largest program at the institution for program-year institutions
    view_label: ~ cost
    label: avg_net_price.program_year

  - dimension: npt4_other
    sql: integer(${TABLE}.npt4_other)
    description: Average net price for the largest program at the institution for schools on "other" academic year calendars
    view_label: ~ cost
    label: avg_net_price.other_academic_year

  - dimension: npt41_pub
    sql: integer(${TABLE}.npt41_pub)
    description: Average net price for $0-$30,000 family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.0-30000

  - dimension: npt42_pub
    sql: integer(${TABLE}.npt42_pub)
    description: Average net price for $30,001-$48,000 family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.30001-48000

  - dimension: npt43_pub
    sql: integer(${TABLE}.npt43_pub)
    description: Average net price for $48,001-$75,000 family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.48001-75000

  - dimension: npt44_pub
    sql: integer(${TABLE}.npt44_pub)
    description: Average net price for $75,001-$110,000 family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.75001-110000

  - dimension: npt45_pub
    sql: integer(${TABLE}.npt45_pub)
    description: Average net price for $110,000+ family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.110001-plus

  - dimension: npt41_priv
    sql: integer(${TABLE}.npt41_priv)
    description: Average net price for $0-$30,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.0-30000

  - dimension: npt42_priv
    sql: integer(${TABLE}.npt42_priv)
    description: Average net price for $30,001-$48,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.30001-48000

  - dimension: npt43_priv
    sql: integer(${TABLE}.npt43_priv)
    description: Average net price for $48,001-$75,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.48001-75000

  - dimension: npt44_priv
    sql: integer(${TABLE}.npt44_priv)
    description: Average net price for $75,001-$110,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.75001-110000

  - dimension: npt45_priv
    sql: integer(${TABLE}.npt45_priv)
    description: Average net price for $110,000+ family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.110001-plus

  - dimension: npt41_prog
    sql: integer(${TABLE}.npt41_prog)
    description: Average net price for $0-$30,000 family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.0-30000

  - dimension: npt42_prog
    sql: integer(${TABLE}.npt42_prog)
    description: Average net price for $30,001-$48,000 family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.30001-48000

  - dimension: npt43_prog
    sql: integer(${TABLE}.npt43_prog)
    description: Average net price for $48,001-$75,000 family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.48001-75000

  - dimension: npt44_prog
    sql: integer(${TABLE}.npt44_prog)
    description: Average net price for $75,001-$110,000 family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.75001-110000

  - dimension: npt45_prog
    sql: integer(${TABLE}.npt45_prog)
    description: Average net price for $110,000+ family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.110001-plus

  - dimension: npt41_other
    sql: integer(${TABLE}.npt41_other)
    description: Average net price for $0-$30,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.0-30000

  - dimension: npt42_other
    sql: integer(${TABLE}.npt42_other)
    description: Average net price for $30,001-$48,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.30001-48000

  - dimension: npt43_other
    sql: integer(${TABLE}.npt43_other)
    description: Average net price for $48,001-$75,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.48001-75000

  - dimension: npt44_other
    sql: integer(${TABLE}.npt44_other)
    description: Average net price for $75,001-$110,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.75001-110000

  - dimension: npt45_other
    sql: integer(${TABLE}.npt45_other)
    description: Average net price for $110,000+ family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.110001-plus

  - dimension: npt4_048_pub
    sql: integer(${TABLE}.npt4_048_pub)
    description: Average net price for $0-$48,000 family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.0-48000

  - dimension: npt4_048_priv
    sql: integer(${TABLE}.npt4_048_priv)
    description: Average net price for $0-$48,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.0-48000

  - dimension: npt4_048_prog
    sql: integer(${TABLE}.npt4_048_prog)
    description: Average net price for $0-$48,000 family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.0-48000

  - dimension: npt4_048_other
    sql: integer(${TABLE}.npt4_048_other)
    description: Average net price for $0-$48,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.0-48000

  - dimension: npt4_3075_pub
    sql: integer(${TABLE}.npt4_3075_pub)
    description: Average net price for $30,001-$75,000 family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.30001-75000

  - dimension: npt4_3075_priv
    sql: integer(${TABLE}.npt4_3075_priv)
    description: Average net price for $30,001-$75,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.30001-75000

  - dimension: npt4_75up_pub
    sql: integer(${TABLE}.npt4_75up_pub)
    description: Average net price for $75,000+ family income (public institutions)
    view_label: ~ cost
    label: net_price.public.by_income_level.75000-plus

  - dimension: npt4_75up_priv
    sql: integer(${TABLE}.npt4_75up_priv)
    description: Average net price for $75,000+ family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: net_price.private.by_income_level.75000-plus

  - dimension: npt4_3075_prog
    sql: integer(${TABLE}.npt4_3075_prog)
    description: Average net price for $30,001-$75,000 family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.30001-75000

  - dimension: npt4_3075_other
    sql: integer(${TABLE}.npt4_3075_other)
    description: Average net price for $30,001-$75,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.30001-75000

  - dimension: npt4_75up_prog
    sql: integer(${TABLE}.npt4_75up_prog)
    description: Average net price for $75,000+ family income (program-year institutions)
    view_label: ~ cost
    label: net_price.program_reporter.by_income_level.75000-plus

  - dimension: npt4_75up_other
    sql: integer(${TABLE}.npt4_75up_other)
    description: Average net price for $75,000+ family income (other academic calendar institutions)
    view_label: ~ cost
    label: net_price.other_acad_calendar.by_income_level.75000-plus

  - dimension: num4_pub
    sql: integer(${TABLE}.num4_pub)
    description: Number of Title IV students (public institutions)
    view_label: ~ cost
    label: title_iv.public.all

  - dimension: num4_priv
    sql: integer(${TABLE}.num4_priv)
    description: Number of Title IV students (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: title_iv.private.all

  - dimension: num4_prog
    sql: integer(${TABLE}.num4_prog)
    description: Number of Title IV students (program-year institutions)
    view_label: ~ cost
    label: title_iv.program_year

  - dimension: num4_other
    sql: integer(${TABLE}.num4_other)
    description: Number of Title IV students (other academic calendar institutions)
    view_label: ~ cost
    label: title_iv.academic_year

  - dimension: num41_pub
    sql: integer(${TABLE}.num41_pub)
    description: Number of Title IV students, $0-$30,000 family income (public institutions)
    view_label: ~ cost
    label: title_iv.public.by_income_level.0-30000

  - dimension: num42_pub
    sql: integer(${TABLE}.num42_pub)
    description: Number of Title IV students, $30,001-$48,000 family income (public institutions)
    view_label: ~ cost
    label: title_iv.public.by_income_level.30001-48000

  - dimension: num43_pub
    sql: integer(${TABLE}.num43_pub)
    description: Number of Title IV students, $48,001-$75,000 family income (public institutions)
    view_label: ~ cost
    label: title_iv.public.by_income_level.48001-75000

  - dimension: num44_pub
    sql: integer(${TABLE}.num44_pub)
    description: Number of Title IV students, $75,001-$110,000 family income (public institutions)
    view_label: ~ cost
    label: title_iv.public.by_income_level.75001-110000

  - dimension: num45_pub
    sql: integer(${TABLE}.num45_pub)
    description: Number of Title IV students, $110,000+ family income (public institutions)
    view_label: ~ cost
    label: title_iv.public.by_income_level.110001-plus

  - dimension: num41_priv
    sql: integer(${TABLE}.num41_priv)
    description: Number of Title IV students, $0-$30,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: title_iv.private.by_income_level.0-30000

  - dimension: num42_priv
    sql: integer(${TABLE}.num42_priv)
    description: Number of Title IV students, $30,001-$48,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: title_iv.private.by_income_level.30001-48000

  - dimension: num43_priv
    sql: integer(${TABLE}.num43_priv)
    description: Number of Title IV students, $48,001-$75,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: title_iv.private.by_income_level.48001-75000

  - dimension: num44_priv
    sql: integer(${TABLE}.num44_priv)
    description: Number of Title IV students, $75,001-$110,000 family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: title_iv.private.by_income_level.75001-110000

  - dimension: num45_priv
    sql: integer(${TABLE}.num45_priv)
    description: Number of Title IV students, $110,000+ family income (private for-profit and nonprofit institutions)
    view_label: ~ cost
    label: title_iv.private.by_income_level.110001-plus

  - dimension: num41_prog
    sql: integer(${TABLE}.num41_prog)
    description: Number of Title IV students, $0-$30,000 family income (program-year institutions)
    view_label: ~ cost
    label: title_iv.program_reporter.by_income_level.0-30000

  - dimension: num42_prog
    sql: integer(${TABLE}.num42_prog)
    description: Number of Title IV students, $30,001-$48,000 family income (program-year institutions)
    view_label: ~ cost
    label: title_iv.program_reporter.by_income_level.30001-48000

  - dimension: num43_prog
    sql: integer(${TABLE}.num43_prog)
    description: Number of Title IV students, $48,001-$75,000 family income (program-year institutions)
    view_label: ~ cost
    label: title_iv.program_reporter.by_income_level.48001-75000

  - dimension: num44_prog
    sql: integer(${TABLE}.num44_prog)
    description: Number of Title IV students, $75,001-$110,000 family income (program-year institutions)
    view_label: ~ cost
    label: title_iv.program_reporter.by_income_level.75001-110000

  - dimension: num45_prog
    sql: integer(${TABLE}.num45_prog)
    description: Number of Title IV students, $110,000+ family income (program-year institutions)
    view_label: ~ cost
    label: title_iv.program_reporter.by_income_level.110001-plus

  - dimension: num41_other
    sql: integer(${TABLE}.num41_other)
    description: Number of Title IV students, $0-$30,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: title_iv.other_acad_calendar.by_income_level.0-30000

  - dimension: num42_other
    sql: integer(${TABLE}.num42_other)
    description: Number of Title IV students, $30,001-$48,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: title_iv.other_acad_calendar.by_income_level.30001-48000

  - dimension: num43_other
    sql: integer(${TABLE}.num43_other)
    description: Number of Title IV students, $48,001-$75,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: title_iv.other_acad_calendar.by_income_level.48001-75000

  - dimension: num44_other
    sql: integer(${TABLE}.num44_other)
    description: Number of Title IV students, $75,001-$110,000 family income (other academic calendar institutions)
    view_label: ~ cost
    label: title_iv.other_acad_calendar.by_income_level.75001-110000

  - dimension: num45_other
    sql: integer(${TABLE}.num45_other)
    description: Number of Title IV students, $110,000+ family income (other academic calendar institutions)
    view_label: ~ cost
    label: title_iv.other_acad_calendar.by_income_level.110001-plus

  - dimension: costt4_a
    sql: integer(${TABLE}.costt4_a)
    description: Average cost of attendance (academic year institutions)
    view_label: ~ cost
    label: attendance.academic_year

  - dimension: costt4_p
    sql: integer(${TABLE}.costt4_p)
    description: Average cost of attendance (program-year institutions)
    view_label: ~ cost
    label: attendance.program_year

  - dimension: tuitionfee_in
    sql: integer(${TABLE}.tuitionfee_in)
    description: In-state tuition and fees
    view_label: ~ cost
    label: tuition.in_state

  - dimension: tuitionfee_out
    sql: integer(${TABLE}.tuitionfee_out)
    description: Out-of-state tuition and fees
    view_label: ~ cost
    label: tuition.out_of_state

  - dimension: tuitionfee_prog
    sql: integer(${TABLE}.tuitionfee_prog)
    description: Tuition and fees for program-year institutions
    view_label: ~ cost
    label: tuition.program_year

  - dimension: tuitfte
    sql: integer(${TABLE}.tuitfte)
    description: Net tuition revenue per full-time equivalent student
    view_label: ~ school
    label: tuition_revenue_per_fte

  - dimension: inexpfte
    sql: integer(${TABLE}.inexpfte)
    description: Instructional expenditures per full-time equivalent student
    view_label: ~ school
    label: instructional_expenditure_per_fte

  - dimension: avgfacsal
    sql: integer(${TABLE}.avgfacsal)
    description: Average faculty salary
    view_label: ~ school
    label: faculty_salary

  - dimension: pftfac
    sql: float(${TABLE}.pftfac)
    description: Proportion of faculty that is full-time
    view_label: ~ school
    label: ft_faculty_rate

  - dimension: pctpell
    sql: float(${TABLE}.pctpell)
    description: Percentage of undergraduates who receive a Pell Grant
    view_label: ~ aid
    label: pell_grant_rate

  - dimension: c150_4
    sql: float(${TABLE}.c150_4)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years)
    view_label: ~ completion
    label: completion_rate_4yr_150nt

  - dimension: c150_l4
    sql: float(${TABLE}.c150_l4)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion)
    view_label: ~ completion
    label: completion_rate_less_than_4yr_150nt

  - dimension: c150_4_pooled
    sql: float(${TABLE}.c150_4_pooled)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years), pooled for two year rolling averages
    view_label: ~ completion
    label: completion_rate_4yr_150nt_pooled

  - dimension: c150_l4_pooled
    sql: float(${TABLE}.c150_l4_pooled)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion), pooled for two year rolling averages
    view_label: ~ completion
    label: completion_rate_less_than_4yr_150nt_pooled

  - dimension: poolyrs
    sql: integer(${TABLE}.poolyrs)
    description: Years used for rolling averages of completion rate C150_[4/L4]_POOLED
    view_label: ~ completion
    label: pooled_yrs_used

  - dimension: pftftug1_ef
    sql: float(${TABLE}.pftftug1_ef)
    description: Share of undergraduate students who are first-time, full-time degree-/certificate-seeking undergraduate students
    view_label: ~ student
    label: share_first.time_full.time

  - dimension: d150_4
    sql: integer(${TABLE}.d150_4)
    description: Adjusted cohort count for completion rate at four-year institutions (denominator of completion rate)
    view_label: ~ completion
    label: completion_cohort_4yr_150nt

  - dimension: d150_l4
    sql: integer(${TABLE}.d150_l4)
    description: Adjusted cohort count for completion rate at less-than-four-year institutions (denominator of completion rate)
    view_label: ~ completion
    label: completion_cohort_less_than_4yr_150nt

  - dimension: d150_4_pooled
    sql: integer(${TABLE}.d150_4_pooled)
    description: Adjusted cohort count for completion rate at four-year institutions (denominator of completion rate), pooled for two-year rolling averages
    view_label: ~ completion
    label: completion_cohort_4yr_150nt_pooled

  - dimension: d150_l4_pooled
    sql: integer(${TABLE}.d150_l4_pooled)
    description: Adjusted cohort count for completion rate at less-than-four-year institutions (denominator of completion rate), pooled for two-year rolling averages
    view_label: ~ completion
    label: completion_cohort_less_than_4yr_150nt_pooled

  - dimension: c150_4_white
    sql: float(${TABLE}.c150_4_white)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for white students
    view_label: ~ completion
    label: completion_rate_4yr_150_white

  - dimension: c150_4_black
    sql: float(${TABLE}.c150_4_black)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for black students
    view_label: ~ completion
    label: completion_rate_4yr_150_black

  - dimension: c150_4_hisp
    sql: float(${TABLE}.c150_4_hisp)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for Hispanic students
    view_label: ~ completion
    label: completion_rate_4yr_150_hispanic

  - dimension: c150_4_asian
    sql: float(${TABLE}.c150_4_asian)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for Asian students
    view_label: ~ completion
    label: completion_rate_4yr_150_asian

  - dimension: c150_4_aian
    sql: float(${TABLE}.c150_4_aian)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for American Indian/Alaska Native students
    view_label: ~ completion
    label: completion_rate_4yr_150_aian

  - dimension: c150_4_nhpi
    sql: float(${TABLE}.c150_4_nhpi)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for Native Hawaiian/Pacific Islander students
    view_label: ~ completion
    label: completion_rate_4yr_150_nhpi

  - dimension: c150_4_2mor
    sql: float(${TABLE}.c150_4_2mor)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for students of two-or-more-races
    view_label: ~ completion
    label: completion_rate_4yr_150_2ormore

  - dimension: c150_4_nra
    sql: float(${TABLE}.c150_4_nra)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for non-resident alien students
    view_label: ~ completion
    label: completion_rate_4yr_150_nonresident.alien

  - dimension: c150_4_unkn
    sql: float(${TABLE}.c150_4_unkn)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for students whose race is unknown
    view_label: ~ completion
    label: completion_rate_4yr_150_race.unknown

  - dimension: c150_4_whitenh
    sql: float(${TABLE}.c150_4_whitenh)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for white students
    view_label: ~ completion
    label: completion_rate_4yr_150_white_pre2010

  - dimension: c150_4_blacknh
    sql: float(${TABLE}.c150_4_blacknh)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for black students
    view_label: ~ completion
    label: completion_rate_4yr_150_black_pre2010

  - dimension: c150_4_api
    sql: float(${TABLE}.c150_4_api)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for Asian/Pacific Islander students
    view_label: ~ completion
    label: completion_rate_4yr_150_api_pre2010

  - dimension: c150_4_aianold
    sql: float(${TABLE}.c150_4_aianold)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for American Indian/Alaska Native students
    view_label: ~ completion
    label: completion_rate_4yr_150_aian_pre2010

  - dimension: c150_4_hispold
    sql: float(${TABLE}.c150_4_hispold)
    description: Completion rate for first-time, full-time students at four-year institutions (150% of expected time to completion/6 years) for Hispanic students
    view_label: ~ completion
    label: completion_rate_4yr_150_hispanic_pre2010

  - dimension: c150_l4_white
    sql: float(${TABLE}.c150_l4_white)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for white students
    view_label: ~ completion
    label: completion_rate_l4yr_150_white

  - dimension: c150_l4_black
    sql: float(${TABLE}.c150_l4_black)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for black students
    view_label: ~ completion
    label: completion_rate_l4yr_150_black

  - dimension: c150_l4_hisp
    sql: float(${TABLE}.c150_l4_hisp)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for Hispanic students
    view_label: ~ completion
    label: completion_rate_l4yr_150_hispanic

  - dimension: c150_l4_asian
    sql: float(${TABLE}.c150_l4_asian)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for Asian students
    view_label: ~ completion
    label: completion_rate_l4yr_150_asian

  - dimension: c150_l4_aian
    sql: float(${TABLE}.c150_l4_aian)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for American Indian/Alaska Native students
    view_label: ~ completion
    label: completion_rate_l4yr_150_aian

  - dimension: c150_l4_nhpi
    sql: float(${TABLE}.c150_l4_nhpi)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for Native Hawaiian/Pacific Islander students
    view_label: ~ completion
    label: completion_rate_l4yr_150_nhpi

  - dimension: c150_l4_2mor
    sql: float(${TABLE}.c150_l4_2mor)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for students of two-or-more-races
    view_label: ~ completion
    label: completion_rate_l4yr_150_2ormore

  - dimension: c150_l4_nra
    sql: float(${TABLE}.c150_l4_nra)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for non-resident alien students
    view_label: ~ completion
    label: completion_rate_l4yr_150_nonresident.alien

  - dimension: c150_l4_unkn
    sql: float(${TABLE}.c150_l4_unkn)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for students whose race is unknown
    view_label: ~ completion
    label: completion_rate_l4yr_150_race.unknown

  - dimension: c150_l4_whitenh
    sql: float(${TABLE}.c150_l4_whitenh)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for white non-Hispanic students
    view_label: ~ completion
    label: completion_rate_l4yr_150_white_pre2010

  - dimension: c150_l4_blacknh
    sql: float(${TABLE}.c150_l4_blacknh)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for black non-Hispanic students
    view_label: ~ completion
    label: completion_rate_l4yr_150_black_pre2010

  - dimension: c150_l4_api
    sql: float(${TABLE}.c150_l4_api)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for Asian/Pacific Islander students
    view_label: ~ completion
    label: completion_rate_l4yr_150_api_pre2010

  - dimension: c150_l4_aianold
    sql: float(${TABLE}.c150_l4_aianold)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for American Indian/Alaska Native students
    view_label: ~ completion
    label: completion_rate_l4yr_150_aian_pre2010

  - dimension: c150_l4_hispold
    sql: float(${TABLE}.c150_l4_hispold)
    description: Completion rate for first-time, full-time students at less-than-four-year institutions (150% of expected time to completion/6 years) for Hispanic students
    view_label: ~ completion
    label: completion_rate_l4yr_150_hispanic_pre2010

  - dimension: ret_ft4
    sql: float(${TABLE}.ret_ft4)
    description: First-time, full-time student retention rate at four-year institutions
    view_label: ~ student
    label: retention_rate.four_year.full_time

  - dimension: ret_ftl4
    sql: float(${TABLE}.ret_ftl4)
    description: First-time, full-time student retention rate at less-than-four-year institutions
    view_label: ~ student
    label: retention_rate.lt_four_year.full_time

  - dimension: ret_pt4
    sql: float(${TABLE}.ret_pt4)
    description: First-time, part-time student retention rate at four-year institutions
    view_label: ~ student
    label: retention_rate.four_year.part_time

  - dimension: ret_ptl4
    sql: float(${TABLE}.ret_ptl4)
    description: First-time, part-time student retention rate at less-than-four-year institutions
    view_label: ~ student
    label: retention_rate.lt_four_year.part_time

  - dimension: pctfloan
    sql: float(${TABLE}.pctfloan)
    description: Percent of all federal undergraduate students receiving a federal student loan
    view_label: ~ aid
    label: federal_loan_rate

  - dimension: ug25abv
    sql: float(${TABLE}.ug25abv)
    description: Percentage of undergraduates aged 25 and above
    view_label: ~ student
    label: share_25_older

  - dimension: cdr2
    sql: float(${TABLE}.cdr2)
    description: Two-year cohort default rate
    view_label: ~ repayment
    label: 2_yr_default_rate

  - dimension: cdr3
    sql: float(${TABLE}.cdr3)
    description: Three-year cohort default rate
    view_label: ~ repayment
    label: 3_yr_default_rate

  - dimension: death_yr2_rt
    sql: float(${TABLE}.death_yr2_rt)
    description: Percent died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.died_by.2yrs

  - dimension: comp_orig_yr2_rt
    sql: float(${TABLE}.comp_orig_yr2_rt)
    description: Percent completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.completed_by.2yrs

  - dimension: comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.comp_4yr_trans_yr2_rt)
    description: Percent who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.transf_completed_4yr_by.2yrs

  - dimension: comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.comp_2yr_trans_yr2_rt)
    description: Percent who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.transf_completed_2yr_by.2yrs

  - dimension: wdraw_orig_yr2_rt
    sql: float(${TABLE}.wdraw_orig_yr2_rt)
    description: Percent withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.withdrawn_by.2yrs

  - dimension: wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.wdraw_4yr_trans_yr2_rt)
    description: Percent who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.transf_withdrawn_4yr_by.2yrs

  - dimension: wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.wdraw_2yr_trans_yr2_rt)
    description: Percent who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.transf_withdrawn_2yr_by.2yrs

  - dimension: enrl_orig_yr2_rt
    sql: float(${TABLE}.enrl_orig_yr2_rt)
    description: Percent still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.still_enrolled_by.2yrs

  - dimension: enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.enrl_4yr_trans_yr2_rt)
    description: Percent who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_4yr_by.2yrs

  - dimension: enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.enrl_2yr_trans_yr2_rt)
    description: Percent who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_2yr_by.2yrs

  - dimension: unkn_orig_yr2_rt
    sql: float(${TABLE}.unkn_orig_yr2_rt)
    description: Percent with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.unknown_by.2yrs

  - dimension: unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.unkn_4yr_trans_yr2_rt)
    description: Percent who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.transf_unknown_4yr_by.2yrs

  - dimension: unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.unkn_2yr_trans_yr2_rt)
    description: Percent who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.transf_unknown_2yr_by.2yrs

  - dimension: lo_inc_death_yr2_rt
    sql: float(${TABLE}.lo_inc_death_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.died_by.2yrs

  - dimension: lo_inc_comp_orig_yr2_rt
    sql: float(${TABLE}.lo_inc_comp_orig_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.completed_by.2yrs

  - dimension: lo_inc_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_comp_4yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_4yr_by.2yrs

  - dimension: lo_inc_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_comp_2yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_2yr_by.2yrs

  - dimension: lo_inc_wdraw_orig_yr2_rt
    sql: float(${TABLE}.lo_inc_wdraw_orig_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.low_inc.withdrawn_by.2yrs

  - dimension: lo_inc_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_wdraw_4yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_4yr_by.2yrs

  - dimension: lo_inc_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_wdraw_2yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_2yr_by.2yrs

  - dimension: lo_inc_enrl_orig_yr2_rt
    sql: float(${TABLE}.lo_inc_enrl_orig_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.low_inc.still_enrolled_by.2yrs

  - dimension: lo_inc_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_enrl_4yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_4yr_by.2yrs

  - dimension: lo_inc_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_enrl_2yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_2yr_by.2yrs

  - dimension: lo_inc_unkn_orig_yr2_rt
    sql: float(${TABLE}.lo_inc_unkn_orig_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.unknown_by.2yrs

  - dimension: lo_inc_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_unkn_4yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_4yr_by.2yrs

  - dimension: lo_inc_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.lo_inc_unkn_2yr_trans_yr2_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_2yr_by.2yrs

  - dimension: md_inc_death_yr2_rt
    sql: float(${TABLE}.md_inc_death_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.died_by.2yrs

  - dimension: md_inc_comp_orig_yr2_rt
    sql: float(${TABLE}.md_inc_comp_orig_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.completed_by.2yrs

  - dimension: md_inc_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_comp_4yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_4yr_by.2yrs

  - dimension: md_inc_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_comp_2yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_2yr_by.2yrs

  - dimension: md_inc_wdraw_orig_yr2_rt
    sql: float(${TABLE}.md_inc_wdraw_orig_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.mid_inc.withdrawn_by.2yrs

  - dimension: md_inc_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_wdraw_4yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_4yr_by.2yrs

  - dimension: md_inc_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_wdraw_2yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_2yr_by.2yrs

  - dimension: md_inc_enrl_orig_yr2_rt
    sql: float(${TABLE}.md_inc_enrl_orig_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.mid_inc.still_enrolled_by.2yrs

  - dimension: md_inc_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_enrl_4yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_4yr_by.2yrs

  - dimension: md_inc_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_enrl_2yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_2yr_by.2yrs

  - dimension: md_inc_unkn_orig_yr2_rt
    sql: float(${TABLE}.md_inc_unkn_orig_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.unknown_by.2yrs

  - dimension: md_inc_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_unkn_4yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_4yr_by.2yrs

  - dimension: md_inc_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.md_inc_unkn_2yr_trans_yr2_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_2yr_by.2yrs

  - dimension: hi_inc_death_yr2_rt
    sql: float(${TABLE}.hi_inc_death_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.died_by.2yrs

  - dimension: hi_inc_comp_orig_yr2_rt
    sql: float(${TABLE}.hi_inc_comp_orig_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.completed_by.2yrs

  - dimension: hi_inc_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_comp_4yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_4yr_by.2yrs

  - dimension: hi_inc_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_comp_2yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_2yr_by.2yrs

  - dimension: hi_inc_wdraw_orig_yr2_rt
    sql: float(${TABLE}.hi_inc_wdraw_orig_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.high_inc.withdrawn_by.2yrs

  - dimension: hi_inc_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_wdraw_4yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_4yr_by.2yrs

  - dimension: hi_inc_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_wdraw_2yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_2yr_by.2yrs

  - dimension: hi_inc_enrl_orig_yr2_rt
    sql: float(${TABLE}.hi_inc_enrl_orig_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.high_inc.still_enrolled_by.2yrs

  - dimension: hi_inc_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_enrl_4yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_4yr_by.2yrs

  - dimension: hi_inc_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_enrl_2yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_2yr_by.2yrs

  - dimension: hi_inc_unkn_orig_yr2_rt
    sql: float(${TABLE}.hi_inc_unkn_orig_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.unknown_by.2yrs

  - dimension: hi_inc_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_unkn_4yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_4yr_by.2yrs

  - dimension: hi_inc_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.hi_inc_unkn_2yr_trans_yr2_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_2yr_by.2yrs

  - dimension: dep_death_yr2_rt
    sql: float(${TABLE}.dep_death_yr2_rt)
    description: Percent of dependent students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.depend.died_by.2yrs

  - dimension: dep_comp_orig_yr2_rt
    sql: float(${TABLE}.dep_comp_orig_yr2_rt)
    description: Percent of dependent students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.depend.completed_by.2yrs

  - dimension: dep_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.dep_comp_4yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_4yr_by.2yrs

  - dimension: dep_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.dep_comp_2yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_2yr_by.2yrs

  - dimension: dep_wdraw_orig_yr2_rt
    sql: float(${TABLE}.dep_wdraw_orig_yr2_rt)
    description: Percent of dependent students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.depend.withdrawn_by.2yrs

  - dimension: dep_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.dep_wdraw_4yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_4yr_by.2yrs

  - dimension: dep_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.dep_wdraw_2yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_2yr_by.2yrs

  - dimension: dep_enrl_orig_yr2_rt
    sql: float(${TABLE}.dep_enrl_orig_yr2_rt)
    description: Percent of dependent students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.depend.still_enrolled_by.2yrs

  - dimension: dep_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.dep_enrl_4yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_4yr_by.2yrs

  - dimension: dep_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.dep_enrl_2yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_2yr_by.2yrs

  - dimension: dep_unkn_orig_yr2_rt
    sql: float(${TABLE}.dep_unkn_orig_yr2_rt)
    description: Percent of dependent students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.depend.unknown_by.2yrs

  - dimension: dep_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.dep_unkn_4yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_4yr_by.2yrs

  - dimension: dep_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.dep_unkn_2yr_trans_yr2_rt)
    description: Percent of dependent students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_2yr_by.2yrs

  - dimension: ind_death_yr2_rt
    sql: float(${TABLE}.ind_death_yr2_rt)
    description: Percent of independent students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.independ.died_by.2yrs

  - dimension: ind_comp_orig_yr2_rt
    sql: float(${TABLE}.ind_comp_orig_yr2_rt)
    description: Percent of independent students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.independ.completed_by.2yrs

  - dimension: ind_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.ind_comp_4yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_4yr_by.2yrs

  - dimension: ind_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.ind_comp_2yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_2yr_by.2yrs

  - dimension: ind_wdraw_orig_yr2_rt
    sql: float(${TABLE}.ind_wdraw_orig_yr2_rt)
    description: Percent of independent students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.independ.withdrawn_by.2yrs

  - dimension: ind_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.ind_wdraw_4yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_4yr_by.2yrs

  - dimension: ind_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.ind_wdraw_2yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_2yr_by.2yrs

  - dimension: ind_enrl_orig_yr2_rt
    sql: float(${TABLE}.ind_enrl_orig_yr2_rt)
    description: Percent of independent students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.independ.still_enrolled_by.2yrs

  - dimension: ind_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.ind_enrl_4yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_4yr_by.2yrs

  - dimension: ind_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.ind_enrl_2yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_2yr_by.2yrs

  - dimension: ind_unkn_orig_yr2_rt
    sql: float(${TABLE}.ind_unkn_orig_yr2_rt)
    description: Percent of independent students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.independ.unknown_by.2yrs

  - dimension: ind_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.ind_unkn_4yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_4yr_by.2yrs

  - dimension: ind_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.ind_unkn_2yr_trans_yr2_rt)
    description: Percent of independent students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_2yr_by.2yrs

  - dimension: female_death_yr2_rt
    sql: float(${TABLE}.female_death_yr2_rt)
    description: Percent of female students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.female.died_by.2yrs

  - dimension: female_comp_orig_yr2_rt
    sql: float(${TABLE}.female_comp_orig_yr2_rt)
    description: Percent of female students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.female.completed_by.2yrs

  - dimension: female_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.female_comp_4yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_4yr_by.2yrs

  - dimension: female_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.female_comp_2yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_2yr_by.2yrs

  - dimension: female_wdraw_orig_yr2_rt
    sql: float(${TABLE}.female_wdraw_orig_yr2_rt)
    description: Percent of female students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.female.withdrawn_by.2yrs

  - dimension: female_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.female_wdraw_4yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_4yr_by.2yrs

  - dimension: female_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.female_wdraw_2yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_2yr_by.2yrs

  - dimension: female_enrl_orig_yr2_rt
    sql: float(${TABLE}.female_enrl_orig_yr2_rt)
    description: Percent of female students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.female.still_enrolled_by.2yrs

  - dimension: female_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.female_enrl_4yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_4yr_by.2yrs

  - dimension: female_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.female_enrl_2yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_2yr_by.2yrs

  - dimension: female_unkn_orig_yr2_rt
    sql: float(${TABLE}.female_unkn_orig_yr2_rt)
    description: Percent of female students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.female.unknown_by.2yrs

  - dimension: female_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.female_unkn_4yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_4yr_by.2yrs

  - dimension: female_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.female_unkn_2yr_trans_yr2_rt)
    description: Percent of female students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_2yr_by.2yrs

  - dimension: male_death_yr2_rt
    sql: float(${TABLE}.male_death_yr2_rt)
    description: Percent of male students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.male.died_by.2yrs

  - dimension: male_comp_orig_yr2_rt
    sql: float(${TABLE}.male_comp_orig_yr2_rt)
    description: Percent of male students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.male.completed_by.2yrs

  - dimension: male_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.male_comp_4yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_4yr_by.2yrs

  - dimension: male_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.male_comp_2yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_2yr_by.2yrs

  - dimension: male_wdraw_orig_yr2_rt
    sql: float(${TABLE}.male_wdraw_orig_yr2_rt)
    description: Percent of male students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.male.withdrawn_by.2yrs

  - dimension: male_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.male_wdraw_4yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_4yr_by.2yrs

  - dimension: male_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.male_wdraw_2yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_2yr_by.2yrs

  - dimension: male_enrl_orig_yr2_rt
    sql: float(${TABLE}.male_enrl_orig_yr2_rt)
    description: Percent of male students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.male.still_enrolled_by.2yrs

  - dimension: male_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.male_enrl_4yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_4yr_by.2yrs

  - dimension: male_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.male_enrl_2yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_2yr_by.2yrs

  - dimension: male_unkn_orig_yr2_rt
    sql: float(${TABLE}.male_unkn_orig_yr2_rt)
    description: Percent of male students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.male.unknown_by.2yrs

  - dimension: male_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.male_unkn_4yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_4yr_by.2yrs

  - dimension: male_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.male_unkn_2yr_trans_yr2_rt)
    description: Percent of male students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_2yr_by.2yrs

  - dimension: pell_death_yr2_rt
    sql: float(${TABLE}.pell_death_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.died_by.2yrs

  - dimension: pell_comp_orig_yr2_rt
    sql: float(${TABLE}.pell_comp_orig_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who completed in 2 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.completed_by.2yrs

  - dimension: pell_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.pell_comp_4yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_4yr_by.2yrs

  - dimension: pell_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.pell_comp_2yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_2yr_by.2yrs

  - dimension: pell_wdraw_orig_yr2_rt
    sql: float(${TABLE}.pell_wdraw_orig_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and withdrew from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.pell_recip.withdrawn_by.2yrs

  - dimension: pell_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.pell_wdraw_4yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_4yr_by.2yrs

  - dimension: pell_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.pell_wdraw_2yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_2yr_by.2yrs

  - dimension: pell_enrl_orig_yr2_rt
    sql: float(${TABLE}.pell_enrl_orig_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.pell_recip.still_enrolled_by.2yrs

  - dimension: pell_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.pell_enrl_4yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_4yr_by.2yrs

  - dimension: pell_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.pell_enrl_2yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_2yr_by.2yrs

  - dimension: pell_unkn_orig_yr2_rt
    sql: float(${TABLE}.pell_unkn_orig_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.unknown_by.2yrs

  - dimension: pell_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.pell_unkn_4yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_4yr_by.2yrs

  - dimension: pell_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.pell_unkn_2yr_trans_yr2_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_2yr_by.2yrs

  - dimension: nopell_death_yr2_rt
    sql: float(${TABLE}.nopell_death_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.died_by.2yrs

  - dimension: nopell_comp_orig_yr2_rt
    sql: float(${TABLE}.nopell_comp_orig_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who completed in 2 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.completed_by.2yrs

  - dimension: nopell_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_comp_4yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_4yr_by.2yrs

  - dimension: nopell_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_comp_2yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_2yr_by.2yrs

  - dimension: nopell_wdraw_orig_yr2_rt
    sql: float(${TABLE}.nopell_wdraw_orig_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and withdrew from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.no_pell.withdrawn_by.2yrs

  - dimension: nopell_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_wdraw_4yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_4yr_by.2yrs

  - dimension: nopell_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_wdraw_2yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_2yr_by.2yrs

  - dimension: nopell_enrl_orig_yr2_rt
    sql: float(${TABLE}.nopell_enrl_orig_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.no_pell.still_enrolled_by.2yrs

  - dimension: nopell_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_enrl_4yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_4yr_by.2yrs

  - dimension: nopell_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_enrl_2yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_2yr_by.2yrs

  - dimension: nopell_unkn_orig_yr2_rt
    sql: float(${TABLE}.nopell_unkn_orig_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.unknown_by.2yrs

  - dimension: nopell_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_unkn_4yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_4yr_by.2yrs

  - dimension: nopell_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.nopell_unkn_2yr_trans_yr2_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_2yr_by.2yrs

  - dimension: loan_death_yr2_rt
    sql: float(${TABLE}.loan_death_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.died_by.2yrs

  - dimension: loan_comp_orig_yr2_rt
    sql: float(${TABLE}.loan_comp_orig_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who completed in 2 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.completed_by.2yrs

  - dimension: loan_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.loan_comp_4yr_trans_yr2_rt)
    description: Percent of students who received a federel loan at the institution and who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_4yr_by.2yrs

  - dimension: loan_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.loan_comp_2yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_2yr_by.2yrs

  - dimension: loan_wdraw_orig_yr2_rt
    sql: float(${TABLE}.loan_wdraw_orig_yr2_rt)
    description: Percent of students who received a federal loan at the institution and withdrew from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.loan_recip.withdrawn_by.2yrs

  - dimension: loan_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.loan_wdraw_4yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_4yr_by.2yrs

  - dimension: loan_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.loan_wdraw_2yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_2yr_by.2yrs

  - dimension: loan_enrl_orig_yr2_rt
    sql: float(${TABLE}.loan_enrl_orig_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.loan_recip.still_enrolled_by.2yrs

  - dimension: loan_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.loan_enrl_4yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_4yr_by.2yrs

  - dimension: loan_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.loan_enrl_2yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_2yr_by.2yrs

  - dimension: loan_unkn_orig_yr2_rt
    sql: float(${TABLE}.loan_unkn_orig_yr2_rt)
    description: Percent of students who received a federal loan at the institution and with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.unknown_by.2yrs

  - dimension: loan_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.loan_unkn_4yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_4yr_by.2yrs

  - dimension: loan_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.loan_unkn_2yr_trans_yr2_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_2yr_by.2yrs

  - dimension: noloan_death_yr2_rt
    sql: float(${TABLE}.noloan_death_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.died_by.2yrs

  - dimension: noloan_comp_orig_yr2_rt
    sql: float(${TABLE}.noloan_comp_orig_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who completed in 2 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.completed_by.2yrs

  - dimension: noloan_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_comp_4yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_4yr_by.2yrs

  - dimension: noloan_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_comp_2yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_2yr_by.2yrs

  - dimension: noloan_wdraw_orig_yr2_rt
    sql: float(${TABLE}.noloan_wdraw_orig_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and withdrew from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.no_loan.withdrawn_by.2yrs

  - dimension: noloan_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_wdraw_4yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_4yr_by.2yrs

  - dimension: noloan_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_wdraw_2yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_2yr_by.2yrs

  - dimension: noloan_enrl_orig_yr2_rt
    sql: float(${TABLE}.noloan_enrl_orig_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.no_loan.still_enrolled_by.2yrs

  - dimension: noloan_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_enrl_4yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_4yr_by.2yrs

  - dimension: noloan_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_enrl_2yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_2yr_by.2yrs

  - dimension: noloan_unkn_orig_yr2_rt
    sql: float(${TABLE}.noloan_unkn_orig_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.unknown_by.2yrs

  - dimension: noloan_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_unkn_4yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_4yr_by.2yrs

  - dimension: noloan_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.noloan_unkn_2yr_trans_yr2_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_2yr_by.2yrs

  - dimension: firstgen_death_yr2_rt
    sql: float(${TABLE}.firstgen_death_yr2_rt)
    description: Percent of first-generation students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.died_by.2yrs

  - dimension: firstgen_comp_orig_yr2_rt
    sql: float(${TABLE}.firstgen_comp_orig_yr2_rt)
    description: Percent of first-generation students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.completed_by.2yrs

  - dimension: firstgen_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_comp_4yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_4yr_by.2yrs

  - dimension: firstgen_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_comp_2yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_2yr_by.2yrs

  - dimension: firstgen_wdraw_orig_yr2_rt
    sql: float(${TABLE}.firstgen_wdraw_orig_yr2_rt)
    description: Percent of first-generation students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.first_gen.withdrawn_by.2yrs

  - dimension: firstgen_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_wdraw_4yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_4yr_by.2yrs

  - dimension: firstgen_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_wdraw_2yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_2yr_by.2yrs

  - dimension: firstgen_enrl_orig_yr2_rt
    sql: float(${TABLE}.firstgen_enrl_orig_yr2_rt)
    description: Percent of first-generation students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.first_gen.still_enrolled_by.2yrs

  - dimension: firstgen_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_enrl_4yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_4yr_by.2yrs

  - dimension: firstgen_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_enrl_2yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_2yr_by.2yrs

  - dimension: firstgen_unkn_orig_yr2_rt
    sql: float(${TABLE}.firstgen_unkn_orig_yr2_rt)
    description: Percent of first-generation students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.unknown_by.2yrs

  - dimension: firstgen_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_unkn_4yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_4yr_by.2yrs

  - dimension: firstgen_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.firstgen_unkn_2yr_trans_yr2_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_2yr_by.2yrs

  - dimension: not1stgen_death_yr2_rt
    sql: float(${TABLE}.not1stgen_death_yr2_rt)
    description: Percent of not-first-generation students who died within 2 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.died_by.2yrs

  - dimension: not1stgen_comp_orig_yr2_rt
    sql: float(${TABLE}.not1stgen_comp_orig_yr2_rt)
    description: Percent of not-first-generation students who completed within 2 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.completed_by.2yrs

  - dimension: not1stgen_comp_4yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_comp_4yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_4yr_by.2yrs

  - dimension: not1stgen_comp_2yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_comp_2yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and completed within 2 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_2yr_by.2yrs

  - dimension: not1stgen_wdraw_orig_yr2_rt
    sql: float(${TABLE}.not1stgen_wdraw_orig_yr2_rt)
    description: Percent of not-first-generation students withdrawn from original institution within 2 years 
    view_label: ~ completion
    label: title_iv.not_first_gen.withdrawn_by.2yrs

  - dimension: not1stgen_wdraw_4yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_wdraw_4yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_4yr_by.2yrs

  - dimension: not1stgen_wdraw_2yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_wdraw_2yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and withdrew within 2 years 
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_2yr_by.2yrs

  - dimension: not1stgen_enrl_orig_yr2_rt
    sql: float(${TABLE}.not1stgen_enrl_orig_yr2_rt)
    description: Percent of not-first-generation students who were still enrolled at original institution within 2 years 
    view_label: ~ completion
    label: title_iv.not_first_gen.still_enrolled_by.2yrs

  - dimension: not1stgen_enrl_4yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_enrl_4yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and were still enrolled within 2 years 
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_4yr_by.2yrs

  - dimension: not1stgen_enrl_2yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_enrl_2yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and were still enrolled within 2 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_2yr_by.2yrs

  - dimension: not1stgen_unkn_orig_yr2_rt
    sql: float(${TABLE}.not1stgen_unkn_orig_yr2_rt)
    description: Percent of not-first-generation students with status unknown within 2 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.unknown_by.2yrs

  - dimension: not1stgen_unkn_4yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_unkn_4yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_4yr_by.2yrs

  - dimension: not1stgen_unkn_2yr_trans_yr2_rt
    sql: float(${TABLE}.not1stgen_unkn_2yr_trans_yr2_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and whose status is unknown within 2 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_2yr_by.2yrs

  - dimension: death_yr3_rt
    sql: float(${TABLE}.death_yr3_rt)
    description: Percent died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.died_by.3yrs

  - dimension: comp_orig_yr3_rt
    sql: float(${TABLE}.comp_orig_yr3_rt)
    description: Percent completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.completed_by.3yrs

  - dimension: comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.comp_4yr_trans_yr3_rt)
    description: Percent who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.transf_completed_4yr_by.3yrs

  - dimension: comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.comp_2yr_trans_yr3_rt)
    description: Percent who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.transf_completed_2yr_by.3yrs

  - dimension: wdraw_orig_yr3_rt
    sql: float(${TABLE}.wdraw_orig_yr3_rt)
    description: Percent withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.withdrawn_by.3yrs

  - dimension: wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.wdraw_4yr_trans_yr3_rt)
    description: Percent who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_4yr_by.3yrs

  - dimension: wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.wdraw_2yr_trans_yr3_rt)
    description: Percent who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_2yr_by.3yrs

  - dimension: enrl_orig_yr3_rt
    sql: float(${TABLE}.enrl_orig_yr3_rt)
    description: Percent still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.still_enrolled_by.3yrs

  - dimension: enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.enrl_4yr_trans_yr3_rt)
    description: Percent who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_4yr_by.3yrs

  - dimension: enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.enrl_2yr_trans_yr3_rt)
    description: Percent who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_2yr_by.3yrs

  - dimension: unkn_orig_yr3_rt
    sql: float(${TABLE}.unkn_orig_yr3_rt)
    description: Percent with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.unknown_by.3yrs

  - dimension: unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.unkn_4yr_trans_yr3_rt)
    description: Percent who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.transf_unknown_4yr_by.3yrs

  - dimension: unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.unkn_2yr_trans_yr3_rt)
    description: Percent who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.transf_unknown_2yr_by.3yrs

  - dimension: lo_inc_death_yr3_rt
    sql: float(${TABLE}.lo_inc_death_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.died_by.3yrs

  - dimension: lo_inc_comp_orig_yr3_rt
    sql: float(${TABLE}.lo_inc_comp_orig_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.completed_by.3yrs

  - dimension: lo_inc_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_comp_4yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_4yr_by.3yrs

  - dimension: lo_inc_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_comp_2yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_2yr_by.3yrs

  - dimension: lo_inc_wdraw_orig_yr3_rt
    sql: float(${TABLE}.lo_inc_wdraw_orig_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.withdrawn_by.3yrs

  - dimension: lo_inc_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_wdraw_4yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_4yr_by.3yrs

  - dimension: lo_inc_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_wdraw_2yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_2yr_by.3yrs

  - dimension: lo_inc_enrl_orig_yr3_rt
    sql: float(${TABLE}.lo_inc_enrl_orig_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.still_enrolled_by.3yrs

  - dimension: lo_inc_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_enrl_4yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_4yr_by.3yrs

  - dimension: lo_inc_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_enrl_2yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_2yr_by.3yrs

  - dimension: lo_inc_unkn_orig_yr3_rt
    sql: float(${TABLE}.lo_inc_unkn_orig_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.unknown_by.3yrs

  - dimension: lo_inc_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_unkn_4yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_4yr_by.3yrs

  - dimension: lo_inc_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.lo_inc_unkn_2yr_trans_yr3_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_2yr_by.3yrs

  - dimension: md_inc_death_yr3_rt
    sql: float(${TABLE}.md_inc_death_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.died_by.3yrs

  - dimension: md_inc_comp_orig_yr3_rt
    sql: float(${TABLE}.md_inc_comp_orig_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.completed_by.3yrs

  - dimension: md_inc_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_comp_4yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_4yr_by.3yrs

  - dimension: md_inc_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_comp_2yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_2yr_by.3yrs

  - dimension: md_inc_wdraw_orig_yr3_rt
    sql: float(${TABLE}.md_inc_wdraw_orig_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.withdrawn_by.3yrs

  - dimension: md_inc_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_wdraw_4yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_4yr_by.3yrs

  - dimension: md_inc_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_wdraw_2yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_2yr_by.3yrs

  - dimension: md_inc_enrl_orig_yr3_rt
    sql: float(${TABLE}.md_inc_enrl_orig_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.still_enrolled_by.3yrs

  - dimension: md_inc_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_enrl_4yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_4yr_by.3yrs

  - dimension: md_inc_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_enrl_2yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_2yr_by.3yrs

  - dimension: md_inc_unkn_orig_yr3_rt
    sql: float(${TABLE}.md_inc_unkn_orig_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.unknown_by.3yrs

  - dimension: md_inc_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_unkn_4yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_4yr_by.3yrs

  - dimension: md_inc_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.md_inc_unkn_2yr_trans_yr3_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_2yr_by.3yrs

  - dimension: hi_inc_death_yr3_rt
    sql: float(${TABLE}.hi_inc_death_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.died_by.3yrs

  - dimension: hi_inc_comp_orig_yr3_rt
    sql: float(${TABLE}.hi_inc_comp_orig_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.completed_by.3yrs

  - dimension: hi_inc_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_comp_4yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_4yr_by.3yrs

  - dimension: hi_inc_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_comp_2yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_2yr_by.3yrs

  - dimension: hi_inc_wdraw_orig_yr3_rt
    sql: float(${TABLE}.hi_inc_wdraw_orig_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.withdrawn_by.3yrs

  - dimension: hi_inc_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_wdraw_4yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_4yr_by.3yrs

  - dimension: hi_inc_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_wdraw_2yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_2yr_by.3yrs

  - dimension: hi_inc_enrl_orig_yr3_rt
    sql: float(${TABLE}.hi_inc_enrl_orig_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.still_enrolled_by.3yrs

  - dimension: hi_inc_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_enrl_4yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_4yr_by.3yrs

  - dimension: hi_inc_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_enrl_2yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_2yr_by.3yrs

  - dimension: hi_inc_unkn_orig_yr3_rt
    sql: float(${TABLE}.hi_inc_unkn_orig_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.unknown_by.3yrs

  - dimension: hi_inc_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_unkn_4yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_4yr_by.3yrs

  - dimension: hi_inc_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.hi_inc_unkn_2yr_trans_yr3_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_2yr_by.3yrs

  - dimension: dep_death_yr3_rt
    sql: float(${TABLE}.dep_death_yr3_rt)
    description: Percent of dependent students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.depend.died_by.3yrs

  - dimension: dep_comp_orig_yr3_rt
    sql: float(${TABLE}.dep_comp_orig_yr3_rt)
    description: Percent of dependent students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.depend.completed_by.3yrs

  - dimension: dep_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.dep_comp_4yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_4yr_by.3yrs

  - dimension: dep_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.dep_comp_2yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_2yr_by.3yrs

  - dimension: dep_wdraw_orig_yr3_rt
    sql: float(${TABLE}.dep_wdraw_orig_yr3_rt)
    description: Percent of dependent students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.depend.withdrawn_by.3yrs

  - dimension: dep_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.dep_wdraw_4yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_4yr_by.3yrs

  - dimension: dep_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.dep_wdraw_2yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_2yr_by.3yrs

  - dimension: dep_enrl_orig_yr3_rt
    sql: float(${TABLE}.dep_enrl_orig_yr3_rt)
    description: Percent of dependent students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.depend.still_enrolled_by.3yrs

  - dimension: dep_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.dep_enrl_4yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_4yr_by.3yrs

  - dimension: dep_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.dep_enrl_2yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_2yr_by.3yrs

  - dimension: dep_unkn_orig_yr3_rt
    sql: float(${TABLE}.dep_unkn_orig_yr3_rt)
    description: Percent of dependent students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.depend.unknown_by.3yrs

  - dimension: dep_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.dep_unkn_4yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_4yr_by.3yrs

  - dimension: dep_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.dep_unkn_2yr_trans_yr3_rt)
    description: Percent of dependent students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_2yr_by.3yrs

  - dimension: ind_death_yr3_rt
    sql: float(${TABLE}.ind_death_yr3_rt)
    description: Percent of independent students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.independ.died_by.3yrs

  - dimension: ind_comp_orig_yr3_rt
    sql: float(${TABLE}.ind_comp_orig_yr3_rt)
    description: Percent of independent students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.independ.completed_by.3yrs

  - dimension: ind_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.ind_comp_4yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_4yr_by.3yrs

  - dimension: ind_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.ind_comp_2yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_2yr_by.3yrs

  - dimension: ind_wdraw_orig_yr3_rt
    sql: float(${TABLE}.ind_wdraw_orig_yr3_rt)
    description: Percent of independent students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.independ.withdrawn_by.3yrs

  - dimension: ind_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.ind_wdraw_4yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_4yr_by.3yrs

  - dimension: ind_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.ind_wdraw_2yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_2yr_by.3yrs

  - dimension: ind_enrl_orig_yr3_rt
    sql: float(${TABLE}.ind_enrl_orig_yr3_rt)
    description: Percent of independent students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.independ.still_enrolled_by.3yrs

  - dimension: ind_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.ind_enrl_4yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_4yr_by.3yrs

  - dimension: ind_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.ind_enrl_2yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_2yr_by.3yrs

  - dimension: ind_unkn_orig_yr3_rt
    sql: float(${TABLE}.ind_unkn_orig_yr3_rt)
    description: Percent of independent students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.independ.unknown_by.3yrs

  - dimension: ind_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.ind_unkn_4yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_4yr_by.3yrs

  - dimension: ind_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.ind_unkn_2yr_trans_yr3_rt)
    description: Percent of independent students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_2yr_by.3yrs

  - dimension: female_death_yr3_rt
    sql: float(${TABLE}.female_death_yr3_rt)
    description: Percent of female students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.female.died_by.3yrs

  - dimension: female_comp_orig_yr3_rt
    sql: float(${TABLE}.female_comp_orig_yr3_rt)
    description: Percent of female students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.female.completed_by.3yrs

  - dimension: female_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.female_comp_4yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_4yr_by.3yrs

  - dimension: female_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.female_comp_2yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_2yr_by.3yrs

  - dimension: female_wdraw_orig_yr3_rt
    sql: float(${TABLE}.female_wdraw_orig_yr3_rt)
    description: Percent of female students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.female.withdrawn_by.3yrs

  - dimension: female_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.female_wdraw_4yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_4yr_by.3yrs

  - dimension: female_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.female_wdraw_2yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_2yr_by.3yrs

  - dimension: female_enrl_orig_yr3_rt
    sql: float(${TABLE}.female_enrl_orig_yr3_rt)
    description: Percent of female students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.female.still_enrolled_by.3yrs

  - dimension: female_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.female_enrl_4yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_4yr_by.3yrs

  - dimension: female_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.female_enrl_2yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_2yr_by.3yrs

  - dimension: female_unkn_orig_yr3_rt
    sql: float(${TABLE}.female_unkn_orig_yr3_rt)
    description: Percent of female students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.female.unknown_by.3yrs

  - dimension: female_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.female_unkn_4yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_4yr_by.3yrs

  - dimension: female_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.female_unkn_2yr_trans_yr3_rt)
    description: Percent of female students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_2yr_by.3yrs

  - dimension: male_death_yr3_rt
    sql: float(${TABLE}.male_death_yr3_rt)
    description: Percent of male students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.male.died_by.3yrs

  - dimension: male_comp_orig_yr3_rt
    sql: float(${TABLE}.male_comp_orig_yr3_rt)
    description: Percent of male students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.male.completed_by.3yrs

  - dimension: male_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.male_comp_4yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_4yr_by.3yrs

  - dimension: male_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.male_comp_2yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_2yr_by.3yrs

  - dimension: male_wdraw_orig_yr3_rt
    sql: float(${TABLE}.male_wdraw_orig_yr3_rt)
    description: Percent of male students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.male.withdrawn_by.3yrs

  - dimension: male_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.male_wdraw_4yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_4yr_by.3yrs

  - dimension: male_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.male_wdraw_2yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_2yr_by.3yrs

  - dimension: male_enrl_orig_yr3_rt
    sql: float(${TABLE}.male_enrl_orig_yr3_rt)
    description: Percent of male students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.male.still_enrolled_by.3yrs

  - dimension: male_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.male_enrl_4yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_4yr_by.3yrs

  - dimension: male_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.male_enrl_2yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_2yr_by.3yrs

  - dimension: male_unkn_orig_yr3_rt
    sql: float(${TABLE}.male_unkn_orig_yr3_rt)
    description: Percent of male students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.male.unknown_by.3yrs

  - dimension: male_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.male_unkn_4yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_4yr_by.3yrs

  - dimension: male_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.male_unkn_2yr_trans_yr3_rt)
    description: Percent of male students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_2yr_by.3yrs

  - dimension: pell_death_yr3_rt
    sql: float(${TABLE}.pell_death_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.died_by.3yrs

  - dimension: pell_comp_orig_yr3_rt
    sql: float(${TABLE}.pell_comp_orig_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who completed in 3 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.completed_by.3yrs

  - dimension: pell_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.pell_comp_4yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_4yr_by.3yrs

  - dimension: pell_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.pell_comp_2yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_2yr_by.3yrs

  - dimension: pell_wdraw_orig_yr3_rt
    sql: float(${TABLE}.pell_wdraw_orig_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and withdrew from original institution within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.withdrawn_by.3yrs

  - dimension: pell_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.pell_wdraw_4yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_4yr_by.3yrs

  - dimension: pell_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.pell_wdraw_2yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_2yr_by.3yrs

  - dimension: pell_enrl_orig_yr3_rt
    sql: float(${TABLE}.pell_enrl_orig_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.still_enrolled_by.3yrs

  - dimension: pell_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.pell_enrl_4yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_4yr_by.3yrs

  - dimension: pell_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.pell_enrl_2yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_2yr_by.3yrs

  - dimension: pell_unkn_orig_yr3_rt
    sql: float(${TABLE}.pell_unkn_orig_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.unknown_by.3yrs

  - dimension: pell_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.pell_unkn_4yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_4yr_by.3yrs

  - dimension: pell_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.pell_unkn_2yr_trans_yr3_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_2yr_by.3yrs

  - dimension: nopell_death_yr3_rt
    sql: float(${TABLE}.nopell_death_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.died_by.3yrs

  - dimension: nopell_comp_orig_yr3_rt
    sql: float(${TABLE}.nopell_comp_orig_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who completed in 3 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.completed_by.3yrs

  - dimension: nopell_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_comp_4yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_4yr_by.3yrs

  - dimension: nopell_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_comp_2yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_2yr_by.3yrs

  - dimension: nopell_wdraw_orig_yr3_rt
    sql: float(${TABLE}.nopell_wdraw_orig_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and withdrew from original institution within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.withdrawn_by.3yrs

  - dimension: nopell_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_wdraw_4yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_4yr_by.3yrs

  - dimension: nopell_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_wdraw_2yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_2yr_by.3yrs

  - dimension: nopell_enrl_orig_yr3_rt
    sql: float(${TABLE}.nopell_enrl_orig_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.still_enrolled_by.3yrs

  - dimension: nopell_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_enrl_4yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_4yr_by.3yrs

  - dimension: nopell_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_enrl_2yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_2yr_by.3yrs

  - dimension: nopell_unkn_orig_yr3_rt
    sql: float(${TABLE}.nopell_unkn_orig_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.unknown_by.3yrs

  - dimension: nopell_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_unkn_4yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_4yr_by.3yrs

  - dimension: nopell_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.nopell_unkn_2yr_trans_yr3_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_2yr_by.3yrs

  - dimension: loan_death_yr3_rt
    sql: float(${TABLE}.loan_death_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.died_by.3yrs

  - dimension: loan_comp_orig_yr3_rt
    sql: float(${TABLE}.loan_comp_orig_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who completed in 3 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.completed_by.3yrs

  - dimension: loan_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.loan_comp_4yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_4yr_by.3yrs

  - dimension: loan_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.loan_comp_2yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_2yr_by.3yrs

  - dimension: loan_wdraw_orig_yr3_rt
    sql: float(${TABLE}.loan_wdraw_orig_yr3_rt)
    description: Percent of students who received a federal loan at the institution and withdrew from original institution within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.withdrawn_by.3yrs

  - dimension: loan_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.loan_wdraw_4yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_4yr_by.3yrs

  - dimension: loan_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.loan_wdraw_2yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_2yr_by.3yrs

  - dimension: loan_enrl_orig_yr3_rt
    sql: float(${TABLE}.loan_enrl_orig_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.still_enrolled_by.3yrs

  - dimension: loan_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.loan_enrl_4yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_4yr_by.3yrs

  - dimension: loan_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.loan_enrl_2yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_2yr_by.3yrs

  - dimension: loan_unkn_orig_yr3_rt
    sql: float(${TABLE}.loan_unkn_orig_yr3_rt)
    description: Percent of students who received a federal loan at the institution and with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.unknown_by.3yrs

  - dimension: loan_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.loan_unkn_4yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_4yr_by.3yrs

  - dimension: loan_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.loan_unkn_2yr_trans_yr3_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_2yr_by.3yrs

  - dimension: noloan_death_yr3_rt
    sql: float(${TABLE}.noloan_death_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.died_by.3yrs

  - dimension: noloan_comp_orig_yr3_rt
    sql: float(${TABLE}.noloan_comp_orig_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who completed in 3 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.completed_by.3yrs

  - dimension: noloan_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_comp_4yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_4yr_by.3yrs

  - dimension: noloan_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_comp_2yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_2yr_by.3yrs

  - dimension: noloan_wdraw_orig_yr3_rt
    sql: float(${TABLE}.noloan_wdraw_orig_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and withdrew from original institution within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.withdrawn_by.3yrs

  - dimension: noloan_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_wdraw_4yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_4yr_by.3yrs

  - dimension: noloan_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_wdraw_2yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_2yr_by.3yrs

  - dimension: noloan_enrl_orig_yr3_rt
    sql: float(${TABLE}.noloan_enrl_orig_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.still_enrolled_by.3yrs

  - dimension: noloan_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_enrl_4yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_4yr_by.3yrs

  - dimension: noloan_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_enrl_2yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_2yr_by.3yrs

  - dimension: noloan_unkn_orig_yr3_rt
    sql: float(${TABLE}.noloan_unkn_orig_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.unknown_by.3yrs

  - dimension: noloan_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_unkn_4yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_4yr_by.3yrs

  - dimension: noloan_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.noloan_unkn_2yr_trans_yr3_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_2yr_by.3yrs

  - dimension: firstgen_death_yr3_rt
    sql: float(${TABLE}.firstgen_death_yr3_rt)
    description: Percent of first-generation students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.died_by.3yrs

  - dimension: firstgen_comp_orig_yr3_rt
    sql: float(${TABLE}.firstgen_comp_orig_yr3_rt)
    description: Percent of first-generation students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.completed_by.3yrs

  - dimension: firstgen_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_comp_4yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_4yr_by.3yrs

  - dimension: firstgen_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_comp_2yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_2yr_by.3yrs

  - dimension: firstgen_wdraw_orig_yr3_rt
    sql: float(${TABLE}.firstgen_wdraw_orig_yr3_rt)
    description: Percent of first-generation students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.withdrawn_by.3yrs

  - dimension: firstgen_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_wdraw_4yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_4yr_by.3yrs

  - dimension: firstgen_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_wdraw_2yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_2yr_by.3yrs

  - dimension: firstgen_enrl_orig_yr3_rt
    sql: float(${TABLE}.firstgen_enrl_orig_yr3_rt)
    description: Percent of first-generation students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.still_enrolled_by.3yrs

  - dimension: firstgen_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_enrl_4yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_4yr_by.3yrs

  - dimension: firstgen_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_enrl_2yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_2yr_by.3yrs

  - dimension: firstgen_unkn_orig_yr3_rt
    sql: float(${TABLE}.firstgen_unkn_orig_yr3_rt)
    description: Percent of first-generation students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.unknown_by.3yrs

  - dimension: firstgen_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_unkn_4yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_4yr_by.3yrs

  - dimension: firstgen_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.firstgen_unkn_2yr_trans_yr3_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_2yr_by.3yrs

  - dimension: not1stgen_death_yr3_rt
    sql: float(${TABLE}.not1stgen_death_yr3_rt)
    description: Percent of not-first-generation students who died within 3 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.died_by.3yrs

  - dimension: not1stgen_comp_orig_yr3_rt
    sql: float(${TABLE}.not1stgen_comp_orig_yr3_rt)
    description: Percent of not-first-generation students who completed within 3 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.completed_by.3yrs

  - dimension: not1stgen_comp_4yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_comp_4yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_4yr_by.3yrs

  - dimension: not1stgen_comp_2yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_comp_2yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and completed within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_2yr_by.3yrs

  - dimension: not1stgen_wdraw_orig_yr3_rt
    sql: float(${TABLE}.not1stgen_wdraw_orig_yr3_rt)
    description: Percent of not-first-generation students withdrawn from original institution within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.withdrawn_by.3yrs

  - dimension: not1stgen_wdraw_4yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_wdraw_4yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_4yr_by.3yrs

  - dimension: not1stgen_wdraw_2yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_wdraw_2yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and withdrew within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_2yr_by.3yrs

  - dimension: not1stgen_enrl_orig_yr3_rt
    sql: float(${TABLE}.not1stgen_enrl_orig_yr3_rt)
    description: Percent of not-first-generation students who were still enrolled at original institution within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.still_enrolled_by.3yrs

  - dimension: not1stgen_enrl_4yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_enrl_4yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_4yr_by.3yrs

  - dimension: not1stgen_enrl_2yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_enrl_2yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and were still enrolled within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_2yr_by.3yrs

  - dimension: not1stgen_unkn_orig_yr3_rt
    sql: float(${TABLE}.not1stgen_unkn_orig_yr3_rt)
    description: Percent of not-first-generation students with status unknown within 3 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.unknown_by.3yrs

  - dimension: not1stgen_unkn_4yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_unkn_4yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_4yr_by.3yrs

  - dimension: not1stgen_unkn_2yr_trans_yr3_rt
    sql: float(${TABLE}.not1stgen_unkn_2yr_trans_yr3_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and whose status is unknown within 3 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_2yr_by.3yrs

  - dimension: death_yr4_rt
    sql: float(${TABLE}.death_yr4_rt)
    description: Percent died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.died_by.4yrs

  - dimension: comp_orig_yr4_rt
    sql: float(${TABLE}.comp_orig_yr4_rt)
    description: Percent completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.completed_by.4yrs

  - dimension: comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.comp_4yr_trans_yr4_rt)
    description: Percent who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.transf_completed_4yr_by.4yrs

  - dimension: comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.comp_2yr_trans_yr4_rt)
    description: Percent who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.transf_completed_2yr_by.4yrs

  - dimension: wdraw_orig_yr4_rt
    sql: float(${TABLE}.wdraw_orig_yr4_rt)
    description: Percent withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.withdrawn_by.4yrs

  - dimension: wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.wdraw_4yr_trans_yr4_rt)
    description: Percent who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_4yr_by.4yrs

  - dimension: wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.wdraw_2yr_trans_yr4_rt)
    description: Percent who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_2yr_by.4yrs

  - dimension: enrl_orig_yr4_rt
    sql: float(${TABLE}.enrl_orig_yr4_rt)
    description: Percent still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.still_enrolled_by.4yrs

  - dimension: enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.enrl_4yr_trans_yr4_rt)
    description: Percent who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_4yr_by.4yrs

  - dimension: enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.enrl_2yr_trans_yr4_rt)
    description: Percent who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_2yr_by.4yrs

  - dimension: unkn_orig_yr4_rt
    sql: float(${TABLE}.unkn_orig_yr4_rt)
    description: Percent with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.unknown_by.4yrs

  - dimension: unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.unkn_4yr_trans_yr4_rt)
    description: Percent who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.transf_unknown_4yr_by.4yrs

  - dimension: unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.unkn_2yr_trans_yr4_rt)
    description: Percent who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.transf_unknown_2yr_by.4yrs

  - dimension: lo_inc_death_yr4_rt
    sql: float(${TABLE}.lo_inc_death_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.died_by.4yrs

  - dimension: lo_inc_comp_orig_yr4_rt
    sql: float(${TABLE}.lo_inc_comp_orig_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.completed_by.4yrs

  - dimension: lo_inc_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_comp_4yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_4yr_by.4yrs

  - dimension: lo_inc_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_comp_2yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_2yr_by.4yrs

  - dimension: lo_inc_wdraw_orig_yr4_rt
    sql: float(${TABLE}.lo_inc_wdraw_orig_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.withdrawn_by.4yrs

  - dimension: lo_inc_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_wdraw_4yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_4yr_by.4yrs

  - dimension: lo_inc_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_wdraw_2yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_2yr_by.4yrs

  - dimension: lo_inc_enrl_orig_yr4_rt
    sql: float(${TABLE}.lo_inc_enrl_orig_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.still_enrolled_by.4yrs

  - dimension: lo_inc_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_enrl_4yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_4yr_by.4yrs

  - dimension: lo_inc_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_enrl_2yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_2yr_by.4yrs

  - dimension: lo_inc_unkn_orig_yr4_rt
    sql: float(${TABLE}.lo_inc_unkn_orig_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.unknown_by.4yrs

  - dimension: lo_inc_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_unkn_4yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_4yr_by.4yrs

  - dimension: lo_inc_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.lo_inc_unkn_2yr_trans_yr4_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_2yr_by.4yrs

  - dimension: md_inc_death_yr4_rt
    sql: float(${TABLE}.md_inc_death_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.died_by.4yrs

  - dimension: md_inc_comp_orig_yr4_rt
    sql: float(${TABLE}.md_inc_comp_orig_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.completed_by.4yrs

  - dimension: md_inc_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_comp_4yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_4yr_by.4yrs

  - dimension: md_inc_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_comp_2yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_2yr_by.4yrs

  - dimension: md_inc_wdraw_orig_yr4_rt
    sql: float(${TABLE}.md_inc_wdraw_orig_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.withdrawn_by.4yrs

  - dimension: md_inc_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_wdraw_4yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_4yr_by.4yrs

  - dimension: md_inc_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_wdraw_2yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_2yr_by.4yrs

  - dimension: md_inc_enrl_orig_yr4_rt
    sql: float(${TABLE}.md_inc_enrl_orig_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.still_enrolled_by.4yrs

  - dimension: md_inc_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_enrl_4yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_4yr_by.4yrs

  - dimension: md_inc_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_enrl_2yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_2yr_by.4yrs

  - dimension: md_inc_unkn_orig_yr4_rt
    sql: float(${TABLE}.md_inc_unkn_orig_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.unknown_by.4yrs

  - dimension: md_inc_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_unkn_4yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_4yr_by.4yrs

  - dimension: md_inc_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.md_inc_unkn_2yr_trans_yr4_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_2yr_by.4yrs

  - dimension: hi_inc_death_yr4_rt
    sql: float(${TABLE}.hi_inc_death_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.died_by.4yrs

  - dimension: hi_inc_comp_orig_yr4_rt
    sql: float(${TABLE}.hi_inc_comp_orig_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.completed_by.4yrs

  - dimension: hi_inc_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_comp_4yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_4yr_by.4yrs

  - dimension: hi_inc_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_comp_2yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_2yr_by.4yrs

  - dimension: hi_inc_wdraw_orig_yr4_rt
    sql: float(${TABLE}.hi_inc_wdraw_orig_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.withdrawn_by.4yrs

  - dimension: hi_inc_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_wdraw_4yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_4yr_by.4yrs

  - dimension: hi_inc_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_wdraw_2yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_2yr_by.4yrs

  - dimension: hi_inc_enrl_orig_yr4_rt
    sql: float(${TABLE}.hi_inc_enrl_orig_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.still_enrolled_by.4yrs

  - dimension: hi_inc_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_enrl_4yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_4yr_by.4yrs

  - dimension: hi_inc_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_enrl_2yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_2yr_by.4yrs

  - dimension: hi_inc_unkn_orig_yr4_rt
    sql: float(${TABLE}.hi_inc_unkn_orig_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.unknown_by.4yrs

  - dimension: hi_inc_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_unkn_4yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_4yr_by.4yrs

  - dimension: hi_inc_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.hi_inc_unkn_2yr_trans_yr4_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_2yr_by.4yrs

  - dimension: dep_death_yr4_rt
    sql: float(${TABLE}.dep_death_yr4_rt)
    description: Percent of dependent students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.depend.died_by.4yrs

  - dimension: dep_comp_orig_yr4_rt
    sql: float(${TABLE}.dep_comp_orig_yr4_rt)
    description: Percent of dependent students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.depend.completed_by.4yrs

  - dimension: dep_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.dep_comp_4yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_4yr_by.4yrs

  - dimension: dep_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.dep_comp_2yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_2yr_by.4yrs

  - dimension: dep_wdraw_orig_yr4_rt
    sql: float(${TABLE}.dep_wdraw_orig_yr4_rt)
    description: Percent of dependent students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.depend.withdrawn_by.4yrs

  - dimension: dep_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.dep_wdraw_4yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_4yr_by.4yrs

  - dimension: dep_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.dep_wdraw_2yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_2yr_by.4yrs

  - dimension: dep_enrl_orig_yr4_rt
    sql: float(${TABLE}.dep_enrl_orig_yr4_rt)
    description: Percent of dependent students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.depend.still_enrolled_by.4yrs

  - dimension: dep_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.dep_enrl_4yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_4yr_by.4yrs

  - dimension: dep_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.dep_enrl_2yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_2yr_by.4yrs

  - dimension: dep_unkn_orig_yr4_rt
    sql: float(${TABLE}.dep_unkn_orig_yr4_rt)
    description: Percent of dependent students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.depend.unknown_by.4yrs

  - dimension: dep_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.dep_unkn_4yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_4yr_by.4yrs

  - dimension: dep_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.dep_unkn_2yr_trans_yr4_rt)
    description: Percent of dependent students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_2yr_by.4yrs

  - dimension: ind_death_yr4_rt
    sql: float(${TABLE}.ind_death_yr4_rt)
    description: Percent of independent students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.independ.died_by.4yrs

  - dimension: ind_comp_orig_yr4_rt
    sql: float(${TABLE}.ind_comp_orig_yr4_rt)
    description: Percent of independent students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.independ.completed_by.4yrs

  - dimension: ind_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.ind_comp_4yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_4yr_by.4yrs

  - dimension: ind_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.ind_comp_2yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_2yr_by.4yrs

  - dimension: ind_wdraw_orig_yr4_rt
    sql: float(${TABLE}.ind_wdraw_orig_yr4_rt)
    description: Percent of independent students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.independ.withdrawn_by.4yrs

  - dimension: ind_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.ind_wdraw_4yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_4yr_by.4yrs

  - dimension: ind_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.ind_wdraw_2yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_2yr_by.4yrs

  - dimension: ind_enrl_orig_yr4_rt
    sql: float(${TABLE}.ind_enrl_orig_yr4_rt)
    description: Percent of independent students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.independ.still_enrolled_by.4yrs

  - dimension: ind_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.ind_enrl_4yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_4yr_by.4yrs

  - dimension: ind_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.ind_enrl_2yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_2yr_by.4yrs

  - dimension: ind_unkn_orig_yr4_rt
    sql: float(${TABLE}.ind_unkn_orig_yr4_rt)
    description: Percent of independent students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.independ.unknown_by.4yrs

  - dimension: ind_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.ind_unkn_4yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_4yr_by.4yrs

  - dimension: ind_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.ind_unkn_2yr_trans_yr4_rt)
    description: Percent of independent students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_2yr_by.4yrs

  - dimension: female_death_yr4_rt
    sql: float(${TABLE}.female_death_yr4_rt)
    description: Percent of female students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.female.died_by.4yrs

  - dimension: female_comp_orig_yr4_rt
    sql: float(${TABLE}.female_comp_orig_yr4_rt)
    description: Percent of female students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.female.completed_by.4yrs

  - dimension: female_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.female_comp_4yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_4yr_by.4yrs

  - dimension: female_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.female_comp_2yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_2yr_by.4yrs

  - dimension: female_wdraw_orig_yr4_rt
    sql: float(${TABLE}.female_wdraw_orig_yr4_rt)
    description: Percent of female students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.female.withdrawn_by.4yrs

  - dimension: female_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.female_wdraw_4yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_4yr_by.4yrs

  - dimension: female_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.female_wdraw_2yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_2yr_by.4yrs

  - dimension: female_enrl_orig_yr4_rt
    sql: float(${TABLE}.female_enrl_orig_yr4_rt)
    description: Percent of female students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.female.still_enrolled_by.4yrs

  - dimension: female_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.female_enrl_4yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_4yr_by.4yrs

  - dimension: female_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.female_enrl_2yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_2yr_by.4yrs

  - dimension: female_unkn_orig_yr4_rt
    sql: float(${TABLE}.female_unkn_orig_yr4_rt)
    description: Percent of female students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.female.unknown_by.4yrs

  - dimension: female_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.female_unkn_4yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_4yr_by.4yrs

  - dimension: female_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.female_unkn_2yr_trans_yr4_rt)
    description: Percent of female students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_2yr_by.4yrs

  - dimension: male_death_yr4_rt
    sql: float(${TABLE}.male_death_yr4_rt)
    description: Percent of male students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.male.died_by.4yrs

  - dimension: male_comp_orig_yr4_rt
    sql: float(${TABLE}.male_comp_orig_yr4_rt)
    description: Percent of male students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.male.completed_by.4yrs

  - dimension: male_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.male_comp_4yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_4yr_by.4yrs

  - dimension: male_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.male_comp_2yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_2yr_by.4yrs

  - dimension: male_wdraw_orig_yr4_rt
    sql: float(${TABLE}.male_wdraw_orig_yr4_rt)
    description: Percent of male students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.male.withdrawn_by.4yrs

  - dimension: male_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.male_wdraw_4yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_4yr_by.4yrs

  - dimension: male_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.male_wdraw_2yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_2yr_by.4yrs

  - dimension: male_enrl_orig_yr4_rt
    sql: float(${TABLE}.male_enrl_orig_yr4_rt)
    description: Percent of male students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.male.still_enrolled_by.4yrs

  - dimension: male_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.male_enrl_4yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_4yr_by.4yrs

  - dimension: male_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.male_enrl_2yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_2yr_by.4yrs

  - dimension: male_unkn_orig_yr4_rt
    sql: float(${TABLE}.male_unkn_orig_yr4_rt)
    description: Percent of male students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.male.unknown_by.4yrs

  - dimension: male_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.male_unkn_4yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_4yr_by.4yrs

  - dimension: male_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.male_unkn_2yr_trans_yr4_rt)
    description: Percent of male students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_2yr_by.4yrs

  - dimension: pell_death_yr4_rt
    sql: float(${TABLE}.pell_death_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.died_by.4yrs

  - dimension: pell_comp_orig_yr4_rt
    sql: float(${TABLE}.pell_comp_orig_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who completed in 4 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.completed_by.4yrs

  - dimension: pell_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.pell_comp_4yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_4yr_by.4yrs

  - dimension: pell_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.pell_comp_2yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_2yr_by.4yrs

  - dimension: pell_wdraw_orig_yr4_rt
    sql: float(${TABLE}.pell_wdraw_orig_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and withdrew from original institution within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.withdrawn_by.4yrs

  - dimension: pell_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.pell_wdraw_4yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_4yr_by.4yrs

  - dimension: pell_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.pell_wdraw_2yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_2yr_by.4yrs

  - dimension: pell_enrl_orig_yr4_rt
    sql: float(${TABLE}.pell_enrl_orig_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.still_enrolled_by.4yrs

  - dimension: pell_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.pell_enrl_4yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_4yr_by.4yrs

  - dimension: pell_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.pell_enrl_2yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_2yr_by.4yrs

  - dimension: pell_unkn_orig_yr4_rt
    sql: float(${TABLE}.pell_unkn_orig_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.unknown_by.4yrs

  - dimension: pell_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.pell_unkn_4yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_4yr_by.4yrs

  - dimension: pell_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.pell_unkn_2yr_trans_yr4_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_2yr_by.4yrs

  - dimension: nopell_death_yr4_rt
    sql: float(${TABLE}.nopell_death_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.died_by.4yrs

  - dimension: nopell_comp_orig_yr4_rt
    sql: float(${TABLE}.nopell_comp_orig_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who completed in 4 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.completed_by.4yrs

  - dimension: nopell_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_comp_4yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_4yr_by.4yrs

  - dimension: nopell_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_comp_2yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_2yr_by.4yrs

  - dimension: nopell_wdraw_orig_yr4_rt
    sql: float(${TABLE}.nopell_wdraw_orig_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and withdrew from original institution within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.withdrawn_by.4yrs

  - dimension: nopell_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_wdraw_4yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_4yr_by.4yrs

  - dimension: nopell_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_wdraw_2yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_2yr_by.4yrs

  - dimension: nopell_enrl_orig_yr4_rt
    sql: float(${TABLE}.nopell_enrl_orig_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.still_enrolled_by.4yrs

  - dimension: nopell_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_enrl_4yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_4yr_by.4yrs

  - dimension: nopell_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_enrl_2yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_2yr_by.4yrs

  - dimension: nopell_unkn_orig_yr4_rt
    sql: float(${TABLE}.nopell_unkn_orig_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.unknown_by.4yrs

  - dimension: nopell_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_unkn_4yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_4yr_by.4yrs

  - dimension: nopell_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.nopell_unkn_2yr_trans_yr4_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_2yr_by.4yrs

  - dimension: loan_death_yr4_rt
    sql: float(${TABLE}.loan_death_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.died_by.4yrs

  - dimension: loan_comp_orig_yr4_rt
    sql: float(${TABLE}.loan_comp_orig_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who completed in 4 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.completed_by.4yrs

  - dimension: loan_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.loan_comp_4yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_4yr_by.4yrs

  - dimension: loan_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.loan_comp_2yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_2yr_by.4yrs

  - dimension: loan_wdraw_orig_yr4_rt
    sql: float(${TABLE}.loan_wdraw_orig_yr4_rt)
    description: Percent of students who received a federal loan at the institution and withdrew from original institution within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.withdrawn_by.4yrs

  - dimension: loan_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.loan_wdraw_4yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_4yr_by.4yrs

  - dimension: loan_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.loan_wdraw_2yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_2yr_by.4yrs

  - dimension: loan_enrl_orig_yr4_rt
    sql: float(${TABLE}.loan_enrl_orig_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.still_enrolled_by.4yrs

  - dimension: loan_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.loan_enrl_4yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_4yr_by.4yrs

  - dimension: loan_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.loan_enrl_2yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_2yr_by.4yrs

  - dimension: loan_unkn_orig_yr4_rt
    sql: float(${TABLE}.loan_unkn_orig_yr4_rt)
    description: Percent of students who received a federal loan at the institution and with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.unknown_by.4yrs

  - dimension: loan_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.loan_unkn_4yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_4yr_by.4yrs

  - dimension: loan_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.loan_unkn_2yr_trans_yr4_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_2yr_by.4yrs

  - dimension: noloan_death_yr4_rt
    sql: float(${TABLE}.noloan_death_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.died_by.4yrs

  - dimension: noloan_comp_orig_yr4_rt
    sql: float(${TABLE}.noloan_comp_orig_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who completed in 4 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.completed_by.4yrs

  - dimension: noloan_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_comp_4yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_4yr_by.4yrs

  - dimension: noloan_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_comp_2yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_2yr_by.4yrs

  - dimension: noloan_wdraw_orig_yr4_rt
    sql: float(${TABLE}.noloan_wdraw_orig_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and withdrew from original institution within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.withdrawn_by.4yrs

  - dimension: noloan_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_wdraw_4yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_4yr_by.4yrs

  - dimension: noloan_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_wdraw_2yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_2yr_by.4yrs

  - dimension: noloan_enrl_orig_yr4_rt
    sql: float(${TABLE}.noloan_enrl_orig_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.still_enrolled_by.4yrs

  - dimension: noloan_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_enrl_4yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_4yr_by.4yrs

  - dimension: noloan_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_enrl_2yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_2yr_by.4yrs

  - dimension: noloan_unkn_orig_yr4_rt
    sql: float(${TABLE}.noloan_unkn_orig_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.unknown_by.4yrs

  - dimension: noloan_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_unkn_4yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_4yr_by.4yrs

  - dimension: noloan_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.noloan_unkn_2yr_trans_yr4_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_2yr_by.4yrs

  - dimension: firstgen_death_yr4_rt
    sql: float(${TABLE}.firstgen_death_yr4_rt)
    description: Percent of first-generation students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.died_by.4yrs

  - dimension: firstgen_comp_orig_yr4_rt
    sql: float(${TABLE}.firstgen_comp_orig_yr4_rt)
    description: Percent of first-generation students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.completed_by.4yrs

  - dimension: firstgen_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_comp_4yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_4yr_by.4yrs

  - dimension: firstgen_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_comp_2yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_2yr_by.4yrs

  - dimension: firstgen_wdraw_orig_yr4_rt
    sql: float(${TABLE}.firstgen_wdraw_orig_yr4_rt)
    description: Percent of first-generation students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.withdrawn_by.4yrs

  - dimension: firstgen_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_wdraw_4yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_4yr_by.4yrs

  - dimension: firstgen_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_wdraw_2yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_2yr_by.4yrs

  - dimension: firstgen_enrl_orig_yr4_rt
    sql: float(${TABLE}.firstgen_enrl_orig_yr4_rt)
    description: Percent of first-generation students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.still_enrolled_by.4yrs

  - dimension: firstgen_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_enrl_4yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_4yr_by.4yrs

  - dimension: firstgen_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_enrl_2yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_2yr_by.4yrs

  - dimension: firstgen_unkn_orig_yr4_rt
    sql: float(${TABLE}.firstgen_unkn_orig_yr4_rt)
    description: Percent of first-generation students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.unknown_by.4yrs

  - dimension: firstgen_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_unkn_4yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_4yr_by.4yrs

  - dimension: firstgen_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.firstgen_unkn_2yr_trans_yr4_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_2yr_by.4yrs

  - dimension: not1stgen_death_yr4_rt
    sql: float(${TABLE}.not1stgen_death_yr4_rt)
    description: Percent of not-first-generation students who died within 4 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.died_by.4yrs

  - dimension: not1stgen_comp_orig_yr4_rt
    sql: float(${TABLE}.not1stgen_comp_orig_yr4_rt)
    description: Percent of not-first-generation students who completed within 4 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.completed_by.4yrs

  - dimension: not1stgen_comp_4yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_comp_4yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_4yr_by.4yrs

  - dimension: not1stgen_comp_2yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_comp_2yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and completed within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_2yr_by.4yrs

  - dimension: not1stgen_wdraw_orig_yr4_rt
    sql: float(${TABLE}.not1stgen_wdraw_orig_yr4_rt)
    description: Percent of not-first-generation students withdrawn from original institution within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.withdrawn_by.4yrs

  - dimension: not1stgen_wdraw_4yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_wdraw_4yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_4yr_by.4yrs

  - dimension: not1stgen_wdraw_2yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_wdraw_2yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and withdrew within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_2yr_by.4yrs

  - dimension: not1stgen_enrl_orig_yr4_rt
    sql: float(${TABLE}.not1stgen_enrl_orig_yr4_rt)
    description: Percent of not-first-generation students who were still enrolled at original institution within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.still_enrolled_by.4yrs

  - dimension: not1stgen_enrl_4yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_enrl_4yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_4yr_by.4yrs

  - dimension: not1stgen_enrl_2yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_enrl_2yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and were still enrolled within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_2yr_by.4yrs

  - dimension: not1stgen_unkn_orig_yr4_rt
    sql: float(${TABLE}.not1stgen_unkn_orig_yr4_rt)
    description: Percent of not-first-generation students with status unknown within 4 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.unknown_by.4yrs

  - dimension: not1stgen_unkn_4yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_unkn_4yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_4yr_by.4yrs

  - dimension: not1stgen_unkn_2yr_trans_yr4_rt
    sql: float(${TABLE}.not1stgen_unkn_2yr_trans_yr4_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and whose status is unknown within 4 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_2yr_by.4yrs

  - dimension: death_yr6_rt
    sql: float(${TABLE}.death_yr6_rt)
    description: Percent died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.died_by.6yrs

  - dimension: comp_orig_yr6_rt
    sql: float(${TABLE}.comp_orig_yr6_rt)
    description: Percent completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.completed_by.6yrs

  - dimension: comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.comp_4yr_trans_yr6_rt)
    description: Percent who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.transf_completed_4yr_by.6yrs

  - dimension: comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.comp_2yr_trans_yr6_rt)
    description: Percent who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.transf_completed_2yr_by.6yrs

  - dimension: wdraw_orig_yr6_rt
    sql: float(${TABLE}.wdraw_orig_yr6_rt)
    description: Percent withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.withdrawn_by.6yrs

  - dimension: wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.wdraw_4yr_trans_yr6_rt)
    description: Percent who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_4yr_by.6yrs

  - dimension: wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.wdraw_2yr_trans_yr6_rt)
    description: Percent who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_2yr_by.6yrs

  - dimension: enrl_orig_yr6_rt
    sql: float(${TABLE}.enrl_orig_yr6_rt)
    description: Percent still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.still_enrolled_by.6yrs

  - dimension: enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.enrl_4yr_trans_yr6_rt)
    description: Percent who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_4yr_by.6yrs

  - dimension: enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.enrl_2yr_trans_yr6_rt)
    description: Percent who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_2yr_by.6yrs

  - dimension: unkn_orig_yr6_rt
    sql: float(${TABLE}.unkn_orig_yr6_rt)
    description: Percent with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.unknown_by.6yrs

  - dimension: unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.unkn_4yr_trans_yr6_rt)
    description: Percent who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.transf_unknown_4yr_by.6yrs

  - dimension: unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.unkn_2yr_trans_yr6_rt)
    description: Percent who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.transf_unknown_2yr_by.6yrs

  - dimension: lo_inc_death_yr6_rt
    sql: float(${TABLE}.lo_inc_death_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.died_by.6yrs

  - dimension: lo_inc_comp_orig_yr6_rt
    sql: float(${TABLE}.lo_inc_comp_orig_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.completed_by.6yrs

  - dimension: lo_inc_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_comp_4yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_4yr_by.6yrs

  - dimension: lo_inc_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_comp_2yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_2yr_by.6yrs

  - dimension: lo_inc_wdraw_orig_yr6_rt
    sql: float(${TABLE}.lo_inc_wdraw_orig_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.withdrawn_by.6yrs

  - dimension: lo_inc_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_wdraw_4yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_4yr_by.6yrs

  - dimension: lo_inc_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_wdraw_2yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_2yr_by.6yrs

  - dimension: lo_inc_enrl_orig_yr6_rt
    sql: float(${TABLE}.lo_inc_enrl_orig_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.still_enrolled_by.6yrs

  - dimension: lo_inc_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_enrl_4yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_4yr_by.6yrs

  - dimension: lo_inc_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_enrl_2yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_2yr_by.6yrs

  - dimension: lo_inc_unkn_orig_yr6_rt
    sql: float(${TABLE}.lo_inc_unkn_orig_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.unknown_by.6yrs

  - dimension: lo_inc_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_unkn_4yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_4yr_by.6yrs

  - dimension: lo_inc_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.lo_inc_unkn_2yr_trans_yr6_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_2yr_by.6yrs

  - dimension: md_inc_death_yr6_rt
    sql: float(${TABLE}.md_inc_death_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.died_by.6yrs

  - dimension: md_inc_comp_orig_yr6_rt
    sql: float(${TABLE}.md_inc_comp_orig_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.completed_by.6yrs

  - dimension: md_inc_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_comp_4yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_4yr_by.6yrs

  - dimension: md_inc_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_comp_2yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_2yr_by.6yrs

  - dimension: md_inc_wdraw_orig_yr6_rt
    sql: float(${TABLE}.md_inc_wdraw_orig_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.withdrawn_by.6yrs

  - dimension: md_inc_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_wdraw_4yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_4yr_by.6yrs

  - dimension: md_inc_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_wdraw_2yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_2yr_by.6yrs

  - dimension: md_inc_enrl_orig_yr6_rt
    sql: float(${TABLE}.md_inc_enrl_orig_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.still_enrolled_by.6yrs

  - dimension: md_inc_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_enrl_4yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_4yr_by.6yrs

  - dimension: md_inc_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_enrl_2yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_2yr_by.6yrs

  - dimension: md_inc_unkn_orig_yr6_rt
    sql: float(${TABLE}.md_inc_unkn_orig_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.unknown_by.6yrs

  - dimension: md_inc_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_unkn_4yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_4yr_by.6yrs

  - dimension: md_inc_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.md_inc_unkn_2yr_trans_yr6_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_2yr_by.6yrs

  - dimension: hi_inc_death_yr6_rt
    sql: float(${TABLE}.hi_inc_death_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.died_by.6yrs

  - dimension: hi_inc_comp_orig_yr6_rt
    sql: float(${TABLE}.hi_inc_comp_orig_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.completed_by.6yrs

  - dimension: hi_inc_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_comp_4yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_4yr_by.6yrs

  - dimension: hi_inc_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_comp_2yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_2yr_by.6yrs

  - dimension: hi_inc_wdraw_orig_yr6_rt
    sql: float(${TABLE}.hi_inc_wdraw_orig_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.withdrawn_by.6yrs

  - dimension: hi_inc_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_wdraw_4yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_4yr_by.6yrs

  - dimension: hi_inc_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_wdraw_2yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_2yr_by.6yrs

  - dimension: hi_inc_enrl_orig_yr6_rt
    sql: float(${TABLE}.hi_inc_enrl_orig_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.still_enrolled_by.6yrs

  - dimension: hi_inc_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_enrl_4yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_4yr_by.6yrs

  - dimension: hi_inc_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_enrl_2yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_2yr_by.6yrs

  - dimension: hi_inc_unkn_orig_yr6_rt
    sql: float(${TABLE}.hi_inc_unkn_orig_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.unknown_by.6yrs

  - dimension: hi_inc_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_unkn_4yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_4yr_by.6yrs

  - dimension: hi_inc_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.hi_inc_unkn_2yr_trans_yr6_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_2yr_by.6yrs

  - dimension: dep_death_yr6_rt
    sql: float(${TABLE}.dep_death_yr6_rt)
    description: Percent of dependent students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.depend.died_by.6yrs

  - dimension: dep_comp_orig_yr6_rt
    sql: float(${TABLE}.dep_comp_orig_yr6_rt)
    description: Percent of dependent students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.depend.completed_by.6yrs

  - dimension: dep_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.dep_comp_4yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_4yr_by.6yrs

  - dimension: dep_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.dep_comp_2yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_2yr_by.6yrs

  - dimension: dep_wdraw_orig_yr6_rt
    sql: float(${TABLE}.dep_wdraw_orig_yr6_rt)
    description: Percent of dependent students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.depend.withdrawn_by.6yrs

  - dimension: dep_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.dep_wdraw_4yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_4yr_by.6yrs

  - dimension: dep_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.dep_wdraw_2yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_2yr_by.6yrs

  - dimension: dep_enrl_orig_yr6_rt
    sql: float(${TABLE}.dep_enrl_orig_yr6_rt)
    description: Percent of dependent students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.depend.still_enrolled_by.6yrs

  - dimension: dep_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.dep_enrl_4yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_4yr_by.6yrs

  - dimension: dep_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.dep_enrl_2yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_2yr_by.6yrs

  - dimension: dep_unkn_orig_yr6_rt
    sql: float(${TABLE}.dep_unkn_orig_yr6_rt)
    description: Percent of dependent students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.depend.unknown_by.6yrs

  - dimension: dep_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.dep_unkn_4yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_4yr_by.6yrs

  - dimension: dep_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.dep_unkn_2yr_trans_yr6_rt)
    description: Percent of dependent students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_2yr_by.6yrs

  - dimension: ind_death_yr6_rt
    sql: float(${TABLE}.ind_death_yr6_rt)
    description: Percent of independent students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.independ.died_by.6yrs

  - dimension: ind_comp_orig_yr6_rt
    sql: float(${TABLE}.ind_comp_orig_yr6_rt)
    description: Percent of independent students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.independ.completed_by.6yrs

  - dimension: ind_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.ind_comp_4yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_4yr_by.6yrs

  - dimension: ind_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.ind_comp_2yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_2yr_by.6yrs

  - dimension: ind_wdraw_orig_yr6_rt
    sql: float(${TABLE}.ind_wdraw_orig_yr6_rt)
    description: Percent of independent students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.independ.withdrawn_by.6yrs

  - dimension: ind_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.ind_wdraw_4yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_4yr_by.6yrs

  - dimension: ind_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.ind_wdraw_2yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_2yr_by.6yrs

  - dimension: ind_enrl_orig_yr6_rt
    sql: float(${TABLE}.ind_enrl_orig_yr6_rt)
    description: Percent of independent students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.independ.still_enrolled_by.6yrs

  - dimension: ind_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.ind_enrl_4yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_4yr_by.6yrs

  - dimension: ind_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.ind_enrl_2yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_2yr_by.6yrs

  - dimension: ind_unkn_orig_yr6_rt
    sql: float(${TABLE}.ind_unkn_orig_yr6_rt)
    description: Percent of independent students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.independ.unknown_by.6yrs

  - dimension: ind_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.ind_unkn_4yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_4yr_by.6yrs

  - dimension: ind_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.ind_unkn_2yr_trans_yr6_rt)
    description: Percent of independent students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_2yr_by.6yrs

  - dimension: female_death_yr6_rt
    sql: float(${TABLE}.female_death_yr6_rt)
    description: Percent of female students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.female.died_by.6yrs

  - dimension: female_comp_orig_yr6_rt
    sql: float(${TABLE}.female_comp_orig_yr6_rt)
    description: Percent of female students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.female.completed_by.6yrs

  - dimension: female_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.female_comp_4yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_4yr_by.6yrs

  - dimension: female_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.female_comp_2yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_2yr_by.6yrs

  - dimension: female_wdraw_orig_yr6_rt
    sql: float(${TABLE}.female_wdraw_orig_yr6_rt)
    description: Percent of female students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.female.withdrawn_by.6yrs

  - dimension: female_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.female_wdraw_4yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_4yr_by.6yrs

  - dimension: female_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.female_wdraw_2yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_2yr_by.6yrs

  - dimension: female_enrl_orig_yr6_rt
    sql: float(${TABLE}.female_enrl_orig_yr6_rt)
    description: Percent of female students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.female.still_enrolled_by.6yrs

  - dimension: female_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.female_enrl_4yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_4yr_by.6yrs

  - dimension: female_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.female_enrl_2yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_2yr_by.6yrs

  - dimension: female_unkn_orig_yr6_rt
    sql: float(${TABLE}.female_unkn_orig_yr6_rt)
    description: Percent of female students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.female.unknown_by.6yrs

  - dimension: female_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.female_unkn_4yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_4yr_by.6yrs

  - dimension: female_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.female_unkn_2yr_trans_yr6_rt)
    description: Percent of female students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_2yr_by.6yrs

  - dimension: male_death_yr6_rt
    sql: float(${TABLE}.male_death_yr6_rt)
    description: Percent of male students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.male.died_by.6yrs

  - dimension: male_comp_orig_yr6_rt
    sql: float(${TABLE}.male_comp_orig_yr6_rt)
    description: Percent of male students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.male.completed_by.6yrs

  - dimension: male_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.male_comp_4yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_4yr_by.6yrs

  - dimension: male_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.male_comp_2yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_2yr_by.6yrs

  - dimension: male_wdraw_orig_yr6_rt
    sql: float(${TABLE}.male_wdraw_orig_yr6_rt)
    description: Percent of male students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.male.withdrawn_by.6yrs

  - dimension: male_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.male_wdraw_4yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_4yr_by.6yrs

  - dimension: male_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.male_wdraw_2yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_2yr_by.6yrs

  - dimension: male_enrl_orig_yr6_rt
    sql: float(${TABLE}.male_enrl_orig_yr6_rt)
    description: Percent of male students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.male.still_enrolled_by.6yrs

  - dimension: male_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.male_enrl_4yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_4yr_by.6yrs

  - dimension: male_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.male_enrl_2yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_2yr_by.6yrs

  - dimension: male_unkn_orig_yr6_rt
    sql: float(${TABLE}.male_unkn_orig_yr6_rt)
    description: Percent of male students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.male.unknown_by.6yrs

  - dimension: male_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.male_unkn_4yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_4yr_by.6yrs

  - dimension: male_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.male_unkn_2yr_trans_yr6_rt)
    description: Percent of male students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_2yr_by.6yrs

  - dimension: pell_death_yr6_rt
    sql: float(${TABLE}.pell_death_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.died_by.6yrs

  - dimension: pell_comp_orig_yr6_rt
    sql: float(${TABLE}.pell_comp_orig_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who completed in 6 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.completed_by.6yrs

  - dimension: pell_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.pell_comp_4yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_4yr_by.6yrs

  - dimension: pell_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.pell_comp_2yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_2yr_by.6yrs

  - dimension: pell_wdraw_orig_yr6_rt
    sql: float(${TABLE}.pell_wdraw_orig_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and withdrew from original institution within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.withdrawn_by.6yrs

  - dimension: pell_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.pell_wdraw_4yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_4yr_by.6yrs

  - dimension: pell_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.pell_wdraw_2yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_2yr_by.6yrs

  - dimension: pell_enrl_orig_yr6_rt
    sql: float(${TABLE}.pell_enrl_orig_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.still_enrolled_by.6yrs

  - dimension: pell_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.pell_enrl_4yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_4yr_by.6yrs

  - dimension: pell_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.pell_enrl_2yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_2yr_by.6yrs

  - dimension: pell_unkn_orig_yr6_rt
    sql: float(${TABLE}.pell_unkn_orig_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.unknown_by.6yrs

  - dimension: pell_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.pell_unkn_4yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_4yr_by.6yrs

  - dimension: pell_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.pell_unkn_2yr_trans_yr6_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_2yr_by.6yrs

  - dimension: nopell_death_yr6_rt
    sql: float(${TABLE}.nopell_death_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.died_by.6yrs

  - dimension: nopell_comp_orig_yr6_rt
    sql: float(${TABLE}.nopell_comp_orig_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who completed in 6 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.completed_by.6yrs

  - dimension: nopell_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_comp_4yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_4yr_by.6yrs

  - dimension: nopell_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_comp_2yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_2yr_by.6yrs

  - dimension: nopell_wdraw_orig_yr6_rt
    sql: float(${TABLE}.nopell_wdraw_orig_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and withdrew from original institution within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.withdrawn_by.6yrs

  - dimension: nopell_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_wdraw_4yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_4yr_by.6yrs

  - dimension: nopell_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_wdraw_2yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_2yr_by.6yrs

  - dimension: nopell_enrl_orig_yr6_rt
    sql: float(${TABLE}.nopell_enrl_orig_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.still_enrolled_by.6yrs

  - dimension: nopell_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_enrl_4yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_4yr_by.6yrs

  - dimension: nopell_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_enrl_2yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_2yr_by.6yrs

  - dimension: nopell_unkn_orig_yr6_rt
    sql: float(${TABLE}.nopell_unkn_orig_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.unknown_by.6yrs

  - dimension: nopell_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_unkn_4yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_4yr_by.6yrs

  - dimension: nopell_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.nopell_unkn_2yr_trans_yr6_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_2yr_by.6yrs

  - dimension: loan_death_yr6_rt
    sql: float(${TABLE}.loan_death_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.died_by.6yrs

  - dimension: loan_comp_orig_yr6_rt
    sql: float(${TABLE}.loan_comp_orig_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who completed in 6 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.completed_by.6yrs

  - dimension: loan_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.loan_comp_4yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_4yr_by.6yrs

  - dimension: loan_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.loan_comp_2yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_2yr_by.6yrs

  - dimension: loan_wdraw_orig_yr6_rt
    sql: float(${TABLE}.loan_wdraw_orig_yr6_rt)
    description: Percent of students who received a federal loan at the institution and withdrew from original institution within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.withdrawn_by.6yrs

  - dimension: loan_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.loan_wdraw_4yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_4yr_by.6yrs

  - dimension: loan_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.loan_wdraw_2yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_2yr_by.6yrs

  - dimension: loan_enrl_orig_yr6_rt
    sql: float(${TABLE}.loan_enrl_orig_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.still_enrolled_by.6yrs

  - dimension: loan_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.loan_enrl_4yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_4yr_by.6yrs

  - dimension: loan_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.loan_enrl_2yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_2yr_by.6yrs

  - dimension: loan_unkn_orig_yr6_rt
    sql: float(${TABLE}.loan_unkn_orig_yr6_rt)
    description: Percent of students who received a federal loan at the institution and with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.unknown_by.6yrs

  - dimension: loan_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.loan_unkn_4yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_4yr_by.6yrs

  - dimension: loan_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.loan_unkn_2yr_trans_yr6_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_2yr_by.6yrs

  - dimension: noloan_death_yr6_rt
    sql: float(${TABLE}.noloan_death_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.died_by.6yrs

  - dimension: noloan_comp_orig_yr6_rt
    sql: float(${TABLE}.noloan_comp_orig_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who completed in 6 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.completed_by.6yrs

  - dimension: noloan_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_comp_4yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_4yr_by.6yrs

  - dimension: noloan_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_comp_2yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_2yr_by.6yrs

  - dimension: noloan_wdraw_orig_yr6_rt
    sql: float(${TABLE}.noloan_wdraw_orig_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and withdrew from original institution within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.withdrawn_by.6yrs

  - dimension: noloan_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_wdraw_4yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_4yr_by.6yrs

  - dimension: noloan_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_wdraw_2yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_2yr_by.6yrs

  - dimension: noloan_enrl_orig_yr6_rt
    sql: float(${TABLE}.noloan_enrl_orig_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.still_enrolled_by.6yrs

  - dimension: noloan_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_enrl_4yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_4yr_by.6yrs

  - dimension: noloan_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_enrl_2yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_2yr_by.6yrs

  - dimension: noloan_unkn_orig_yr6_rt
    sql: float(${TABLE}.noloan_unkn_orig_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.unknown_by.6yrs

  - dimension: noloan_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_unkn_4yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_4yr_by.6yrs

  - dimension: noloan_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.noloan_unkn_2yr_trans_yr6_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_2yr_by.6yrs

  - dimension: firstgen_death_yr6_rt
    sql: float(${TABLE}.firstgen_death_yr6_rt)
    description: Percent of first-generation students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.died_by.6yrs

  - dimension: firstgen_comp_orig_yr6_rt
    sql: float(${TABLE}.firstgen_comp_orig_yr6_rt)
    description: Percent of first-generation students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.completed_by.6yrs

  - dimension: firstgen_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_comp_4yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_4yr_by.6yrs

  - dimension: firstgen_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_comp_2yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_2yr_by.6yrs

  - dimension: firstgen_wdraw_orig_yr6_rt
    sql: float(${TABLE}.firstgen_wdraw_orig_yr6_rt)
    description: Percent of first-generation students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.withdrawn_by.6yrs

  - dimension: firstgen_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_wdraw_4yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_4yr_by.6yrs

  - dimension: firstgen_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_wdraw_2yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_2yr_by.6yrs

  - dimension: firstgen_enrl_orig_yr6_rt
    sql: float(${TABLE}.firstgen_enrl_orig_yr6_rt)
    description: Percent of first-generation students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.still_enrolled_by.6yrs

  - dimension: firstgen_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_enrl_4yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_4yr_by.6yrs

  - dimension: firstgen_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_enrl_2yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_2yr_by.6yrs

  - dimension: firstgen_unkn_orig_yr6_rt
    sql: float(${TABLE}.firstgen_unkn_orig_yr6_rt)
    description: Percent of first-generation students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.unknown_by.6yrs

  - dimension: firstgen_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_unkn_4yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_4yr_by.6yrs

  - dimension: firstgen_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.firstgen_unkn_2yr_trans_yr6_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_2yr_by.6yrs

  - dimension: not1stgen_death_yr6_rt
    sql: float(${TABLE}.not1stgen_death_yr6_rt)
    description: Percent of not-first-generation students who died within 6 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.died_by.6yrs

  - dimension: not1stgen_comp_orig_yr6_rt
    sql: float(${TABLE}.not1stgen_comp_orig_yr6_rt)
    description: Percent of not-first-generation students who completed within 6 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.completed_by.6yrs

  - dimension: not1stgen_comp_4yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_comp_4yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_4yr_by.6yrs

  - dimension: not1stgen_comp_2yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_comp_2yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and completed within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_2yr_by.6yrs

  - dimension: not1stgen_wdraw_orig_yr6_rt
    sql: float(${TABLE}.not1stgen_wdraw_orig_yr6_rt)
    description: Percent of not-first-generation students withdrawn from original institution within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.withdrawn_by.6yrs

  - dimension: not1stgen_wdraw_4yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_wdraw_4yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_4yr_by.6yrs

  - dimension: not1stgen_wdraw_2yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_wdraw_2yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and withdrew within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_2yr_by.6yrs

  - dimension: not1stgen_enrl_orig_yr6_rt
    sql: float(${TABLE}.not1stgen_enrl_orig_yr6_rt)
    description: Percent of not-first-generation students who were still enrolled at original institution within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.still_enrolled_by.6yrs

  - dimension: not1stgen_enrl_4yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_enrl_4yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_4yr_by.6yrs

  - dimension: not1stgen_enrl_2yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_enrl_2yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and were still enrolled within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_2yr_by.6yrs

  - dimension: not1stgen_unkn_orig_yr6_rt
    sql: float(${TABLE}.not1stgen_unkn_orig_yr6_rt)
    description: Percent of not-first-generation students with status unknown within 6 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.unknown_by.6yrs

  - dimension: not1stgen_unkn_4yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_unkn_4yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_4yr_by.6yrs

  - dimension: not1stgen_unkn_2yr_trans_yr6_rt
    sql: float(${TABLE}.not1stgen_unkn_2yr_trans_yr6_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and whose status is unknown within 6 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_2yr_by.6yrs

  - dimension: death_yr8_rt
    sql: float(${TABLE}.death_yr8_rt)
    description: Percent died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.died_by.8yrs

  - dimension: comp_orig_yr8_rt
    sql: float(${TABLE}.comp_orig_yr8_rt)
    description: Percent completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.completed_by.8yrs

  - dimension: comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.comp_4yr_trans_yr8_rt)
    description: Percent who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.transf_completed_4yr_by.8yrs

  - dimension: comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.comp_2yr_trans_yr8_rt)
    description: Percent who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.transf_completed_2yr_by.8yrs

  - dimension: wdraw_orig_yr8_rt
    sql: float(${TABLE}.wdraw_orig_yr8_rt)
    description: Percent withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.withdrawn_by.8yrs

  - dimension: wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.wdraw_4yr_trans_yr8_rt)
    description: Percent who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_4yr_by.8yrs

  - dimension: wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.wdraw_2yr_trans_yr8_rt)
    description: Percent who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.transf_withdrawn_2yr_by.8yrs

  - dimension: enrl_orig_yr8_rt
    sql: float(${TABLE}.enrl_orig_yr8_rt)
    description: Percent still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.still_enrolled_by.8yrs

  - dimension: enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.enrl_4yr_trans_yr8_rt)
    description: Percent who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_4yr_by.8yrs

  - dimension: enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.enrl_2yr_trans_yr8_rt)
    description: Percent who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.transf_still_enrolled_2yr_by.8yrs

  - dimension: unkn_orig_yr8_rt
    sql: float(${TABLE}.unkn_orig_yr8_rt)
    description: Percent with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.unknown_by.8yrs

  - dimension: unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.unkn_4yr_trans_yr8_rt)
    description: Percent who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.transf_unknown_4yr_by.8yrs

  - dimension: unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.unkn_2yr_trans_yr8_rt)
    description: Percent who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.transf_unknown_2yr_by.8yrs

  - dimension: lo_inc_death_yr8_rt
    sql: float(${TABLE}.lo_inc_death_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.died_by.8yrs

  - dimension: lo_inc_comp_orig_yr8_rt
    sql: float(${TABLE}.lo_inc_comp_orig_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.completed_by.8yrs

  - dimension: lo_inc_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_comp_4yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_4yr_by.8yrs

  - dimension: lo_inc_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_comp_2yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_completed_2yr_by.8yrs

  - dimension: lo_inc_wdraw_orig_yr8_rt
    sql: float(${TABLE}.lo_inc_wdraw_orig_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.withdrawn_by.8yrs

  - dimension: lo_inc_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_wdraw_4yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_4yr_by.8yrs

  - dimension: lo_inc_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_wdraw_2yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_withdrawn_2yr_by.8yrs

  - dimension: lo_inc_enrl_orig_yr8_rt
    sql: float(${TABLE}.lo_inc_enrl_orig_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.still_enrolled_by.8yrs

  - dimension: lo_inc_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_enrl_4yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_4yr_by.8yrs

  - dimension: lo_inc_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_enrl_2yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_still_enrolled_2yr_by.8yrs

  - dimension: lo_inc_unkn_orig_yr8_rt
    sql: float(${TABLE}.lo_inc_unkn_orig_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.low_inc.unknown_by.8yrs

  - dimension: lo_inc_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_unkn_4yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_4yr_by.8yrs

  - dimension: lo_inc_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.lo_inc_unkn_2yr_trans_yr8_rt)
    description: Percent of low-income (less than $30,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.low_inc.transf_unknown_2yr_by.8yrs

  - dimension: md_inc_death_yr8_rt
    sql: float(${TABLE}.md_inc_death_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.died_by.8yrs

  - dimension: md_inc_comp_orig_yr8_rt
    sql: float(${TABLE}.md_inc_comp_orig_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.completed_by.8yrs

  - dimension: md_inc_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_comp_4yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_4yr_by.8yrs

  - dimension: md_inc_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_comp_2yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_completed_2yr_by.8yrs

  - dimension: md_inc_wdraw_orig_yr8_rt
    sql: float(${TABLE}.md_inc_wdraw_orig_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.withdrawn_by.8yrs

  - dimension: md_inc_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_wdraw_4yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_4yr_by.8yrs

  - dimension: md_inc_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_wdraw_2yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_withdrawn_2yr_by.8yrs

  - dimension: md_inc_enrl_orig_yr8_rt
    sql: float(${TABLE}.md_inc_enrl_orig_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.still_enrolled_by.8yrs

  - dimension: md_inc_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_enrl_4yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_4yr_by.8yrs

  - dimension: md_inc_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_enrl_2yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_still_enrolled_2yr_by.8yrs

  - dimension: md_inc_unkn_orig_yr8_rt
    sql: float(${TABLE}.md_inc_unkn_orig_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.mid_inc.unknown_by.8yrs

  - dimension: md_inc_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_unkn_4yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_4yr_by.8yrs

  - dimension: md_inc_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.md_inc_unkn_2yr_trans_yr8_rt)
    description: Percent of middle-income (between $30,000 and $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.mid_inc.transf_unknown_2yr_by.8yrs

  - dimension: hi_inc_death_yr8_rt
    sql: float(${TABLE}.hi_inc_death_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.died_by.8yrs

  - dimension: hi_inc_comp_orig_yr8_rt
    sql: float(${TABLE}.hi_inc_comp_orig_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.completed_by.8yrs

  - dimension: hi_inc_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_comp_4yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_4yr_by.8yrs

  - dimension: hi_inc_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_comp_2yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_completed_2yr_by.8yrs

  - dimension: hi_inc_wdraw_orig_yr8_rt
    sql: float(${TABLE}.hi_inc_wdraw_orig_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.withdrawn_by.8yrs

  - dimension: hi_inc_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_wdraw_4yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_4yr_by.8yrs

  - dimension: hi_inc_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_wdraw_2yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_withdrawn_2yr_by.8yrs

  - dimension: hi_inc_enrl_orig_yr8_rt
    sql: float(${TABLE}.hi_inc_enrl_orig_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.still_enrolled_by.8yrs

  - dimension: hi_inc_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_enrl_4yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_4yr_by.8yrs

  - dimension: hi_inc_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_enrl_2yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_still_enrolled_2yr_by.8yrs

  - dimension: hi_inc_unkn_orig_yr8_rt
    sql: float(${TABLE}.hi_inc_unkn_orig_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.high_inc.unknown_by.8yrs

  - dimension: hi_inc_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_unkn_4yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_4yr_by.8yrs

  - dimension: hi_inc_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.hi_inc_unkn_2yr_trans_yr8_rt)
    description: Percent of high-income (above $75,000 in nominal family income) students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.high_inc.transf_unknown_2yr_by.8yrs

  - dimension: dep_death_yr8_rt
    sql: float(${TABLE}.dep_death_yr8_rt)
    description: Percent of dependent students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.depend.died_by.8yrs

  - dimension: dep_comp_orig_yr8_rt
    sql: float(${TABLE}.dep_comp_orig_yr8_rt)
    description: Percent of dependent students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.depend.completed_by.8yrs

  - dimension: dep_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.dep_comp_4yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_4yr_by.8yrs

  - dimension: dep_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.dep_comp_2yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_completed_2yr_by.8yrs

  - dimension: dep_wdraw_orig_yr8_rt
    sql: float(${TABLE}.dep_wdraw_orig_yr8_rt)
    description: Percent of dependent students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.depend.withdrawn_by.8yrs

  - dimension: dep_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.dep_wdraw_4yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_4yr_by.8yrs

  - dimension: dep_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.dep_wdraw_2yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_withdrawn_2yr_by.8yrs

  - dimension: dep_enrl_orig_yr8_rt
    sql: float(${TABLE}.dep_enrl_orig_yr8_rt)
    description: Percent of dependent students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.depend.still_enrolled_by.8yrs

  - dimension: dep_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.dep_enrl_4yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_4yr_by.8yrs

  - dimension: dep_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.dep_enrl_2yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_still_enrolled_2yr_by.8yrs

  - dimension: dep_unkn_orig_yr8_rt
    sql: float(${TABLE}.dep_unkn_orig_yr8_rt)
    description: Percent of dependent students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.depend.unknown_by.8yrs

  - dimension: dep_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.dep_unkn_4yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_4yr_by.8yrs

  - dimension: dep_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.dep_unkn_2yr_trans_yr8_rt)
    description: Percent of dependent students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.depend.transf_unknown_2yr_by.8yrs

  - dimension: ind_death_yr8_rt
    sql: float(${TABLE}.ind_death_yr8_rt)
    description: Percent of independent students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.independ.died_by.8yrs

  - dimension: ind_comp_orig_yr8_rt
    sql: float(${TABLE}.ind_comp_orig_yr8_rt)
    description: Percent of independent students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.independ.completed_by.8yrs

  - dimension: ind_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.ind_comp_4yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_4yr_by.8yrs

  - dimension: ind_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.ind_comp_2yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_completed_2yr_by.8yrs

  - dimension: ind_wdraw_orig_yr8_rt
    sql: float(${TABLE}.ind_wdraw_orig_yr8_rt)
    description: Percent of independent students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.independ.withdrawn_by.8yrs

  - dimension: ind_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.ind_wdraw_4yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_4yr_by.8yrs

  - dimension: ind_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.ind_wdraw_2yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_withdrawn_2yr_by.8yrs

  - dimension: ind_enrl_orig_yr8_rt
    sql: float(${TABLE}.ind_enrl_orig_yr8_rt)
    description: Percent of independent students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.independ.still_enrolled_by.8yrs

  - dimension: ind_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.ind_enrl_4yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_4yr_by.8yrs

  - dimension: ind_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.ind_enrl_2yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_still_enrolled_2yr_by.8yrs

  - dimension: ind_unkn_orig_yr8_rt
    sql: float(${TABLE}.ind_unkn_orig_yr8_rt)
    description: Percent of independent students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.independ.unknown_by.8yrs

  - dimension: ind_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.ind_unkn_4yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_4yr_by.8yrs

  - dimension: ind_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.ind_unkn_2yr_trans_yr8_rt)
    description: Percent of independent students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.independ.transf_unknown_2yr_by.8yrs

  - dimension: female_death_yr8_rt
    sql: float(${TABLE}.female_death_yr8_rt)
    description: Percent of female students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.female.died_by.8yrs

  - dimension: female_comp_orig_yr8_rt
    sql: float(${TABLE}.female_comp_orig_yr8_rt)
    description: Percent of female students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.female.completed_by.8yrs

  - dimension: female_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.female_comp_4yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_4yr_by.8yrs

  - dimension: female_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.female_comp_2yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_completed_2yr_by.8yrs

  - dimension: female_wdraw_orig_yr8_rt
    sql: float(${TABLE}.female_wdraw_orig_yr8_rt)
    description: Percent of female students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.female.withdrawn_by.8yrs

  - dimension: female_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.female_wdraw_4yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_4yr_by.8yrs

  - dimension: female_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.female_wdraw_2yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_withdrawn_2yr_by.8yrs

  - dimension: female_enrl_orig_yr8_rt
    sql: float(${TABLE}.female_enrl_orig_yr8_rt)
    description: Percent of female students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.female.still_enrolled_by.8yrs

  - dimension: female_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.female_enrl_4yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_4yr_by.8yrs

  - dimension: female_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.female_enrl_2yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_still_enrolled_2yr_by.8yrs

  - dimension: female_unkn_orig_yr8_rt
    sql: float(${TABLE}.female_unkn_orig_yr8_rt)
    description: Percent of female students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.female.unknown_by.8yrs

  - dimension: female_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.female_unkn_4yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_4yr_by.8yrs

  - dimension: female_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.female_unkn_2yr_trans_yr8_rt)
    description: Percent of female students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.female.transf_unknown_2yr_by.8yrs

  - dimension: male_death_yr8_rt
    sql: float(${TABLE}.male_death_yr8_rt)
    description: Percent of male students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.male.died_by.8yrs

  - dimension: male_comp_orig_yr8_rt
    sql: float(${TABLE}.male_comp_orig_yr8_rt)
    description: Percent of male students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.male.completed_by.8yrs

  - dimension: male_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.male_comp_4yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_4yr_by.8yrs

  - dimension: male_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.male_comp_2yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_completed_2yr_by.8yrs

  - dimension: male_wdraw_orig_yr8_rt
    sql: float(${TABLE}.male_wdraw_orig_yr8_rt)
    description: Percent of male students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.male.withdrawn_by.8yrs

  - dimension: male_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.male_wdraw_4yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_4yr_by.8yrs

  - dimension: male_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.male_wdraw_2yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_withdrawn_2yr_by.8yrs

  - dimension: male_enrl_orig_yr8_rt
    sql: float(${TABLE}.male_enrl_orig_yr8_rt)
    description: Percent of male students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.male.still_enrolled_by.8yrs

  - dimension: male_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.male_enrl_4yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_4yr_by.8yrs

  - dimension: male_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.male_enrl_2yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_still_enrolled_2yr_by.8yrs

  - dimension: male_unkn_orig_yr8_rt
    sql: float(${TABLE}.male_unkn_orig_yr8_rt)
    description: Percent of male students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.male.unknown_by.8yrs

  - dimension: male_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.male_unkn_4yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_4yr_by.8yrs

  - dimension: male_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.male_unkn_2yr_trans_yr8_rt)
    description: Percent of male students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.male.transf_unknown_2yr_by.8yrs

  - dimension: pell_death_yr8_rt
    sql: float(${TABLE}.pell_death_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.died_by.8yrs

  - dimension: pell_comp_orig_yr8_rt
    sql: float(${TABLE}.pell_comp_orig_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who completed in 8 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.completed_by.8yrs

  - dimension: pell_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.pell_comp_4yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_4yr_by.8yrs

  - dimension: pell_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.pell_comp_2yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_completed_2yr_by.8yrs

  - dimension: pell_wdraw_orig_yr8_rt
    sql: float(${TABLE}.pell_wdraw_orig_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and withdrew from original institution within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.withdrawn_by.8yrs

  - dimension: pell_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.pell_wdraw_4yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_4yr_by.8yrs

  - dimension: pell_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.pell_wdraw_2yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_withdrawn_2yr_by.8yrs

  - dimension: pell_enrl_orig_yr8_rt
    sql: float(${TABLE}.pell_enrl_orig_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.still_enrolled_by.8yrs

  - dimension: pell_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.pell_enrl_4yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_4yr_by.8yrs

  - dimension: pell_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.pell_enrl_2yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_still_enrolled_2yr_by.8yrs

  - dimension: pell_unkn_orig_yr8_rt
    sql: float(${TABLE}.pell_unkn_orig_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.pell_recip.unknown_by.8yrs

  - dimension: pell_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.pell_unkn_4yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_4yr_by.8yrs

  - dimension: pell_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.pell_unkn_2yr_trans_yr8_rt)
    description: Percent of students who received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.pell_recip.transf_unknown_2yr_by.8yrs

  - dimension: nopell_death_yr8_rt
    sql: float(${TABLE}.nopell_death_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.died_by.8yrs

  - dimension: nopell_comp_orig_yr8_rt
    sql: float(${TABLE}.nopell_comp_orig_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who completed in 8 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.completed_by.8yrs

  - dimension: nopell_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_comp_4yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_4yr_by.8yrs

  - dimension: nopell_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_comp_2yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_completed_2yr_by.8yrs

  - dimension: nopell_wdraw_orig_yr8_rt
    sql: float(${TABLE}.nopell_wdraw_orig_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and withdrew from original institution within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.withdrawn_by.8yrs

  - dimension: nopell_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_wdraw_4yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_4yr_by.8yrs

  - dimension: nopell_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_wdraw_2yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_withdrawn_2yr_by.8yrs

  - dimension: nopell_enrl_orig_yr8_rt
    sql: float(${TABLE}.nopell_enrl_orig_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.still_enrolled_by.8yrs

  - dimension: nopell_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_enrl_4yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_4yr_by.8yrs

  - dimension: nopell_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_enrl_2yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_still_enrolled_2yr_by.8yrs

  - dimension: nopell_unkn_orig_yr8_rt
    sql: float(${TABLE}.nopell_unkn_orig_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.no_pell.unknown_by.8yrs

  - dimension: nopell_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_unkn_4yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_4yr_by.8yrs

  - dimension: nopell_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.nopell_unkn_2yr_trans_yr8_rt)
    description: Percent of students who never received a Pell Grant at the institution and who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.no_pell.transf_unknown_2yr_by.8yrs

  - dimension: loan_death_yr8_rt
    sql: float(${TABLE}.loan_death_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.died_by.8yrs

  - dimension: loan_comp_orig_yr8_rt
    sql: float(${TABLE}.loan_comp_orig_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who completed in 8 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.completed_by.8yrs

  - dimension: loan_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.loan_comp_4yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_4yr_by.8yrs

  - dimension: loan_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.loan_comp_2yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_completed_2yr_by.8yrs

  - dimension: loan_wdraw_orig_yr8_rt
    sql: float(${TABLE}.loan_wdraw_orig_yr8_rt)
    description: Percent of students who received a federal loan at the institution and withdrew from original institution within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.withdrawn_by.8yrs

  - dimension: loan_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.loan_wdraw_4yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_4yr_by.8yrs

  - dimension: loan_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.loan_wdraw_2yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_withdrawn_2yr_by.8yrs

  - dimension: loan_enrl_orig_yr8_rt
    sql: float(${TABLE}.loan_enrl_orig_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.still_enrolled_by.8yrs

  - dimension: loan_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.loan_enrl_4yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_4yr_by.8yrs

  - dimension: loan_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.loan_enrl_2yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_still_enrolled_2yr_by.8yrs

  - dimension: loan_unkn_orig_yr8_rt
    sql: float(${TABLE}.loan_unkn_orig_yr8_rt)
    description: Percent of students who received a federal loan at the institution and with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.loan_recip.unknown_by.8yrs

  - dimension: loan_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.loan_unkn_4yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_4yr_by.8yrs

  - dimension: loan_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.loan_unkn_2yr_trans_yr8_rt)
    description: Percent of students who received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.loan_recip.transf_unknown_2yr_by.8yrs

  - dimension: noloan_death_yr8_rt
    sql: float(${TABLE}.noloan_death_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.died_by.8yrs

  - dimension: noloan_comp_orig_yr8_rt
    sql: float(${TABLE}.noloan_comp_orig_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who completed in 8 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.completed_by.8yrs

  - dimension: noloan_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_comp_4yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_4yr_by.8yrs

  - dimension: noloan_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_comp_2yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_completed_2yr_by.8yrs

  - dimension: noloan_wdraw_orig_yr8_rt
    sql: float(${TABLE}.noloan_wdraw_orig_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and withdrew from original institution within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.withdrawn_by.8yrs

  - dimension: noloan_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_wdraw_4yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_4yr_by.8yrs

  - dimension: noloan_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_wdraw_2yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_withdrawn_2yr_by.8yrs

  - dimension: noloan_enrl_orig_yr8_rt
    sql: float(${TABLE}.noloan_enrl_orig_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.still_enrolled_by.8yrs

  - dimension: noloan_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_enrl_4yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_4yr_by.8yrs

  - dimension: noloan_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_enrl_2yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_still_enrolled_2yr_by.8yrs

  - dimension: noloan_unkn_orig_yr8_rt
    sql: float(${TABLE}.noloan_unkn_orig_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.no_loan.unknown_by.8yrs

  - dimension: noloan_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_unkn_4yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_4yr_by.8yrs

  - dimension: noloan_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.noloan_unkn_2yr_trans_yr8_rt)
    description: Percent of students who never received a federal loan at the institution and who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.no_loan.transf_unknown_2yr_by.8yrs

  - dimension: firstgen_death_yr8_rt
    sql: float(${TABLE}.firstgen_death_yr8_rt)
    description: Percent of first-generation students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.died_by.8yrs

  - dimension: firstgen_comp_orig_yr8_rt
    sql: float(${TABLE}.firstgen_comp_orig_yr8_rt)
    description: Percent of first-generation students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.completed_by.8yrs

  - dimension: firstgen_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_comp_4yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_4yr_by.8yrs

  - dimension: firstgen_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_comp_2yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_completed_2yr_by.8yrs

  - dimension: firstgen_wdraw_orig_yr8_rt
    sql: float(${TABLE}.firstgen_wdraw_orig_yr8_rt)
    description: Percent of first-generation students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.withdrawn_by.8yrs

  - dimension: firstgen_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_wdraw_4yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_4yr_by.8yrs

  - dimension: firstgen_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_wdraw_2yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_withdrawn_2yr_by.8yrs

  - dimension: firstgen_enrl_orig_yr8_rt
    sql: float(${TABLE}.firstgen_enrl_orig_yr8_rt)
    description: Percent of first-generation students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.still_enrolled_by.8yrs

  - dimension: firstgen_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_enrl_4yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_4yr_by.8yrs

  - dimension: firstgen_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_enrl_2yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_still_enrolled_2yr_by.8yrs

  - dimension: firstgen_unkn_orig_yr8_rt
    sql: float(${TABLE}.firstgen_unkn_orig_yr8_rt)
    description: Percent of first-generation students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.first_gen.unknown_by.8yrs

  - dimension: firstgen_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_unkn_4yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_4yr_by.8yrs

  - dimension: firstgen_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.firstgen_unkn_2yr_trans_yr8_rt)
    description: Percent of first-generation students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.first_gen.transf_unknown_2yr_by.8yrs

  - dimension: not1stgen_death_yr8_rt
    sql: float(${TABLE}.not1stgen_death_yr8_rt)
    description: Percent of not-first-generation students who died within 8 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.died_by.8yrs

  - dimension: not1stgen_comp_orig_yr8_rt
    sql: float(${TABLE}.not1stgen_comp_orig_yr8_rt)
    description: Percent of not-first-generation students who completed within 8 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.completed_by.8yrs

  - dimension: not1stgen_comp_4yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_comp_4yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_4yr_by.8yrs

  - dimension: not1stgen_comp_2yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_comp_2yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and completed within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_completed_2yr_by.8yrs

  - dimension: not1stgen_wdraw_orig_yr8_rt
    sql: float(${TABLE}.not1stgen_wdraw_orig_yr8_rt)
    description: Percent of not-first-generation students withdrawn from original institution within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.withdrawn_by.8yrs

  - dimension: not1stgen_wdraw_4yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_wdraw_4yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_4yr_by.8yrs

  - dimension: not1stgen_wdraw_2yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_wdraw_2yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and withdrew within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_withdrawn_2yr_by.8yrs

  - dimension: not1stgen_enrl_orig_yr8_rt
    sql: float(${TABLE}.not1stgen_enrl_orig_yr8_rt)
    description: Percent of not-first-generation students who were still enrolled at original institution within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.still_enrolled_by.8yrs

  - dimension: not1stgen_enrl_4yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_enrl_4yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_4yr_by.8yrs

  - dimension: not1stgen_enrl_2yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_enrl_2yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and were still enrolled within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_still_enrolled_2yr_by.8yrs

  - dimension: not1stgen_unkn_orig_yr8_rt
    sql: float(${TABLE}.not1stgen_unkn_orig_yr8_rt)
    description: Percent of not-first-generation students with status unknown within 8 years at original institution
    view_label: ~ completion
    label: title_iv.not_first_gen.unknown_by.8yrs

  - dimension: not1stgen_unkn_4yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_unkn_4yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 4-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_4yr_by.8yrs

  - dimension: not1stgen_unkn_2yr_trans_yr8_rt
    sql: float(${TABLE}.not1stgen_unkn_2yr_trans_yr8_rt)
    description: Percent of not-first-generation students who transferred to a 2-year institution and whose status is unknown within 8 years
    view_label: ~ completion
    label: title_iv.not_first_gen.transf_unknown_2yr_by.8yrs

  - dimension: rpy_1yr_rt
    sql: float(${TABLE}.rpy_1yr_rt)
    description: Fraction of repayment cohort that has not defaulted, and with loan balances that have declined one year since entering repayment, excluding enrolled and military deferment from calculation. (Rolling averages)
    view_label: ~ repayment
    label: repayment_cohort.1_year_declining_balance

  - dimension: compl_rpy_1yr_n
    sql: integer(${TABLE}.compl_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of completers cohort
    view_label: ~ repayment
    label: 1_yr_repayment.completers

  - dimension: noncom_rpy_1yr_n
    sql: integer(${TABLE}.noncom_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of non-completers cohort
    view_label: ~ repayment
    label: 1_yr_repayment.noncompleters

  - dimension: lo_inc_rpy_1yr_rt
    sql: float(${TABLE}.lo_inc_rpy_1yr_rt)
    description: One-year repayment rate by family income ($0-30,000)
    view_label: ~ repayment
    label: 1_yr_repayment.income.0_30000

  - dimension: md_inc_rpy_1yr_rt
    sql: float(${TABLE}.md_inc_rpy_1yr_rt)
    description: One-year repayment rate by family income ($30,000-75,000)
    view_label: ~ repayment
    label: 1_yr_repayment.income.30000_75000

  - dimension: hi_inc_rpy_1yr_rt
    sql: float(${TABLE}.hi_inc_rpy_1yr_rt)
    description: One-year repayment rate by family income ($75,000+)
    view_label: ~ repayment
    label: 1_yr_repayment.income.greater_than_75000

  - dimension: dep_rpy_1yr_n
    sql: integer(${TABLE}.dep_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of dependent students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.dependent_students

  - dimension: ind_rpy_1yr_n
    sql: integer(${TABLE}.ind_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of independent students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.independent_students

  - dimension: pell_rpy_1yr_n
    sql: integer(${TABLE}.pell_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of Pell students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.pell_grant

  - dimension: nopell_rpy_1yr_n
    sql: integer(${TABLE}.nopell_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of no-Pell students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.no_pell_grant

  - dimension: female_rpy_1yr_n
    sql: integer(${TABLE}.female_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of female students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.female_students

  - dimension: male_rpy_1yr_n
    sql: integer(${TABLE}.male_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of male students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.male_students

  - dimension: firstgen_rpy_1yr_n
    sql: integer(${TABLE}.firstgen_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of first-generation students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.first_generation_students

  - dimension: notfirstgen_rpy_1yr_n
    sql: integer(${TABLE}.notfirstgen_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of not-first-generation students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.non_first_generation_students

  - dimension: rpy_3yr_rt
    sql: float(${TABLE}.rpy_3yr_rt)
    description: Fraction of repayment cohort that has not defaulted, and with loan balances that have declined three years since entering repayment, excluding enrolled and military deferment from calculation.  (rolling averages)
    view_label: ~ repayment
    label: repayment_cohort.3_year_declining_balance

  - dimension: compl_rpy_3yr_n
    sql: integer(${TABLE}.compl_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of completers cohort
    view_label: ~ repayment
    label: 3_yr_repayment.completers

  - dimension: noncom_rpy_3yr_n
    sql: integer(${TABLE}.noncom_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of non-completers cohort
    view_label: ~ repayment
    label: 3_yr_repayment.noncompleters

  - dimension: lo_inc_rpy_3yr_rt
    sql: float(${TABLE}.lo_inc_rpy_3yr_rt)
    description: Three-year repayment rate by family income ($0-30,000)
    view_label: ~ repayment
    label: 3_yr_repayment.income.0_30000

  - dimension: md_inc_rpy_3yr_rt
    sql: float(${TABLE}.md_inc_rpy_3yr_rt)
    description: Three-year repayment rate by family income ($30,000-75,000)
    view_label: ~ repayment
    label: 3_yr_repayment.income.30000_75000

  - dimension: hi_inc_rpy_3yr_rt
    sql: float(${TABLE}.hi_inc_rpy_3yr_rt)
    description: Three-year repayment rate by family income ($75,000+)
    view_label: ~ repayment
    label: 3_yr_repayment.income.greater_than_75000

  - dimension: dep_rpy_3yr_n
    sql: integer(${TABLE}.dep_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of dependent students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.dependent_students

  - dimension: ind_rpy_3yr_n
    sql: integer(${TABLE}.ind_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of independent students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.independent_students

  - dimension: pell_rpy_3yr_n
    sql: integer(${TABLE}.pell_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of Pell students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.pell_grant

  - dimension: nopell_rpy_3yr_n
    sql: integer(${TABLE}.nopell_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of no-Pell students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.no_pell_grant

  - dimension: female_rpy_3yr_n
    sql: integer(${TABLE}.female_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of female students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.female_students

  - dimension: male_rpy_3yr_n
    sql: integer(${TABLE}.male_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of male students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.male_students

  - dimension: firstgen_rpy_3yr_n
    sql: integer(${TABLE}.firstgen_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of first-generation students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.first_generation_students

  - dimension: notfirstgen_rpy_3yr_n
    sql: integer(${TABLE}.notfirstgen_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of not-first-generation students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.non_first_generation_students

  - dimension: rpy_5yr_rt
    sql: float(${TABLE}.rpy_5yr_rt)
    description: Fraction of repayment cohort that has not defaulted, and with loan balances that have declined five years since entering repayment, excluding enrolled and military deferment from calculation.  (rolling averages)
    view_label: ~ repayment
    label: repayment_cohort.5_year_declining_balance

  - dimension: compl_rpy_5yr_n
    sql: integer(${TABLE}.compl_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of completers cohort
    view_label: ~ repayment
    label: 5_yr_repayment.completers

  - dimension: noncom_rpy_5yr_n
    sql: integer(${TABLE}.noncom_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of non-completers cohort
    view_label: ~ repayment
    label: 5_yr_repayment.noncompleters

  - dimension: lo_inc_rpy_5yr_rt
    sql: float(${TABLE}.lo_inc_rpy_5yr_rt)
    description: Five-year repayment rate by family income ($0-30,000)
    view_label: ~ repayment
    label: 5_yr_repayment.income.0_30000

  - dimension: md_inc_rpy_5yr_rt
    sql: float(${TABLE}.md_inc_rpy_5yr_rt)
    description: Five-year repayment rate by family income ($30,000-75,000)
    view_label: ~ repayment
    label: 5_yr_repayment.income.30000_75000

  - dimension: hi_inc_rpy_5yr_rt
    sql: float(${TABLE}.hi_inc_rpy_5yr_rt)
    description: Five-year repayment rate by family income ($75,000+)
    view_label: ~ repayment
    label: 5_yr_repayment.income.greater_than_75000

  - dimension: dep_rpy_5yr_n
    sql: integer(${TABLE}.dep_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of dependent students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.dependent_students

  - dimension: ind_rpy_5yr_n
    sql: integer(${TABLE}.ind_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of independent students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.independent_students

  - dimension: pell_rpy_5yr_n
    sql: integer(${TABLE}.pell_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of Pell students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.pell_grant

  - dimension: nopell_rpy_5yr_n
    sql: integer(${TABLE}.nopell_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of no-Pell students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.no_pell_grant

  - dimension: female_rpy_5yr_n
    sql: integer(${TABLE}.female_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of female students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.female_students

  - dimension: male_rpy_5yr_n
    sql: integer(${TABLE}.male_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of male students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.male_students

  - dimension: firstgen_rpy_5yr_n
    sql: integer(${TABLE}.firstgen_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of first-generation students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.first_generation_students

  - dimension: notfirstgen_rpy_5yr_n
    sql: integer(${TABLE}.notfirstgen_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of not-first-generation students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.non_first_generation_students

  - dimension: rpy_7yr_rt
    sql: float(${TABLE}.rpy_7yr_rt)
    description: Fraction of repayment cohort that has not defaulted, and with loan balances that have declined seven years since entering repayment, excluding enrolled and military deferment from calculation.  (rolling averages)
    view_label: ~ repayment
    label: repayment_cohort.7_year_declining_balance

  - dimension: compl_rpy_7yr_n
    sql: integer(${TABLE}.compl_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of completers cohort
    view_label: ~ repayment
    label: 7_yr_repayment.completers

  - dimension: noncom_rpy_7yr_n
    sql: integer(${TABLE}.noncom_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of non-completers cohort
    view_label: ~ repayment
    label: 7_yr_repayment.noncompleters

  - dimension: lo_inc_rpy_7yr_rt
    sql: float(${TABLE}.lo_inc_rpy_7yr_rt)
    description: Seven-year repayment rate by family income ($0-30,000)
    view_label: ~ repayment
    label: 7_yr_repayment.income.0_30000

  - dimension: md_inc_rpy_7yr_rt
    sql: float(${TABLE}.md_inc_rpy_7yr_rt)
    description: Seven-year repayment rate by family income ($30,000-75,000)
    view_label: ~ repayment
    label: 7_yr_repayment.income.30000_75000

  - dimension: hi_inc_rpy_7yr_rt
    sql: float(${TABLE}.hi_inc_rpy_7yr_rt)
    description: Seven-year repayment rate by family income ($75,000+)
    view_label: ~ repayment
    label: 7_yr_repayment.income.greater_than_75000

  - dimension: dep_rpy_7yr_n
    sql: integer(${TABLE}.dep_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of dependent students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.dependent_students

  - dimension: ind_rpy_7yr_n
    sql: integer(${TABLE}.ind_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of independent students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.independent_students

  - dimension: pell_rpy_7yr_n
    sql: integer(${TABLE}.pell_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of Pell students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.pell_grant

  - dimension: nopell_rpy_7yr_n
    sql: integer(${TABLE}.nopell_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of no-Pell students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.no_pell_grant

  - dimension: female_rpy_7yr_n
    sql: integer(${TABLE}.female_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of female students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.female_students

  - dimension: male_rpy_7yr_n
    sql: integer(${TABLE}.male_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of male students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.male_students

  - dimension: firstgen_rpy_7yr_n
    sql: integer(${TABLE}.firstgen_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of first-generation students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.first_generation_students

  - dimension: notfirstgen_rpy_7yr_n
    sql: integer(${TABLE}.notfirstgen_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of not-first-generation students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.non_first_generation_students

  - dimension: inc_pct_lo
    sql: float(${TABLE}.inc_pct_lo)
    description: Percentage of aided students whose family income is between $0-$30,000
    view_label: ~ student
    label: share_lowincome.0_30000

  - dimension: dep_stat_pct_ind
    sql: float(${TABLE}.dep_stat_pct_ind)
    description: Percentage of students who are financially independent
    view_label: ~ student
    label: share_independent_students

  - dimension: dep_inc_pct_lo
    sql: float(${TABLE}.dep_inc_pct_lo)
    description: Percentage of students who are financially independent and have family incomes between $0-30,000
    view_label: ~ student
    label: share_independent_lowincome.0_30000

  - dimension: ind_inc_pct_lo
    sql: float(${TABLE}.ind_inc_pct_lo)
    description: Percentage of students who are financially dependent and have family incomes between $0-30,000
    view_label: ~ student
    label: share_dependent_lowincome.0_300000

  - dimension: par_ed_pct_1stgen
    sql: float(${TABLE}.par_ed_pct_1stgen)
    description: Percentage first-generation students
    view_label: ~ student
    label: share_firstgeneration

  - dimension: inc_pct_m2
    sql: float(${TABLE}.inc_pct_m2)
    description: Aided students with family incomes between $48,001-$75,000 in nominal dollars
    view_label: ~ student
    label: share_middleincome.30001_48000

  - dimension: inc_pct_h1
    sql: float(${TABLE}.inc_pct_h1)
    description: Aided students with family incomes between $75,001-$110,000 in nominal dollars
    view_label: ~ student
    label: share_highincome.75001_110000

  - dimension: inc_pct_h2
    sql: float(${TABLE}.inc_pct_h2)
    description: Aided students with family incomes between $110,001+ in nominal dollars
    view_label: ~ student
    label: share_highincome.110001plus

  - dimension: dep_inc_pct_m1
    sql: float(${TABLE}.dep_inc_pct_m1)
    description: Dependent students with family incomes between $30,001-$48,000 in nominal dollars
    view_label: ~ student
    label: share_dependent_middleincome.300001_48000

  - dimension: dep_inc_pct_m2
    sql: float(${TABLE}.dep_inc_pct_m2)
    description: Dependent students with family incomes between $48,001-$75,000 in nominal dollars
    view_label: ~ student
    label: share_dependent_middleincome.48001_75000

  - dimension: dep_inc_pct_h1
    sql: float(${TABLE}.dep_inc_pct_h1)
    description: Dependent students with family incomes between $75,001-$110,000 in nominal dollars
    view_label: ~ student
    label: share_dependent_highincome.75001_110000

  - dimension: dep_inc_pct_h2
    sql: float(${TABLE}.dep_inc_pct_h2)
    description: Dependent students with family incomes between $110,001+ in nominal dollars
    view_label: ~ student
    label: share_dependent_highincome.110001plus

  - dimension: ind_inc_pct_m1
    sql: float(${TABLE}.ind_inc_pct_m1)
    description: Independent students with family incomes between $30,001-$48,000 in nominal dollars
    view_label: ~ student
    label: share_independent_middleincome.30001_48000

  - dimension: ind_inc_pct_m2
    sql: float(${TABLE}.ind_inc_pct_m2)
    description: Independent students with family incomes between $48,001-$75,000 in nominal dollars
    view_label: ~ student
    label: share_independent_middleincome.48001_75000

  - dimension: ind_inc_pct_h1
    sql: float(${TABLE}.ind_inc_pct_h1)
    description: Independent students with family incomes between $75,001-$110,000 in nominal dollars
    view_label: ~ student
    label: share_independent_highincome.75001_110000

  - dimension: ind_inc_pct_h2
    sql: float(${TABLE}.ind_inc_pct_h2)
    description: Independent students with family incomes between $110,001+ in nominal dollars
    view_label: ~ student
    label: share_independent_highincome.110001plus

  - dimension: par_ed_pct_ms
    sql: float(${TABLE}.par_ed_pct_ms)
    description: Percent of students whose parents' highest educational level is middle school
    view_label: ~ student
    label: share_firstgeneration_parents.middleschool

  - dimension: par_ed_pct_hs
    sql: float(${TABLE}.par_ed_pct_hs)
    description: Percent of students whose parents' highest educational level is high school
    view_label: ~ student
    label: share_firstgeneration_parents.highschool

  - dimension: par_ed_pct_ps
    sql: float(${TABLE}.par_ed_pct_ps)
    description: Percent of students whose parents' highest educational level was is some form of postsecondary education
    view_label: ~ student
    label: share_firstgeneration_parents.somecollege

  - dimension: appl_sch_pct_ge2
    sql: float(${TABLE}.appl_sch_pct_ge2)
    description: Number of applications is greater than or equal to 2
    view_label: ~ student
    label: fafsa_sent.2_college_allyrs

  - dimension: appl_sch_pct_ge3
    sql: float(${TABLE}.appl_sch_pct_ge3)
    description: Number of applications is greater than or equal to 3
    view_label: ~ student
    label: fafsa_sent.3_college_allyrs

  - dimension: appl_sch_pct_ge4
    sql: float(${TABLE}.appl_sch_pct_ge4)
    description: Number of applications is greater than or equal to 4
    view_label: ~ student
    label: fafsa_sent.4_college_allyrs

  - dimension: appl_sch_pct_ge5
    sql: float(${TABLE}.appl_sch_pct_ge5)
    description: Number of applications is greater than or equal to 5
    view_label: ~ student
    label: fafsa_sent.5plus_college_allyrs

  - dimension: dep_inc_avg
    sql: integer(${TABLE}.dep_inc_avg)
    description: Average family income of dependent students in real 2014 dollars.
    view_label: ~ student
    label: avg_dependent_income.2014dollars

  - dimension: ind_inc_avg
    sql: integer(${TABLE}.ind_inc_avg)
    description: Average family income of independent students in real 2014 dollars. 
    view_label: ~ student
    label: avg_independent_income.2014dollars

  - dimension: overall_yr2_n
    sql: integer(${TABLE}.overall_yr2_n)
    description: Number of students completed in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.overall

  - dimension: lo_inc_yr2_n
    sql: integer(${TABLE}.lo_inc_yr2_n)
    description: Number of low-income (less than $30,000 in nominal family income) students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.low_income

  - dimension: md_inc_yr2_n
    sql: integer(${TABLE}.md_inc_yr2_n)
    description: Number of middle-income (between $30,000 and $75,000 in nominal family income) students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.middle_income

  - dimension: hi_inc_yr2_n
    sql: integer(${TABLE}.hi_inc_yr2_n)
    description: Number of high-income (above $75,000 in nominal family income) students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.high_income

  - dimension: dep_yr2_n
    sql: integer(${TABLE}.dep_yr2_n)
    description: Number of dependent students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.dependent_students

  - dimension: ind_yr2_n
    sql: integer(${TABLE}.ind_yr2_n)
    description: Number of independent students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.independent_students

  - dimension: female_yr2_n
    sql: integer(${TABLE}.female_yr2_n)
    description: Number of female students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.female_students

  - dimension: male_yr2_n
    sql: integer(${TABLE}.male_yr2_n)
    description: Number of male students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.male_students

  - dimension: pell_yr2_n
    sql: integer(${TABLE}.pell_yr2_n)
    description: Number of Pell students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.pell_grant

  - dimension: nopell_yr2_n
    sql: integer(${TABLE}.nopell_yr2_n)
    description: Number of no-Pell students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.no_pell_grant

  - dimension: loan_yr2_n
    sql: integer(${TABLE}.loan_yr2_n)
    description: Number of loan students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.loan_students

  - dimension: noloan_yr2_n
    sql: integer(${TABLE}.noloan_yr2_n)
    description: Number of no-loan students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.no_loan_students

  - dimension: firstgen_yr2_n
    sql: integer(${TABLE}.firstgen_yr2_n)
    description: Number of first-generation students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.first_generation_students

  - dimension: not1stgen_yr2_n
    sql: integer(${TABLE}.not1stgen_yr2_n)
    description: Number of not-first-generation students in overall 2-year completion cohort
    view_label: ~ completion
    label: 2_yr_completion.no_first_generation_students

  - dimension: overall_yr3_n
    sql: integer(${TABLE}.overall_yr3_n)
    description: Number of students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.overall

  - dimension: lo_inc_yr3_n
    sql: integer(${TABLE}.lo_inc_yr3_n)
    description: Number of low-income (less than $30,000 in nominal family income) students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.low_income

  - dimension: md_inc_yr3_n
    sql: integer(${TABLE}.md_inc_yr3_n)
    description: Number of middle-income (between $30,000 and $75,000 in nominal family income) students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.middle_income

  - dimension: hi_inc_yr3_n
    sql: integer(${TABLE}.hi_inc_yr3_n)
    description: Number of high-income (above $75,000 in nominal family income) students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.high_income

  - dimension: dep_yr3_n
    sql: integer(${TABLE}.dep_yr3_n)
    description: Number of dependent students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.dependent_students

  - dimension: ind_yr3_n
    sql: integer(${TABLE}.ind_yr3_n)
    description: Number of independent students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.independent_students

  - dimension: female_yr3_n
    sql: integer(${TABLE}.female_yr3_n)
    description: Number of female students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.female_students

  - dimension: male_yr3_n
    sql: integer(${TABLE}.male_yr3_n)
    description: Number of male students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.male_students

  - dimension: pell_yr3_n
    sql: integer(${TABLE}.pell_yr3_n)
    description: Number of Pell students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.pell_grant

  - dimension: nopell_yr3_n
    sql: integer(${TABLE}.nopell_yr3_n)
    description: Number of no-Pell students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.no_pell_grant

  - dimension: loan_yr3_n
    sql: integer(${TABLE}.loan_yr3_n)
    description: Number of loan students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.loan_students

  - dimension: noloan_yr3_n
    sql: integer(${TABLE}.noloan_yr3_n)
    description: Number of no-loan students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.no_loan_students

  - dimension: firstgen_yr3_n
    sql: integer(${TABLE}.firstgen_yr3_n)
    description: Number of first-generation students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.first_generation_students

  - dimension: not1stgen_yr3_n
    sql: integer(${TABLE}.not1stgen_yr3_n)
    description: Number of not-first-generation students in overall 3-year completion cohort
    view_label: ~ completion
    label: 3_yr_completion.no_first_generation_students

  - dimension: overall_yr4_n
    sql: integer(${TABLE}.overall_yr4_n)
    description: Number of students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.overall

  - dimension: lo_inc_yr4_n
    sql: integer(${TABLE}.lo_inc_yr4_n)
    description: Number of low-income (less than $30,000 in nominal family income) students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.low_income

  - dimension: md_inc_yr4_n
    sql: integer(${TABLE}.md_inc_yr4_n)
    description: Number of middle-income (between $30,000 and $75,000 in nominal family income) students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.middle_income

  - dimension: hi_inc_yr4_n
    sql: integer(${TABLE}.hi_inc_yr4_n)
    description: Number of high-income (above $75,000 in nominal family income) students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.high_income

  - dimension: dep_yr4_n
    sql: integer(${TABLE}.dep_yr4_n)
    description: Number of dependent students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.dependent_students

  - dimension: ind_yr4_n
    sql: integer(${TABLE}.ind_yr4_n)
    description: Number of independent students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.independent_students

  - dimension: female_yr4_n
    sql: integer(${TABLE}.female_yr4_n)
    description: Number of female students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.female_students

  - dimension: male_yr4_n
    sql: integer(${TABLE}.male_yr4_n)
    description: Number of male students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.male_students

  - dimension: pell_yr4_n
    sql: integer(${TABLE}.pell_yr4_n)
    description: Number of Pell students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.pell_grant

  - dimension: nopell_yr4_n
    sql: integer(${TABLE}.nopell_yr4_n)
    description: Number of no-Pell students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.no_pell_grant

  - dimension: loan_yr4_n
    sql: integer(${TABLE}.loan_yr4_n)
    description: Number of loan students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.loan_students

  - dimension: noloan_yr4_n
    sql: integer(${TABLE}.noloan_yr4_n)
    description: Number of no-loan students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.no_loan_students

  - dimension: firstgen_yr4_n
    sql: integer(${TABLE}.firstgen_yr4_n)
    description: Number of first-generation students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.first_generation_students

  - dimension: not1stgen_yr4_n
    sql: integer(${TABLE}.not1stgen_yr4_n)
    description: Number of not-first-generation students in overall 4-year completion cohort
    view_label: ~ completion
    label: 4_yr_completion.no_first_generation_students

  - dimension: overall_yr6_n
    sql: integer(${TABLE}.overall_yr6_n)
    description: Number of students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.overall

  - dimension: lo_inc_yr6_n
    sql: integer(${TABLE}.lo_inc_yr6_n)
    description: Number of low-income (less than $30,000 in nominal family income) students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.low_income

  - dimension: md_inc_yr6_n
    sql: integer(${TABLE}.md_inc_yr6_n)
    description: Number of middle-income (between $30,000 and $75,000 in nominal family income) students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.middle_income

  - dimension: hi_inc_yr6_n
    sql: integer(${TABLE}.hi_inc_yr6_n)
    description: Number of high-income (above $75,000 in nominal family income) students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.high_income

  - dimension: dep_yr6_n
    sql: integer(${TABLE}.dep_yr6_n)
    description: Number of dependent students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.dependent_students

  - dimension: ind_yr6_n
    sql: integer(${TABLE}.ind_yr6_n)
    description: Number of independent students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.independent_students

  - dimension: female_yr6_n
    sql: integer(${TABLE}.female_yr6_n)
    description: Number of female students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.female_students

  - dimension: male_yr6_n
    sql: integer(${TABLE}.male_yr6_n)
    description: Number of male students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.male_students

  - dimension: pell_yr6_n
    sql: integer(${TABLE}.pell_yr6_n)
    description: Number of Pell students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.pell_grant

  - dimension: nopell_yr6_n
    sql: integer(${TABLE}.nopell_yr6_n)
    description: Number of no-Pell students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.no_pell_grant

  - dimension: loan_yr6_n
    sql: integer(${TABLE}.loan_yr6_n)
    description: Number of loan students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.loan_students

  - dimension: noloan_yr6_n
    sql: integer(${TABLE}.noloan_yr6_n)
    description: Number of no-loan students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.no_loan_students

  - dimension: firstgen_yr6_n
    sql: integer(${TABLE}.firstgen_yr6_n)
    description: Number of first-generation students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.first_generation_students

  - dimension: not1stgen_yr6_n
    sql: integer(${TABLE}.not1stgen_yr6_n)
    description: Number of not-first-generation students in overall 6-year completion cohort
    view_label: ~ completion
    label: 6_yr_completion.no_first_generation_students

  - dimension: overall_yr8_n
    sql: integer(${TABLE}.overall_yr8_n)
    description: Number of students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.overall

  - dimension: lo_inc_yr8_n
    sql: integer(${TABLE}.lo_inc_yr8_n)
    description: Number of low-income (less than $30,000 in nominal family income) students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.low_income

  - dimension: md_inc_yr8_n
    sql: integer(${TABLE}.md_inc_yr8_n)
    description: Number of middle-income (between $30,000 and $75,000 in nominal family income) students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.middle_income

  - dimension: hi_inc_yr8_n
    sql: integer(${TABLE}.hi_inc_yr8_n)
    description: Number of high-income (above $75,000 in nominal family income) students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.high_income

  - dimension: dep_yr8_n
    sql: integer(${TABLE}.dep_yr8_n)
    description: Number of dependent students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.dependent_students

  - dimension: ind_yr8_n
    sql: integer(${TABLE}.ind_yr8_n)
    description: Number of independent students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.independent_students

  - dimension: female_yr8_n
    sql: integer(${TABLE}.female_yr8_n)
    description: Number of female students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.female_students

  - dimension: male_yr8_n
    sql: integer(${TABLE}.male_yr8_n)
    description: Number of male students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.male_students

  - dimension: pell_yr8_n
    sql: integer(${TABLE}.pell_yr8_n)
    description: Number of Pell students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.pell_grant

  - dimension: nopell_yr8_n
    sql: integer(${TABLE}.nopell_yr8_n)
    description: Number of no-Pell students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.no_pell_grant

  - dimension: loan_yr8_n
    sql: integer(${TABLE}.loan_yr8_n)
    description: Number of loan students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.loan_students

  - dimension: noloan_yr8_n
    sql: integer(${TABLE}.noloan_yr8_n)
    description: Number of no-loan students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.no_loan_students

  - dimension: firstgen_yr8_n
    sql: integer(${TABLE}.firstgen_yr8_n)
    description: Number of first-generation students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.first_generation_students

  - dimension: not1stgen_yr8_n
    sql: integer(${TABLE}.not1stgen_yr8_n)
    description: Number of not-first-generation students in overall 8-year completion cohort
    view_label: ~ completion
    label: 8_yr_completion.no_first_generation_students

  - dimension: debt_mdn
    sql: float(${TABLE}.debt_mdn)
    description: The original amount of the loan principal upon entering repayment
    view_label: ~ aid
    label: loan_principal

  - dimension: grad_debt_mdn
    sql: float(${TABLE}.grad_debt_mdn)
    description: The median debt for students who have completed
    view_label: ~ aid
    label: median_debt.completers.overall

  - dimension: wdraw_debt_mdn
    sql: float(${TABLE}.wdraw_debt_mdn)
    description: The median debt for students who have not completed
    view_label: ~ aid
    label: median_debt.noncompleters

  - dimension: lo_inc_debt_mdn
    sql: float(${TABLE}.lo_inc_debt_mdn)
    description: The median debt for students with family income between $0-$30,000
    view_label: ~ aid
    label: median_debt.income.0_30000

  - dimension: md_inc_debt_mdn
    sql: float(${TABLE}.md_inc_debt_mdn)
    description: The median debt for students with family income between $30,001-$75,000
    view_label: ~ aid
    label: median_debt.income.30001_75000

  - dimension: hi_inc_debt_mdn
    sql: float(${TABLE}.hi_inc_debt_mdn)
    description: The median debt for students with family income $75,001+
    view_label: ~ aid
    label: median_debt.income.greater_than_75000

  - dimension: dep_debt_mdn
    sql: float(${TABLE}.dep_debt_mdn)
    description: The median debt for dependent students
    view_label: ~ aid
    label: median_debt.dependent_students

  - dimension: ind_debt_mdn
    sql: float(${TABLE}.ind_debt_mdn)
    description: The median debt for independent students
    view_label: ~ aid
    label: median_debt.independent_students

  - dimension: pell_debt_mdn
    sql: float(${TABLE}.pell_debt_mdn)
    description: The median debt for Pell students
    view_label: ~ aid
    label: median_debt.pell_grant

  - dimension: nopell_debt_mdn
    sql: float(${TABLE}.nopell_debt_mdn)
    description: The median debt for no-Pell students
    view_label: ~ aid
    label: median_debt.no_pell_grant

  - dimension: female_debt_mdn
    sql: float(${TABLE}.female_debt_mdn)
    description: The median debt for female students
    view_label: ~ aid
    label: median_debt.female_students

  - dimension: male_debt_mdn
    sql: float(${TABLE}.male_debt_mdn)
    description: The median debt for male students
    view_label: ~ aid
    label: median_debt.male_students

  - dimension: firstgen_debt_mdn
    sql: float(${TABLE}.firstgen_debt_mdn)
    description: The median debt for first-generation students
    view_label: ~ aid
    label: median_debt.first_generation_students

  - dimension: notfirstgen_debt_mdn
    sql: float(${TABLE}.notfirstgen_debt_mdn)
    description: The median debt for not-first-generation students
    view_label: ~ aid
    label: median_debt.non_first_generation_students

  - dimension: debt_n
    sql: integer(${TABLE}.debt_n)
    description: The number of students in the median debt cohort
    view_label: ~ aid
    label: median_debt.number.overall

  - dimension: grad_debt_n
    sql: integer(${TABLE}.grad_debt_n)
    description: The number of students in the median debt completers cohort
    view_label: ~ aid
    label: median_debt.number.completers

  - dimension: wdraw_debt_n
    sql: integer(${TABLE}.wdraw_debt_n)
    description: The number of students in the median debt withdrawn cohort
    view_label: ~ aid
    label: median_debt.number.noncompleters

  - dimension: lo_inc_debt_n
    sql: integer(${TABLE}.lo_inc_debt_n)
    description: The number of students in the median debt low-income (less than $30,000 in nominal family income) students cohort
    view_label: ~ aid
    label: median_debt.number.income.0_30000

  - dimension: md_inc_debt_n
    sql: integer(${TABLE}.md_inc_debt_n)
    description: The number of students in the median debt middle-income (between $30,000 and $75,000 in nominal family income) students cohort
    view_label: ~ aid
    label: median_debt.number.income.30001_75000

  - dimension: hi_inc_debt_n
    sql: integer(${TABLE}.hi_inc_debt_n)
    description: The number of students in the median debt high-income (above $75,000 in nominal family income) students cohort
    view_label: ~ aid
    label: median_debt.number.income.greater_than_75000

  - dimension: dep_debt_n
    sql: integer(${TABLE}.dep_debt_n)
    description: The number of students in the median debt dependent students cohort
    view_label: ~ aid
    label: median_debt.number.dependent_students

  - dimension: ind_debt_n
    sql: integer(${TABLE}.ind_debt_n)
    description: The number of students in the median debt independent students cohort
    view_label: ~ aid
    label: median_debt.number.independent_students

  - dimension: pell_debt_n
    sql: integer(${TABLE}.pell_debt_n)
    description: The number of students in the median debt Pell students cohort
    view_label: ~ aid
    label: median_debt.number.pell_grant

  - dimension: nopell_debt_n
    sql: integer(${TABLE}.nopell_debt_n)
    description: The number of students in the median debt no-Pell students cohort
    view_label: ~ aid
    label: median_debt.number.no_pell_grant

  - dimension: female_debt_n
    sql: integer(${TABLE}.female_debt_n)
    description: The number of students in the median debt female students cohort
    view_label: ~ aid
    label: median_debt.number.female_students

  - dimension: male_debt_n
    sql: integer(${TABLE}.male_debt_n)
    description: The number of students in the median debt male students cohort
    view_label: ~ aid
    label: median_debt.number.male_students

  - dimension: firstgen_debt_n
    sql: integer(${TABLE}.firstgen_debt_n)
    description: The number of students in the median debt first-generation students cohort
    view_label: ~ aid
    label: median_debt.number.first_generation_students

  - dimension: notfirstgen_debt_n
    sql: integer(${TABLE}.notfirstgen_debt_n)
    description: The number of students in the median debt not-first-generation students cohort
    view_label: ~ aid
    label: median_debt.number.non_first_generation_students

  - dimension: grad_debt_mdn10yr
    sql: float(${TABLE}.grad_debt_mdn10yr)
    description: Median loan debt of completers in monthly payments (10-year amortization plan)
    view_label: ~ aid
    label: median_debt.completers.monthly_payments

  - dimension: cuml_debt_n
    sql: integer(${TABLE}.cuml_debt_n)
    description: Number of students in the cumulative loan debt cohort
    view_label: ~ aid
    label: cumulative_debt.number

  - dimension: cuml_debt_p90
    sql: integer(${TABLE}.cuml_debt_p90)
    description: Cumulative loan debt at the 90th percentile
    view_label: ~ aid
    label: cumulative_debt.90th_percentile

  - dimension: cuml_debt_p75
    sql: integer(${TABLE}.cuml_debt_p75)
    description: Cumulative loan debt at the 75th percentile
    view_label: ~ aid
    label: cumulative_debt.75th_percentile

  - dimension: cuml_debt_p25
    sql: integer(${TABLE}.cuml_debt_p25)
    description: Cumulative loan debt at the 25th percentile
    view_label: ~ aid
    label: cumulative_debt.25th_percentile

  - dimension: cuml_debt_p10
    sql: integer(${TABLE}.cuml_debt_p10)
    description: Cumulative loan debt at the 10th percentile
    view_label: ~ aid
    label: cumulative_debt.10th_percentile

  - dimension: inc_n
    sql: integer(${TABLE}.inc_n)
    description: Number of students in the family income cohort
    view_label: ~ student
    label: family_income.overall

  - dimension: dep_inc_n
    sql: integer(${TABLE}.dep_inc_n)
    description: Number of students in the family income dependent students cohort
    view_label: ~ student
    label: family_income.dependent_students

  - dimension: ind_inc_n
    sql: integer(${TABLE}.ind_inc_n)
    description: Number of students in the family income independent students cohort
    view_label: ~ student
    label: family_income.independent_students

  - dimension: dep_stat_n
    sql: integer(${TABLE}.dep_stat_n)
    description: Number of students in the disaggregation with valid dependency status
    view_label: ~ student
    label: valid_dependency_status

  - dimension: par_ed_n
    sql: integer(${TABLE}.par_ed_n)
    description: Number of students in the parents' education level cohort
    view_label: ~ student
    label: parents_education_level

  - dimension: appl_sch_n
    sql: integer(${TABLE}.appl_sch_n)
    description: Number of students in the FAFSA applications cohort
    view_label: ~ student
    label: FAFSA_applications

  - dimension: repay_dt_mdn
    sql: integer(${TABLE}.repay_dt_mdn)
    description: Median Date Student Enters Repayment
    view_label: ~ repayment
    label: repayment_date.median

  - dimension: separ_dt_mdn
    sql: integer(${TABLE}.separ_dt_mdn)
    description: Median Date Student Separated
    view_label: ~ completion
    label: separation_date.median

  - dimension: repay_dt_n
    sql: integer(${TABLE}.repay_dt_n)
    description: Number of students in the cohort for date students enter repayment
    view_label: ~ repayment
    label: repayment_date.number

  - dimension: separ_dt_n
    sql: integer(${TABLE}.separ_dt_n)
    description: Number of students in the cohort for date students separated from the school
    view_label: ~ completion
    label: separation_date.number

  - dimension: rpy_1yr_n
    sql: integer(${TABLE}.rpy_1yr_n)
    description: Number of students in the 1-year repayment rate cohort
    view_label: ~ repayment
    label: 1_yr_repayment.overall

  - dimension: lo_inc_rpy_1yr_n
    sql: integer(${TABLE}.lo_inc_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of low-income (less than $30,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.low_income

  - dimension: md_inc_rpy_1yr_n
    sql: integer(${TABLE}.md_inc_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of middle-income (between $30,000 and $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.middle_income

  - dimension: hi_inc_rpy_1yr_n
    sql: integer(${TABLE}.hi_inc_rpy_1yr_n)
    description: Number of students in the 1-year repayment rate of high-income (above $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 1_yr_repayment.high_income

  - dimension: rpy_3yr_n
    sql: integer(${TABLE}.rpy_3yr_n)
    description: Number of students in the 3-year repayment rate cohort
    view_label: ~ repayment
    label: 3_yr_repayment.overall

  - dimension: lo_inc_rpy_3yr_n
    sql: integer(${TABLE}.lo_inc_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of low-income (less than $30,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.low_income

  - dimension: md_inc_rpy_3yr_n
    sql: integer(${TABLE}.md_inc_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of middle-income (between $30,000 and $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.middle_income

  - dimension: hi_inc_rpy_3yr_n
    sql: integer(${TABLE}.hi_inc_rpy_3yr_n)
    description: Number of students in the 3-year repayment rate of high-income (above $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 3_yr_repayment.high_income

  - dimension: rpy_5yr_n
    sql: integer(${TABLE}.rpy_5yr_n)
    description: Number of students in the 5-year repayment rate cohort
    view_label: ~ repayment
    label: 5_yr_repayment.overall

  - dimension: lo_inc_rpy_5yr_n
    sql: integer(${TABLE}.lo_inc_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of low-income (less than $30,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.low_income

  - dimension: md_inc_rpy_5yr_n
    sql: integer(${TABLE}.md_inc_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of middle-income (between $30,000 and $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.middle_income

  - dimension: hi_inc_rpy_5yr_n
    sql: integer(${TABLE}.hi_inc_rpy_5yr_n)
    description: Number of students in the 5-year repayment rate of high-income (above $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 5_yr_repayment.high_income

  - dimension: rpy_7yr_n
    sql: integer(${TABLE}.rpy_7yr_n)
    description: Number of students in the 7-year repayment rate cohort
    view_label: ~ repayment
    label: 7_yr_repayment.overall

  - dimension: lo_inc_rpy_7yr_n
    sql: integer(${TABLE}.lo_inc_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of low-income (less than $30,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.low_income

  - dimension: md_inc_rpy_7yr_n
    sql: integer(${TABLE}.md_inc_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of middle-income (between $30,000 and $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.middle_income

  - dimension: hi_inc_rpy_7yr_n
    sql: integer(${TABLE}.hi_inc_rpy_7yr_n)
    description: Number of students in the 7-year repayment rate of high-income (above $75,000 in nominal family income) students cohort
    view_label: ~ repayment
    label: 7_yr_repayment.high_income

  - dimension: hcm2
    sql: integer(${TABLE}.hcm2)
    description: Schools that are on Heightened Cash Monitoring 2 by the Department of Education
    view_label: ~ school
    label: under_investigation

  - dimension: count_ed
    sql: integer(${TABLE}.count_ed)
    description: Count of students in the earnings cohort
    view_label: ~ earnings
    label: student_count

  - dimension: loan_ever
    sql: float(${TABLE}.loan_ever)
    description: Share of students who received a federal loan while in school
    view_label: ~ aid
    label: students_with_any_loan

  - dimension: pell_ever
    sql: float(${TABLE}.pell_ever)
    description: Share of students who received a Pell Grant while in school
    view_label: ~ student
    label: students_with_pell_grant

  - dimension: age_entry
    sql: integer(${TABLE}.age_entry)
    description: Average age of entry, via SSA data
    view_label: ~ student
    label: demographics.age_entry

  - dimension: age_entry_sq
    sql: integer(${TABLE}.age_entry_sq)
    description: Average of the age of entry squared
    view_label: ~ student
    label: demographics.age_entry_squared

  - dimension: agege24
    sql: float(${TABLE}.agege24)
    description: Percent of students over 23 at entry
    view_label: ~ student
    label: demographics.over_23_at_entry

  - dimension: female
    sql: float(${TABLE}.female)
    description: Share of female students, via SSA data
    view_label: ~ student
    label: demographics.female_share

  - dimension: married
    sql: float(${TABLE}.married)
    description: Share of married students
    view_label: ~ student
    label: demographics.married

  - dimension: dependent
    sql: float(${TABLE}.dependent)
    description: Share of dependent students
    view_label: ~ student
    label: demographics.dependent

  - dimension: veteran
    sql: float(${TABLE}.veteran)
    description: Share of veteran students
    view_label: ~ student
    label: demographics.veteran

  - dimension: first_gen
    sql: float(${TABLE}.first_gen)
    description: Share of first-generation students
    view_label: ~ student
    label: demographics.first_generation

  - dimension: faminc
    sql: integer(${TABLE}.faminc)
    description: Average family income
    view_label: ~ student
    label: demographics.avg_family_income

  - dimension: md_faminc
    sql: integer(${TABLE}.md_faminc)
    description: Median family income
    view_label: ~ student
    label: demographics.median_family_income

  - dimension: faminc_ind
    sql: integer(${TABLE}.faminc_ind)
    description: Average family income for independent students
    view_label: ~ student
    label: demographics.avg_family_income_independents

  - dimension: lnfaminc
    sql: integer(${TABLE}.lnfaminc)
    description: Average of the log of family income
    view_label: ~ student
    label: demographics.avg_family_income_log

  - dimension: lnfaminc_ind
    sql: integer(${TABLE}.lnfaminc_ind)
    description: Average of the log of family income for independent students
    view_label: ~ student
    label: demographics.avg_family_income_independents_log

  - dimension: pct_white
    sql: float(${TABLE}.pct_white)
    description: Percent of the population from students' zip codes that is White, via Census data
    view_label: ~ student
    label: demographics.share_white.home_ZIP

  - dimension: pct_black
    sql: float(${TABLE}.pct_black)
    description: Percent of the population from students' zip codes that is Black, via Census data
    view_label: ~ student
    label: demographics.share_black.home_ZIP

  - dimension: pct_asian
    sql: float(${TABLE}.pct_asian)
    description: Percent of the population from students' zip codes that is Asian, via Census data
    view_label: ~ student
    label: demographics.share_asian.home_ZIP

  - dimension: pct_hispanic
    sql: float(${TABLE}.pct_hispanic)
    description: Percent of the population from students' zip codes that is Hispanic, via Census data
    view_label: ~ student
    label: demographics.share_hispanic.home_ZIP

  - dimension: pct_ba
    sql: float(${TABLE}.pct_ba)
    description: Percent of the population from students' zip codes with a bachelor's degree over the age 25, via Census data
    view_label: ~ student
    label: demographics.share_bachelors_degree_age25.home_ZIP

  - dimension: pct_grad_prof
    sql: float(${TABLE}.pct_grad_prof)
    description: Percent of the population from students' zip codes over 25 with a professional degree, via Census data
    view_label: ~ student
    label: demographics.share_professional_degree_age25.home_ZIP

  - dimension: pct_born_us
    sql: float(${TABLE}.pct_born_us)
    description: Percent of the population from students' zip codes that was born in the US, via Census data
    view_label: ~ student
    label: demographics.share_born_US.home_ZIP

  - dimension: median_hh_inc
    sql: integer(${TABLE}.median_hh_inc)
    description: Median household income
    view_label: ~ student
    label: demographics.median_hh_income

  - dimension: poverty_rate
    sql: float(${TABLE}.poverty_rate)
    description: Poverty rate, via Census data
    view_label: ~ student
    label: demographics.poverty_rate

  - dimension: unemp_rate
    sql: float(${TABLE}.unemp_rate)
    description: Unemployment rate, via Census data
    view_label: ~ student
    label: demographics.unemployment

  - dimension: ln_median_hh_inc
    sql: integer(${TABLE}.ln_median_hh_inc)
    description: Log of the median household income
    view_label: ~ student
    label: demographics.median_hh_income_log

  - dimension: fsend_count
    sql: integer(${TABLE}.fsend_count)
    description: Number of students who sent their FAFSA reports to at least one college
    view_label: ~ student
    label: fafsa_sent.overall

  - dimension: fsend_1
    sql: float(${TABLE}.fsend_1)
    description: Share of students who submitted FAFSAs to only one college
    view_label: ~ student
    label: fafsa_sent.1_college

  - dimension: fsend_2
    sql: float(${TABLE}.fsend_2)
    description: Share of students who submitted FAFSAs to two colleges
    view_label: ~ student
    label: fafsa_sent.2_colleges

  - dimension: fsend_3
    sql: float(${TABLE}.fsend_3)
    description: Share of students who submitted FAFSAs to three colleges
    view_label: ~ student
    label: fafsa_sent.3_college

  - dimension: fsend_4
    sql: float(${TABLE}.fsend_4)
    description: Share of students who submitted FAFSAs to four colleges
    view_label: ~ student
    label: fafsa_sent.4_colleges

  - dimension: fsend_5
    sql: float(${TABLE}.fsend_5)
    description: Share of students who submitted FAFSAs to at least five colleges
    view_label: ~ student
    label: fafsa_sent.5_or_more_colleges

  - dimension: count_nwne_p10
    sql: integer(${TABLE}.count_nwne_p10)
    description: Number of students not working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.not_working_not_enrolled.overall

  - dimension: count_wne_p10
    sql: integer(${TABLE}.count_wne_p10)
    description: Number of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.overall

  - dimension: mn_earn_wne_p10
    sql: integer(${TABLE}.mn_earn_wne_p10)
    description: Mean earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.mean_earnings

  - dimension: md_earn_wne_p10
    sql: integer(${TABLE}.md_earn_wne_p10)
    description: Median earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.median

  - dimension: pct10_earn_wne_p10
    sql: integer(${TABLE}.pct10_earn_wne_p10)
    description: 10th percentile of earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.earnings_percentile.10

  - dimension: pct25_earn_wne_p10
    sql: integer(${TABLE}.pct25_earn_wne_p10)
    description: 25th percentile of earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.earnings_percentile.25

  - dimension: pct75_earn_wne_p10
    sql: integer(${TABLE}.pct75_earn_wne_p10)
    description: 75th percentile of earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.earnings_percentile.75

  - dimension: pct90_earn_wne_p10
    sql: integer(${TABLE}.pct90_earn_wne_p10)
    description: 90th percentile of earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.earnings_percentile.90

  - dimension: sd_earn_wne_p10
    sql: integer(${TABLE}.sd_earn_wne_p10)
    description: Standard deviation of earnings of students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.std_dev

  - dimension: count_wne_inc1_p10
    sql: integer(${TABLE}.count_wne_inc1_p10)
    description: Number of students working and not enrolled 10 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.income.lowest_tercile

  - dimension: count_wne_inc2_p10
    sql: integer(${TABLE}.count_wne_inc2_p10)
    description: Number of students working and not enrolled 10 years after entry in the middle income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.income.middle_tercile

  - dimension: count_wne_inc3_p10
    sql: integer(${TABLE}.count_wne_inc3_p10)
    description: Number of students working and not enrolled 10 years after entry in the highest income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.income.highest_tercile

  - dimension: count_wne_indep0_inc1_p10
    sql: integer(${TABLE}.count_wne_indep0_inc1_p10)
    description: Number of dependent students working and not enrolled 10 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.dependent_students_lowest_tercile

  - dimension: count_wne_indep0_p10
    sql: integer(${TABLE}.count_wne_indep0_p10)
    description: Number of dependent students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.working_not_enrolled.dependent_students

  - dimension: count_wne_indep1_p10
    sql: integer(${TABLE}.count_wne_indep1_p10)
    description: Number of independent students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.independent_students

  - dimension: count_wne_male0_p10
    sql: integer(${TABLE}.count_wne_male0_p10)
    description: Number of female students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.female_students

  - dimension: count_wne_male1_p10
    sql: integer(${TABLE}.count_wne_male1_p10)
    description: Number of male students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.male_students

  - dimension: gt_25k_p10
    sql: float(${TABLE}.gt_25k_p10)
    description: Share of students earning over $25,000/year (threshold earnings) 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.percent_greater_than_25000

  - dimension: mn_earn_wne_inc1_p10
    sql: integer(${TABLE}.mn_earn_wne_inc1_p10)
    description: Mean earnings of students working and not enrolled 10 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.lowest_tercile

  - dimension: mn_earn_wne_inc2_p10
    sql: integer(${TABLE}.mn_earn_wne_inc2_p10)
    description: Mean earnings of students working and not enrolled 10 years after entry in the middle income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.middle_tercile

  - dimension: mn_earn_wne_inc3_p10
    sql: integer(${TABLE}.mn_earn_wne_inc3_p10)
    description: Mean earnings of students working and not enrolled 10 years after entry in the highest income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.highest_tercile

  - dimension: mn_earn_wne_indep0_inc1_p10
    sql: integer(${TABLE}.mn_earn_wne_indep0_inc1_p10)
    description: Mean earnings of dependent students working and not enrolled 10 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.dependent_students_lowest_tercile

  - dimension: mn_earn_wne_indep0_p10
    sql: integer(${TABLE}.mn_earn_wne_indep0_p10)
    description: Mean earnings of dependent students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.dependent_students

  - dimension: mn_earn_wne_indep1_p10
    sql: integer(${TABLE}.mn_earn_wne_indep1_p10)
    description: Mean earnings of independent students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.independent_students

  - dimension: mn_earn_wne_male0_p10
    sql: integer(${TABLE}.mn_earn_wne_male0_p10)
    description: Mean earnings of female students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.female_students

  - dimension: mn_earn_wne_male1_p10
    sql: integer(${TABLE}.mn_earn_wne_male1_p10)
    description: Mean earnings of male students working and not enrolled 10 years after entry
    view_label: ~ earnings
    label: 10_yrs_after_entry.mean_earnings.male_students

  - dimension: count_nwne_p6
    sql: integer(${TABLE}.count_nwne_p6)
    description: Number of students not working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.not_working_not_enrolled.overall

  - dimension: count_wne_p6
    sql: integer(${TABLE}.count_wne_p6)
    description: Number of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.overall

  - dimension: mn_earn_wne_p6
    sql: integer(${TABLE}.mn_earn_wne_p6)
    description: Mean earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.mean_earnings

  - dimension: md_earn_wne_p6
    sql: integer(${TABLE}.md_earn_wne_p6)
    description: Median earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.median

  - dimension: pct10_earn_wne_p6
    sql: integer(${TABLE}.pct10_earn_wne_p6)
    description: 10th percentile of earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.earnings_percentile.10

  - dimension: pct25_earn_wne_p6
    sql: integer(${TABLE}.pct25_earn_wne_p6)
    description: 25th percentile of earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.earnings_percentile.25

  - dimension: pct75_earn_wne_p6
    sql: integer(${TABLE}.pct75_earn_wne_p6)
    description: 75th percentile of earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.earnings_percentile.75

  - dimension: pct90_earn_wne_p6
    sql: integer(${TABLE}.pct90_earn_wne_p6)
    description: 90th percentile of earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.earnings_percentile.90

  - dimension: sd_earn_wne_p6
    sql: integer(${TABLE}.sd_earn_wne_p6)
    description: Standard deviation of earnings of students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.std_dev

  - dimension: count_wne_inc1_p6
    sql: integer(${TABLE}.count_wne_inc1_p6)
    description: Number of students working and not enrolled 6 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.income.lowest_tercile

  - dimension: count_wne_inc2_p6
    sql: integer(${TABLE}.count_wne_inc2_p6)
    description: Number of students working and not enrolled 6 years after entry in the middle income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.income.middle_tercile

  - dimension: count_wne_inc3_p6
    sql: integer(${TABLE}.count_wne_inc3_p6)
    description: Number of students working and not enrolled 6 years after entry in the highest income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.income.highest_tercile

  - dimension: count_wne_indep0_inc1_p6
    sql: integer(${TABLE}.count_wne_indep0_inc1_p6)
    description: Number of dependent students working and not enrolled 6 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.dependent_students_lowest_tercile

  - dimension: count_wne_indep0_p6
    sql: integer(${TABLE}.count_wne_indep0_p6)
    description: Number of dependent students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.working_not_enrolled.dependent_students

  - dimension: count_wne_indep1_p6
    sql: integer(${TABLE}.count_wne_indep1_p6)
    description: Number of independent students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.independent_students

  - dimension: count_wne_male0_p6
    sql: integer(${TABLE}.count_wne_male0_p6)
    description: Number of female students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.female_students

  - dimension: count_wne_male1_p6
    sql: integer(${TABLE}.count_wne_male1_p6)
    description: Number of male students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.male_students

  - dimension: gt_25k_p6
    sql: float(${TABLE}.gt_25k_p6)
    description: Share of students earning over $25,000/year (threshold earnings) 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.percent_greater_than_25000

  - dimension: mn_earn_wne_inc1_p6
    sql: float(${TABLE}.mn_earn_wne_inc1_p6)
    description: Mean earnings of students working and not enrolled 6 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.lowest_tercile

  - dimension: mn_earn_wne_inc2_p6
    sql: float(${TABLE}.mn_earn_wne_inc2_p6)
    description: Mean earnings of students working and not enrolled 6 years after entry in the middle income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.middle_tercile

  - dimension: mn_earn_wne_inc3_p6
    sql: float(${TABLE}.mn_earn_wne_inc3_p6)
    description: Mean earnings of students working and not enrolled 6 years after entry in the highest income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.highest_tercile

  - dimension: mn_earn_wne_indep0_inc1_p6
    sql: float(${TABLE}.mn_earn_wne_indep0_inc1_p6)
    description: Mean earnings of dependent students working and not enrolled 6 years after entry in the lowest income tercile
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.dependent_students_lowest_tercile

  - dimension: mn_earn_wne_indep0_p6
    sql: float(${TABLE}.mn_earn_wne_indep0_p6)
    description: Mean earnings of dependent students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.dependent_students

  - dimension: mn_earn_wne_indep1_p6
    sql: float(${TABLE}.mn_earn_wne_indep1_p6)
    description: Mean earnings of independent students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.independent_students

  - dimension: mn_earn_wne_male0_p6
    sql: float(${TABLE}.mn_earn_wne_male0_p6)
    description: Mean earnings of female students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.female_students

  - dimension: mn_earn_wne_male1_p6
    sql: float(${TABLE}.mn_earn_wne_male1_p6)
    description: Mean earnings of male students working and not enrolled 6 years after entry
    view_label: ~ earnings
    label: 6_yrs_after_entry.mean_earnings.male_students

  - dimension: count_nwne_p7
    sql: float(${TABLE}.count_nwne_p7)
    description: Number of students not working and not enrolled 7 years after entry
    view_label: ~ earnings
    label: 7_yrs_after_entry.not_working_not_enrolled

  - dimension: count_wne_p7
    sql: integer(${TABLE}.count_wne_p7)
    description: Number of students working and not enrolled 7 years after entry
    view_label: ~ earnings
    label: 7_yrs_after_entry.working_not_enrolled

  - dimension: mn_earn_wne_p7
    sql: float(${TABLE}.mn_earn_wne_p7)
    description: Mean earnings of students working and not enrolled 7 years after entry
    view_label: ~ earnings
    label: 7_yrs_after_entry.mean_earnings

  - dimension: sd_earn_wne_p7
    sql: float(${TABLE}.sd_earn_wne_p7)
    description: Standard deviation of earnings of students working and not enrolled 7 years after entry
    view_label: ~ earnings
    label: 7_yrs_after_entry.std_dev

  - dimension: gt_25k_p7
    sql: float(${TABLE}.gt_25k_p7)
    description: Share of students earning over $25,000/year (threshold earnings) 7 years after entry
    view_label: ~ earnings
    label: 7_yrs_after_entry.percent_greater_than_25000

  - dimension: count_nwne_p8
    sql: integer(${TABLE}.count_nwne_p8)
    description: Number of students not working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.not_working_not_enrolled

  - dimension: count_wne_p8
    sql: integer(${TABLE}.count_wne_p8)
    description: Number of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.working_not_enrolled

  - dimension: mn_earn_wne_p8
    sql: float(${TABLE}.mn_earn_wne_p8)
    description: Mean earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.mean_earnings

  - dimension: md_earn_wne_p8
    sql: float(${TABLE}.md_earn_wne_p8)
    description: Median earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.median_earnings

  - dimension: pct10_earn_wne_p8
    sql: integer(${TABLE}.pct10_earn_wne_p8)
    description: 10th percentile of earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.10th_percentile_earnings

  - dimension: pct25_earn_wne_p8
    sql: integer(${TABLE}.pct25_earn_wne_p8)
    description: 25th percentile of earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.25th_percentile_earnings

  - dimension: pct75_earn_wne_p8
    sql: integer(${TABLE}.pct75_earn_wne_p8)
    description: 75th percentile of earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.75th_percentile_earnings

  - dimension: pct90_earn_wne_p8
    sql: integer(${TABLE}.pct90_earn_wne_p8)
    description: 90th percentile of earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.90th_percentile_earnings

  - dimension: sd_earn_wne_p8
    sql: float(${TABLE}.sd_earn_wne_p8)
    description: Standard deviation of earnings of students working and not enrolled 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.std_deviation

  - dimension: gt_25k_p8
    sql: float(${TABLE}.gt_25k_p8)
    description: Share of students earning over $25,000/year (threshold earnings) 8 years after entry
    view_label: ~ earnings
    label: 8_yrs_after_entry.percent_greater_than_25000

  - dimension: count_nwne_p9
    sql: integer(${TABLE}.count_nwne_p9)
    description: Number of students not working and not enrolled 9 years after entry
    view_label: ~ earnings
    label: 9_yrs_after_entry.not_working_not_enrolled

  - dimension: count_wne_p9
    sql: integer(${TABLE}.count_wne_p9)
    description: Number of students working and not enrolled 9 years after entry
    view_label: ~ earnings
    label: 9_yrs_after_entry.working_not_enrolled

  - dimension: mn_earn_wne_p9
    sql: float(${TABLE}.mn_earn_wne_p9)
    description: Mean earnings of students working and not enrolled 9 years after entry
    view_label: ~ earnings
    label: 9_yrs_after_entry.mean_earnings

  - dimension: sd_earn_wne_p9
    sql: float(${TABLE}.sd_earn_wne_p9)
    description: Standard deviation of earnings of students working and not enrolled 9 years after entry
    view_label: ~ earnings
    label: 9_yrs_after_entry.std_deviation

  - dimension: gt_25k_p9
    sql: float(${TABLE}.gt_25k_p9)
    description: Share of students earning over $25,000/year (threshold earnings) 9 years after entry
    view_label: ~ earnings
    label: 9_yrs_after_entry.percent_greater_than_25000

  - dimension: debt_mdn_supp
    sql: float(${TABLE}.debt_mdn_supp)
    description: Median debt, suppressed for n=30
    view_label: ~ aid
    label: median_debt_suppressed.overall

  - dimension: grad_debt_mdn_supp
    sql: float(${TABLE}.grad_debt_mdn_supp)
    description: Median debt of completers, suppressed for n=30
    view_label: ~ aid
    label: median_debt_suppressed.completers.overall

  - dimension: grad_debt_mdn10yr_supp
    sql: float(${TABLE}.grad_debt_mdn10yr_supp)
    description: Median debt of completers expressed in 10-year monthly payments, suppressed for n=30
    view_label: ~ aid
    label: median_debt_suppressed.completers.monthly_payments

  - dimension: rpy_3yr_rt_supp
    sql: float(${TABLE}.rpy_3yr_rt_supp)
    description: 3-year repayment rate, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.overall

  - dimension: lo_inc_rpy_3yr_rt_supp
    sql: float(${TABLE}.lo_inc_rpy_3yr_rt_supp)
    description: 3-year repayment rate for low-income (less than $30,000 in nominal family income) students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.income.low_income

  - dimension: md_inc_rpy_3yr_rt_supp
    sql: float(${TABLE}.md_inc_rpy_3yr_rt_supp)
    description: 3-year repayment rate for middle-income (between $30,000 and $75,000 in nominal family income) students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.income.middle_income

  - dimension: hi_inc_rpy_3yr_rt_supp
    sql: float(${TABLE}.hi_inc_rpy_3yr_rt_supp)
    description: 3-year repayment rate for high-income (above $75,000 in nominal family income) students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.income.high_income

  - dimension: compl_rpy_3yr_rt_supp
    sql: float(${TABLE}.compl_rpy_3yr_rt_supp)
    description: 3-year repayment rate for completers, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.completers

  - dimension: noncom_rpy_3yr_rt_supp
    sql: float(${TABLE}.noncom_rpy_3yr_rt_supp)
    description: 3-year repayment rate for non-completers, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.non_completers

  - dimension: dep_rpy_3yr_rt_supp
    sql: float(${TABLE}.dep_rpy_3yr_rt_supp)
    description: 3-year repayment rate for dependent students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.dependent_students

  - dimension: ind_rpy_3yr_rt_supp
    sql: float(${TABLE}.ind_rpy_3yr_rt_supp)
    description: 3-year repayment rate for independent students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.independent_students

  - dimension: pell_rpy_3yr_rt_supp
    sql: float(${TABLE}.pell_rpy_3yr_rt_supp)
    description: 3-year repayment rate for Pell students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.pell_grant

  - dimension: nopell_rpy_3yr_rt_supp
    sql: float(${TABLE}.nopell_rpy_3yr_rt_supp)
    description: 3-year repayment rate for no-Pell students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.no_pell_grant

  - dimension: female_rpy_3yr_rt_supp
    sql: float(${TABLE}.female_rpy_3yr_rt_supp)
    description: 3-year repayment rate for female students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.female_students

  - dimension: male_rpy_3yr_rt_supp
    sql: float(${TABLE}.male_rpy_3yr_rt_supp)
    description: 3-year repayment rate for male students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.male_students

  - dimension: firstgen_rpy_3yr_rt_supp
    sql: float(${TABLE}.firstgen_rpy_3yr_rt_supp)
    description: 3-year repayment rate for first-generation students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.first_generation_students

  - dimension: notfirstgen_rpy_3yr_rt_supp
    sql: float(${TABLE}.notfirstgen_rpy_3yr_rt_supp)
    description: 3-year repayment rate for non-first-generation students, suppressed for n=30
    view_label: ~ repayment
    label: 3_yr_repayment_suppressed.non_first_generation_students

  - dimension: c150_l4_pooled_supp
    sql: float(${TABLE}.c150_l4_pooled_supp)
    description: 150% completion rate for less-than-four-year institutions, pooled in two-year rolling averages and suppressed for small n size
    view_label: ~ completion
    label: rate_suppressed.lt_four_year_150percent

  - dimension: c150_4_pooled_supp
    sql: float(${TABLE}.c150_4_pooled_supp)
    description: 150% completion rate for four-year institutions, pooled in two-year rolling averages and suppressed for small n size.  For four year school, students are considered to have graduated "on time" if they graduate within 6 years.
    view_label: ~ completion
    label: rate_suppressed.four_year

  - dimension: c200_l4_pooled_supp
    sql: float(${TABLE}.c200_l4_pooled_supp)
    description: 200% completion rate for less-than-four-year institutions, pooled in two-year rolling averages and suppressed for small n size.  For two year schools, students are considered to have graduated "on time" if they graduate within 4 years.
    view_label: ~ completion
    label: rate_suppressed.lt_four_year

  - dimension: c200_4_pooled_supp
    sql: float(${TABLE}.c200_4_pooled_supp)
    description: 200% completion rate for four-year institutions, pooled in two-year rolling averages and suppressed for small n size
    view_label: ~ completion
    label: rate_suppressed.four_year_200percent

