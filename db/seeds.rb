require 'csv'

Startup.destroy_all
Person.destroy_all
Job.destroy_all

startups = CSV.parse(File.read(Rails.root.join('db/bulk_data/test_startups.csv')).scrub, headers: true)

startups.each_with_index do |data_row, index|
  fields = data_row.to_h
  fields['founder_ids'] = JSON.parse(fields['founder_ids'])
  Startup.create(fields)
end

founders = CSV.parse(File.read(Rails.root.join('db/bulk_data/founders.csv')).scrub, headers: true)

founders.each_with_index do |data_row, index|
  Person.create(data_row.to_h)
end

jobs = CSV.parse(File.read(Rails.root.join('db/bulk_data/jobs.csv')).scrub, headers: true)

jobs.each_with_index do |data_row, index|
  Job.create(data_row.to_h)
end