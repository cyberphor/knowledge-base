# Object-Oriented Programming

### Super() Method
```python
class SuperHero():
    def __init__(self, super_power):
        self.main_super_power = super_power

class MarvelSuperHero(SuperHero):
    def __init__(self, super_power):
        super().__init__("Flight")
        self.minor_super_power = super_power

iron_man = MarvelSuperHero("Intelligence")
print(iron_man.major_super_power) # Flight
print(iron_man.minor_super_power) # Intelligence
```
