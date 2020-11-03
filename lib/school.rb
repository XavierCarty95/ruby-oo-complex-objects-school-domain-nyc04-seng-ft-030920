# code here!
class School 

    attr_accessor :name, :roster
     def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, number)
        if @roster.key?(number)
            @roster[number] << name
        else 
            @roster[number] = []
            @roster[number] << name
        end 

    end

    def grade(number)
        @roster[number]
    end 

    def sort 

       @roster.keys.sort.each do |key| 
         @roster[key] = @roster[key].sort
       end

       @roster
    end
end