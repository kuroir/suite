require 'suite/project'
require "suite/version"
require "suite/cli"
require 'yaml'

module Suite
  class << self
    def project= project
      @@project = project
    end

    def project
      @@project
    end

    def use_project_at_path path, view = :desktop
      self.project = Suite::Project.new path, view
    end
  end
end
