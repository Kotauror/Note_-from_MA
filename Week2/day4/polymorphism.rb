class Car
  def move(distance)
    "You drove #{distance}"
  end
end

class Plane
  def move(distance)
    "You drove #{distance}"
  end
end

class Hovercraft
  def move(distance)
    "You hover #{distance}"
  end
end

def move_200(thing, distance)
  thing.move(distance)
end

car = Car.new
p move_200(car, 200)

plane = Plane.new
p move_200(plane, 300)

hovercraft = Hovercraft.new
p move_200(hovercraft, 500)
