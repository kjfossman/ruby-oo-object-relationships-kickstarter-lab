class Project 
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        backers = []
        ProjectBacker.all.each do |project|
            if project.project == self
                backers << project.backer
            end
        end
        return backers
    end

end