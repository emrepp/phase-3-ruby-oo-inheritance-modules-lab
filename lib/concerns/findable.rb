module Findable 
    module ClassMethods
    
        def all
           class_variable_get(:@@songs, :@@artist)
          end
  
          def find_by_name(name)
            class_variable_get(:@@songs, :@@artist).detect{|a| a.name == name}
          end

    end

end