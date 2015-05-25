#!/usr/bin/env ruby

require 'sqlite3'

sketch_file = ARGV.first
unless sketch_file
  puts "Usage: sketch_to_bplist.rb Test.sketch"
end

db = SQLite3::Database.new sketch_file
metadata = db.execute('select * from metadata')[7][1]
payload = db.execute('select * from payload')[0][1]
open(File.basename(sketch_file) + ".payload", 'w') do |f|
  f.write payload
end
open(File.basename(sketch_file) + ".metadata", 'w') do |f|
  f.write metadata
end
