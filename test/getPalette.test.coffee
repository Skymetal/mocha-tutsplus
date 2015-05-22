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

describe "getPalette coffee", ->

	it "should throw an error if the result is not an array", ->
		assert.throws ->
			# Call getPalette with an anon function that returns "not an array"
			getPalette ->
				# Coffee script implicitly returns the last statement. 
				# Actually return "not an array"
				"not an array"
		# Validate the output of above with the regex below
		, /is not an array/

	it "should return an array with 3 items by default", ->
		palette = getPalette()
		assert Array.isArray(palette), "did not return an array"
		assert.equal palette.length, 3, "did not return 3 items"