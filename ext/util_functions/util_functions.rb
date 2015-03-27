require 'ffi'

module UtilFunctions
  module C
    extend FFI::Library
    ffi_lib 'libutilFunctions'
    attach_function :genbh92lobe_C, [:pointer,:pointer,:int], :void
  end

  def self.genbh92lobe(input, output, size)
		#
		# TODO: massaggiare gli argomenti
		#
		C::genbh92lobe_C(input, output, size)
  end

end
