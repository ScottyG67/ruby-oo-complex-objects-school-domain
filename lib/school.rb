# code here!
require 'pry'
class School

    def initialize(name)
        @school_name=name
        @roster ={}
    end
    attr_reader :roster

    def add_student(name,grade)
        #binding.pry
        if @roster[grade] == nil
            #binding.pry
            @roster[grade] = []
            #binding.pry
        end
            @roster[grade]<<name
            #binding.pry
    end

    def grade(grade)
        @roster[grade]
    end
    def sort
        #binding.pry
        new_roster ={}
        @roster.each do |grade,students| 
            new_roster[grade]=students.sort
        end
        new_roster.sort.to_h
    end



end