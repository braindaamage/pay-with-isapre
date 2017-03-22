module PWI
  class Config
    attr_accessor :config_filepath

    def initialize env = nil
        if env
          # For non-rails apps
          @config_filepath = File.join(File.dirname(__FILE__), "..", "..", "config", "pay_with_isapre.yml")
          load(env)
        else
          @config_filepath = File.join(Rails.root, "config", "pay_with_isapre.yml")
          load(Rails.env)
        end
      end

      private

        def load(rails_env)
          # to be implemented in children class
        end
  end
end