function Attach_to_debug()
   local dap = require('dap')
   dap.configurations.java = {
      {
         type = 'java';
         request = 'attach';
         name = 'Attach to process';
         port = '5005';
      }
   }
   dap.continue()
end

function Get_test_runner(test_name, debug)
   if debug then
      return 'mvn test -Dmaven.surefire.debug -Dtest="' .. test_name .. '"'
   end
   return 'mvn test -Dtest="' .. test_name .. '"'
end

function Run_java_test_method(debug)
   local utils = require 'user.utils'
   local method_name = utils.get_current_full_method_name("\\#")
   vim.cmd('term ' .. Get_test_runner(method_name, debug))
end

function Run_java_test_class(debug)
   local utils = require 'user.utils'
   local class_name = utils.get_current_full_class_name()
   vim.cmd('term ' .. Get_test_runner(class_name, debug))
end
