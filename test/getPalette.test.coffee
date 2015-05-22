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
expect = require("chai").expect

describe "getPalette coffee", ->

	it "should throw an error if the result is not an array", (done) ->
		
		notArray = -> 
			getPalette(process.cwd() + "/test/fixtures/config-palette-non-array.json")
		
		expect(notArray).to.throw(/is not an array/)
		done()
		

	it "should return an array with 3 items by default", ->
		palette = getPalette()
		expect(palette).to.be.an("array").with.length(3) # "did not return 3 items"