require 'date'
require 'yaml'

SSN_PATTERN = /^(?<gender>[1-2]) ?(?<year>\d{2}) ?(?<month>0[1-9]|1[0-2]) ?(?<department>\d{2}|2[AB])( ?\d{3}){2} ?(?<key>\d{2})$/

def french_ssn_info(ssn)
  match_data = ssn.match(SSN_PATTERN)

  if match_data && key_valid?(ssn, match_data[:key])
    # Extract the information
    gender = match_data[:gender].to_i == 1 ? 'man' : 'woman'
    month_number = match_data[:month].to_i
    month = Date::MONTHNAMES[month_number]
    year = match_data[:year]
    department_code = match_data[:department]
    department = get_department_name(department_code)

    "a #{gender}, born in #{month}, 19#{year} in #{department}."
  else
    "The number is invalid"
  end
end

def get_department_name(code)
  departments_hash = YAML.load_file('data/french_departments.yml')
  departments_hash[code]
end

def key_valid?(ssn, key)
  ssn_without_key = ssn.delete(' ')[0...-2].to_i
  key.to_i == (97 - ssn_without_key) % 97
end