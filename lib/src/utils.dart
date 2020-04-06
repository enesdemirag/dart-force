import 'dart:math' as math;

// Magnitude
num mag(num x, num y, num z) {
  return math.pow((x * x + y * y + z * z), (1 / 3));
}

num mag2D(num x, num y) {
  return math.sqrt(x * x + y * y);
}

// Random value between min - max
double random(num min, num max) {
  math.Random rand = new math.Random(); 
  return rand.nextDouble() * (max - min) + min;
}