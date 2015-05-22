hex2rgb = require "../lib/hex2rgb"
assert = require "assert"

describe "hex2rgb coffee", ->
	it "should throw an error if the value is not hex code", ->
		assert.throws ->
			hex2rgb("blue")
		, /Invalid hexadecimal string/

	it "should return a correctly converted rgb value", ->
		rgb = hex2rgb("#fff")
		assert.deepEqual(rgb, [255, 255, 255])
