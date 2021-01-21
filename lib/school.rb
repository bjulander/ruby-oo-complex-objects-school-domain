require 'pry'

class School
    attr_accessor :roster 

    def initialize(roster)
        @roster = roster
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name 
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        empty = {}
        @roster.each do |grade, name|
            empty[grade] = name.sort
        end
        empty.sort.to_h
    end
end
