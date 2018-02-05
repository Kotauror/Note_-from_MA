## Mocking

```ruby
@bikes.select(&:working?).count
```
counts bikes that answer with true to method working?

Mock - make mock versions of stuff which is collaborating with tested object.

mock - general term for substitution.
* double - used for classes.
* stubs - used for mehtods

- isolate tests - instead of calling additional file - in docking_station_spec not require 'bike', just make new class - naotherObject.


bike = double('a bike', working?:, true)
allow(bike). to receive(:has_weels?).and_return(true)

feature test - simulate journey of user - test part of user story
  * unit tests for s feature


```ruby  
require 'docking_station'
# require 'bike'
# class AnotherObject
#   def working?
#     true
#   end
# end

describe DockingStation do

  it "returns 1 when when working bike" do
    # bike = Bike.new
    # bike = AnotherObject.new
    bike = double('a bike', working?: true)

    allow(bike).to receive(:has_wheels?).and_return(true)
    bikes = [bike]

    docking_station = DockingStation.new(bikes)

    expect(docking_station.working_bike_count).to eq(1)
  end
end
``` 
