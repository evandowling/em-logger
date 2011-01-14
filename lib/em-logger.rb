require 'rubygems' unless RUBY_VERSION =~ /1\.9\.\d/
require 'eventmachine'
module EventMachine
  class Logger
    
    def initialize(file_path,mode = 'a')
      @file_handle = File.open(file_path, mode)
      @log_queue = EventMachine::Queue.new
    end
    
    def log(message)
      if EventMachine.reactor_running?
        @log_queue.push(message)
        spool_messages
      else
        @file_handle.write(message + "\n")
      end
    end
    
    def spool_messages
      logger = self
      @log_queue.pop {|m|
        @file_handle.write(m + "\n")  
        logger.spool_messages
      }
    end
    
    
  end
end