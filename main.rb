require_relative 'lib/heart/treeTraverser.rb'
require_relative 'lib/heart/metamodules/meta.rb'
require_relative 'lib/heart/metamodules/moduleLoader.rb' 

# Element.include(Visited)
  top = Element.new("config")
  tmp = Element.new("module")
  tmp.addAttribute("name", "TestModule")
  tmp.addAttribute("type", "lat")
  setting = Element.new("modulesetting")
  setting.addAttribute("path","/home/trond/bitsquad/testproject/modules/")
  top.addElement(setting)
  tmp2 = Element.new("option")
  tmp2.addAttribute("name", "hello")
  tmp2.value = "Hello World"
  tmp.addElement(tmp2)
  top.addElement(tmp)
  #tmp3 = Element.new("module")
  #tmp3.addAttribute("name", "test2")
  #top.addElement(tmp3)

  m = MetaModule.new
  m2 = ModuleLoader.new
  trav = Traverser.new(top)
  #trav.addModule(m)
  trav.addModule(m2)
  trav.run()


  service = Service.instance
  service.options

