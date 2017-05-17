require 'homework05/version'

class Person
  # add your implementation here
    
    attr_accessor  :name
    def initialize(name)
        @name=name
        @history =[name]
    end    
    
    
  
    def to_s
     
     @history.last 
     #@name.to_s
     
    end  
    
    
    def titlelize 
        @history.push(@name.capitalize)
       self
    end    
    
    def upcase
         @history.push(@name.upcase)
      
       self
    end    
    
    def downcase
        @history.push(@name.downcase)
       
        self
    end
    
    def reverse
        @history.push(@name.reverse)
     
        self
    end    
    
    
    def hyphenize
        temp = @name.split("")
        @history.push(temp.join('-'))
       
        self
    end    
    
    def undo
        if @history.size > 1
             @history.pop
        end     
     
        self
    end    

end
