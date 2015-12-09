#!/usr/bin/env ruby

require 'bundler/setup'
require 'sqlite3'
# require 'plist'
require 'cfpropertylist'
require 'pp'

sketch_file = 'samples/sample.sketch'

db = SQLite3::Database.new(sketch_file)
metadata = db.execute('select * from metadata').to_h
payload = db.execute('select * from payload').to_h

payload_plist = CFPropertyList::List.new data: payload['main']
payload_data = CFPropertyList.native_types(payload_plist.value)
pp payload_plist.value
