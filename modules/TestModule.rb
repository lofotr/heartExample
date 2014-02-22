class TestModule < Module

 def run()
   options = @service.options
   #puts options.inspect
   puts options["person"] + " " + options["farge"]
 end

end
