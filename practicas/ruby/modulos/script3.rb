# Mix-in

module UseFulFeatures
    def class_name
        self.class.to_s
    end
end

module AnotherModule
    def do_stuff
        'This is a test'
    end
end
class Person
    include UseFulFeatures
    include AnotherModule
end
