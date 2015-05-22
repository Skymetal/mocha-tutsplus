hex2rgb = require "../lib/hex2rgb"
assert = require "assert"

describe "hex2rgb coffee", ->
	it "should throw an error if the value is not hex code", (done)->
		hex2rgb "blue", (error, result) ->
			assert(error)
			done()
		
	it "should return a correctly converted rgb value", (done)->
		hex2rgb "#fff", (error, result)->
			assert.strictEqual(error, null)
			assert.deepEqual(result, [255, 255, 255])
			done()
		
