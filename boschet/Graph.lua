require "Vertex"
require "Edge"

local class = require "middleclass"
Graph = class( 'Graph' )

function Graph:initialize()
end

function Graph:compute( source )
  local tree = {}

  source:setVisited( true )

  for i = 1, #self.edges do
    local inner = self.edges[ i ].adjoined

    while not( inner:empty() ) do
      local edge = inner:poll()

      if not( edge.visited ) then
        tree[ #tree + 1 ] = edge
        edge:setVisited( true )
      end
    end
  end

  return tree
end

function Graph:connected( r, c, m )
  self.edges = {}

  local prev = nil
  local i = 0

  while i < m do
    local a = Vertex:new( math.random( r ), math.random( c ) )
    local b = Vertex:new( math.random( r ), math.random( c ) )

    if not( prev == nil) then
      local v

      if math.random( 2 ) == 1 then
        v = prev.u
      else
        v = prev.v
      end

      if math.random( 2 ) == 1 then
        a = v
      else
        b = v
      end
    end

    local edge = Edge:new( a, b )

    self.edges[ i + 1 ] = edge

    edge:adjoin( prev )
    prev = edge

    i = i + 1
  end

  return self.edges
end

function Graph:output( prefix, o )
  for i = 1, #o do
    print( prefix .. ":" .. o[i]:string() )
  end
end

