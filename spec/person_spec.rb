require 'spec_helper'

describe Person do
  it '#new' do
    person = Person::Person.new('giovanni')

    expect(person).to_not be_nil
  end

  it '#to_s' do
    person = Person::Person.new('giovanni')

    result = person.to_s

    expect(result).to eq('giovanni')
  end

  it '#titlelize' do
    person = Person::Person.new('giovanni')

    result = person.titlelize.to_s

    expect(result).to eq('Giovanni')
  end

  it '#upcase' do
    person = Person::Person.new('giovanni')

    result = person.upcase.to_s

    expect(result).to eq('GIOVANNI')
  end

  it '#downcase' do
    person = Person::Person.new('giovanni')

    result = person.downcase.to_s

    expect(result).to eq('giovanni')
  end

  it '#reverse' do
    person = Person::Person.new('giovanni')

    result = person.reverse.to_s

    expect(result).to eq('innavoig')
  end

  it '#hyphenize' do
    person = Person::Person.new('giovanni')

    result = person.hyphenize.to_s

    expect(result).to eq('g-i-o-v-a-n-n-i')
  end

  it '#undo' do
    person = Person::Person.new('giovanni')

    result = person.titlelize.upcase.reverse.downcase.undo.undo.undo.undo.to_s

    expect(result).to eq('giovanni')
  end
end
