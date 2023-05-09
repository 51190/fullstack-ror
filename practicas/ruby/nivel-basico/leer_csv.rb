require 'csv'

# data = CSV.open("datos.csv").readlines

data = CSV.open("datos.csv", converters: :numeric).readlines
lines = data.length

lines.times do |i|
    data[i][2] += 15
end

print data