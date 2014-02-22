require_relative 'lib/heart/parser/Parser.rb'
require_relative 'lib/heart/treeTraverser.rb'
require_relative 'lib/heart/metamodules/meta.rb'
require_relative 'lib/heart/metamodules/moduleLoader.rb' 
require_relative 'lib/heart/metamodules/optionLoader.rb' 


  file = File.new("config.xml", "r") 
  parser = Parser.new(file)
  parser.read()
  tree = parser.result.last
  m = MetaModule.new
  
  moduleLoader = ModuleLoader.new
  optionLoader = OptionLoader.new
  trav = Traverser.new(tree)

  
  trav.addModule(m)
  trav.addModule(moduleLoader)
  trav.addModule(optionLoader)
  trav.run()


  service = Service.instance
  service.options

