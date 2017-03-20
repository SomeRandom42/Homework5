require 'person/version'

module Person
  class Person
    attr_accessor :first_name

    def initialize(first_name)
      @first_name = first_name
    end

    def to_s
      first_name
    end

    def titlelize
      self.first_name = first_name.capitalize
    end

    def upcase
      self.first_name = first_name.upcase
    end
  end
end
