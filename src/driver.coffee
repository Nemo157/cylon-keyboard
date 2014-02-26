###
 * cylon-keyboard driver
 * http://cylonjs.com
 *
 * Copyright (c) 2013-2014 The Hybrid Group
 * Licensed under the Apache 2.0 license.
###

'use strict'

require './cylon-keyboard'
require './adaptor'
require './keys'

namespace = require 'node-namespace'

namespace "Cylon.Drivers", ->
  class @Keyboard extends Cylon.Driver

    # Public: Starts the driver
    #
    # callback - params
    #
    # Returns null.
    start: (callback) ->
      Logger.info "Keyboard #{@device.name} starting."

      for key in Cylon.KeyboardKeys
        @defineDriverEvent eventName: key

      super

module.exports = Cylon.Drivers.Keyboard
