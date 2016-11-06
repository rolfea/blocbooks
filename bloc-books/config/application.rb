require_relative '../../bloc_works/lib/bloc_works.rb'

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module BlocBooks
  class Application < BlocWorks::Application
  end
end
