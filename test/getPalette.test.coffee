getPalette = require "../lib/getPalette"
assert = require "assert"

describe "getPalette coffee", ->
	it "should return an array with 3 items", ->
		palette = getPalette()
		assert Array.isArray(palette), "did not return an array"
		assert.equal palette.length, 3, "did not return 3 items"