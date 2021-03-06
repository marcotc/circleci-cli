# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class ProjectsCommand < BaseCommand
        class << self
          def run(options)
            setup_token
            say Printer::ProjectPrinter.new(Response::Project.all, pretty: should_be_pretty(options)).to_s
          end
        end
      end
    end
  end
end
