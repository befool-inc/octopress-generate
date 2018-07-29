module Octopress
  module Generate
    class Commands < Octopress::Command
      def self.init_with_program(p)
        p.command(:generate) do |c|
          c.syntax "generate [options]"
          c.version VERSION
          c.description "Generate your Octopress site."
          c.alias :g
          c.alias :gen

          Jekyll::Command.add_build_options(c)

          c.action do |args, options|
            options["serving"] = false
            Jekyll::Commands::Build.process(options)
          end
        end
      end
    end
  end
end
