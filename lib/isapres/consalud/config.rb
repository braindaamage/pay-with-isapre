require 'yaml'

module PWI
  module Consalud
    class Config
      attr_accessor :config_filepath, :ws_check_url, :payment_url, :ws_reduce_url

      def initialize env = nil
        if env
          # For non-rails apps
          @config_filepath = File.join(File.dirname(__FILE__), "..", "..", "..", "config", "consalud.yml")
          load(env)
        else
          @config_filepath = File.join(Rails.root, "config", "consalud.yml")
          load(Rails.env)
        end
      end

      private

        def load(rails_env)
          config = YAML.load_file(@config_filepath)[rails_env]
          @ws_check_url   = config['ws_check']
          @payment_url    = config['payment']
          @ws_reduce_url  = config['ws_reduce']
        end
    end
  end
end
