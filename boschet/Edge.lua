require "PriorityQueue"

local class = require "middleclass"
Edge = class( 'Edge' )

function Edge:initialize( u, v )
  self.adjoined = PriorityQueue:new()
  self.visited = false
  self.u = u
  self.v = v
  self.w = u:distance( v )
end

function Edge:u()
  return self.u
end

function Edge:v()
  return self.v
end

function Edge:w()
  return self.w
end

function Edge:adjoin( edge )
  if not( edge == nil ) then
    self.adjoined:push( edge )
  end
end

function Edge:adjoined()
  return self.adjoined
end

function Edge:setVisited( visited )
  self.visited = visited
end

function Edge:visited()
  return self.visited
end

function Edge:compare( edge )
  return self:w() - edge:w()
end

function Edge:string()
  return string.format(
    "%s -- %s [label=\"%s\"]", self.u:string(), self.v:string(), self.w
  )
end

