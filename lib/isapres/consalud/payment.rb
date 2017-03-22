module PWI
  module Consalud
    class Payment
      # Public: Loads the configuration file consalud.yml
      # If it's a rails application it will take the file from the config/ directory
      #
      # env - Environment.
      #
      # Returns a Config object.
      def initialize env = nil
        @@config ||= PWI::Consalud::Config.new(env)
      end
    end
  end
end
