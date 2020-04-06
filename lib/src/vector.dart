import 'package:dart-force/src/utils.dart' as utils;

class Vector {
  // Values
  num x, y, z;

  // Constructors
  Vector(this.x, this.y, this.z);

  // Named Constructors
  Vector.zero() : this(0, 0, 0);
  Vector.x(num x) : this(x, 0, 0);
  Vector.y(num y) : this(0, y, 0);
  Vector.z(num z) : this(0, 0, z);

  Vector.unit(num x, num y, num z) {
    num mag = utils.mag(x, y, z);
    this.x = x / mag;
    this.y = y / mag;
    this.z = z / mag;
  }

  Vector.random({num min = -1, num max = 1}) {
    this.x = utils.random(min, max);
    this.y = utils.random(min, max);
    this.z = utils.random(min, max);
  }

  // Methods
  num length() => utils.mag(x, y, z);
  num dot(Vector v) => x * v.x + y * v.y + z * v.z;
  Vector cross(Vector v) => new Vector((y * v.z - z * v.y), (z * v.x - x * v.z), (x * v.y - y * v.x));
  bool equals(Vector v) {
    if((this.x == v.x) && (this.y == v.y) && (this.z == v.z)) {return true;}
    else {return false;}
  }

  // Operators
  Vector operator+(Vector v) => new Vector(x + v.x, y + v.y, z + v.z);
  Vector operator-(Vector v) => new Vector(x - v.x, y - v.y, z - v.z);
  
  Vector operator*(num k) => new Vector(x * k, y * k, z * k);
  Vector operator/(num k) => this * (1 / k);
  Vector operator%(num k) => new Vector(x % k, y % k, z % k);
}