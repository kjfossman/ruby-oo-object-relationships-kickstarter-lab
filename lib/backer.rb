require 'pry'

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        list_of_projects = []  
        ProjectBacker.all.each do |project|
            if project.backer == self
                list_of_projects << project.project
            end
        end    
        return list_of_projects    
    end
end

