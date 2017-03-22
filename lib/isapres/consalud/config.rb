require 'yaml'

module PWI
  module Consalud
    class Config < PWI::Config
      attr_accessor :ws_check_url, :payment_url, :ws_reduce_url

      private
      
        def load(rails_env)
          config = YAML.load_file(@config_filepath)['consalud'][rails_env]
          @ws_check_url   = config['ws_check']
          @payment_url    = config['payment']
          @ws_reduce_url  = config['ws_reduce']
        end
    end
  end
end
