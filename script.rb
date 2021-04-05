require 'CSV'
require 'pry'

count = 0

CSV.open('result.csv', 'w') do |csv|
  Dir.glob('**/20**.csv').each do |dir|
    CSV.foreach("#{Dir.pwd}/#{dir}", headers: true) do |row|
      row[1] = Date.strptime(row[1]).strftime('%d/%m/%Y')
      row << dir[16..(dir.length - 21)]
      csv << row
    end
    count += 1
    puts "#{dir}."
  end
end

puts count
