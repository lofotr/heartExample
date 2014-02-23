require_relative 'lib/heart/parser/Parser.rb'
require_relative 'lib/heart/treeTraverser.rb'
require_relative 'lib/heart/metamodules/meta.rb'
require_relative 'lib/heart/metamodules/moduleLoader.rb' 
require_relative 'lib/heart/metamodules/optionLoader.rb'
require_relative 'lib/heart/service.rb' 


  file = File.new("config.xml", "r") 
  parser = Parser.new(file)
  parser.read()
  tree = parser.result.last
  m = MetaModule.new
  
  service = Service.new
  moduleLoader = ModuleLoader.new(service)
  optionLoader = OptionLoader.new(service)
  trav = Traverser.new(tree)

  
  trav.addModule(m)
  trav.addModule(moduleLoader)
  trav.addModule(optionLoader)
  trav.run()

