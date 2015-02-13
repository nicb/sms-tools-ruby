require 'ffi'

module UtilFunctions
  extend FFI::Library
  ffi_lib 'utilFunctions'
  attach_function :genbh92lobe_C,[:pointer,:pointer,:int],:void
end