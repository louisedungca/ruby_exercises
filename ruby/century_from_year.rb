## century_from_year.rb
# Given a year, return the century it is in.
# The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.
def centuryFromYear(year)
  number = year / 100

  if year % 100 != 0
    p number.to_i + 1
  else
    p number
  end
end

centuryFromYear(1705)
centuryFromYear(1900)
centuryFromYear(1601)
centuryFromYear(2000)
