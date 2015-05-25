#!/usr/bin/env ruby

require 'bundler/setup'
require 'sqlite3'
# require 'plist'
require 'cfpropertylist'
require 'pp'

sketch = 'samples/tmp.sketch'

db = SQLite3::Database.new(sketch)
payload = db.execute('select * from payload').to_h

main = CFPropertyList::List.new data: payload['main']
pp main
