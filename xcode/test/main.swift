// Playground - noun: a place where people can play

import Foundation

var metadata_path = "/Users/oame/Repos/sketchrb/samples/meta6"

NSArchiver.archiveRootObject(metadata_path, toFile: "metadata_path")

var data : NSData! = NSData(contentsOfFile: metadata_path)!
var unarchiver : NSUnarchiver = NSUnarchiver(forReadingWithData: data!)!
var object = unarchiver.decodeObject() as NSNumber

println(object)
println(String.fromCString(object.objCType))
println(object.objCType)