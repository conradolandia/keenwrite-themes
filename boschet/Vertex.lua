local class = require "middleclass"
Vertex = class( 'Vertex' )

function Vertex:initialize( x, y )
  self.x = x
  self.y = y
end

function Vertex:x()
  return self.x
end

function Vertex:y()
  return self.y
end

function Vertex:distance( v )
  return math.sqrt( (v.x - self.x) ^ 2 + (v.y - self.y) ^ 2 )
end

function Vertex:string()
  return string.format( "\"(%2d, %2d)\"", self.x, self.y )
end

