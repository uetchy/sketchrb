import Cocoa

var metadata_path = NSBundle.mainBundle().pathForResource("metadata", ofType: "st")!
var payload_path = NSBundle.mainBundle().pathForResource("payload", ofType: "bplist")!

// Metadata
var data : NSData! = NSData(contentsOfFile: metadata_path)!
var unarchiver : NSUnarchiver = NSUnarchiver(forReadingWithData: data!)!
var metadata = unarchiver.decodeObject()

print(metadata!)

// Payload
//let dict = NSDictionary(contentsOfFile: payload_path)
var payload_data : NSData! = NSData(contentsOfFile: payload_path)!
var payload = NSUnarchiver.unarchiveObjectWithData(payload_data) as! [AnyObject]
print(payload)
//print(String.fromCString(object.objCType))
//print(object.objCType)
