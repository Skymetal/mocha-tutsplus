# var getPalette = require("../lib/getPalette");
# var assert = require("assert");

# describe("getPalette", function () {
# 	it("should return an array with 3 items", function (){

# 		var palette = getPalette();
# 		assert(Array.isArray(palette), "did not return an array");
# 		assert.equal(palette.length, 3, "did not return 3 items");

# 	});
# });

getPalette = require "../lib/getPalette"
assert = require "assert"
fs = require "fs"
configFile = process.cwd() + "/config.json"

writeConfig = (config, callback)->
	fs.writeFile configFile, JSON.stringify(config), callback

describe "getPalette coffee", ->

	config = {}

	before (done)->
		fs.readFile configFile, (err, contents)->
			config = JSON.parse(contents.toString())
			done() 

	afterEach (done)->
		writeConfig(config, done)

	it "should throw an error if the result is not an array", (done) ->
		
		writeConfig { palette: "string"}, (err)->
			assert.throws(getPalette , /is not an array/)
			done()
		

	it "should return an array with 3 items by default", ->
		palette = getPalette()
		assert Array.isArray(palette), "did not return an array"
		assert.equal palette.length, 3, "did not return 3 items"