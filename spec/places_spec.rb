require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end
  describe("#location")
  it("it lets you enter a location") do
    test_place = Place.new("Tokyo") do
      expect(test_place.location()).to(eq("Tokyo"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds a location to the array of saved places") do
      test_place = Place.new("China")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
  describe(".clear") do
    it ("empties out all of the saved locations") do
      Place.new("Venice").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
