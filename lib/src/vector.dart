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
}

class Vector2D {
  // Values
  num x, y;

  // Constructors
  Vector2D(this.x, this.y);

  // Named Constructors
  Vector2D.zero() : this(0, 0);
  Vector2D.x(num x) : this(x, 0);
  Vector2D.y(num y) : this(0, y);

  Vector2D.unit(num x, num y) {
    num mag2D = utils.mag(x, y);
    this.x = x / mag2D;
    this.y = y / mag2D;
  }

  Vector2D.random({num min = -1, num max = 1}) {
    this.x = utils.random(min, max);
    this.y = utils.random(min, max);
  }

  // Methods
  num length() => utils.mag(x, y);
  num dot(Vector2D v) => x * v.x + y * v.y;
}