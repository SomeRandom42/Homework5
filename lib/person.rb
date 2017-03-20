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

    def downcase
    end

    def hyphenize
      self.first_name = first_name.split('').join('-')
    end

    def reverse
      self.first_name = first_name.reverse
    end
  end
end
