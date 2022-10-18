local class = require "middleclass"
PriorityQueue = class( 'PriorityQueue' )

function PriorityQueue:initialize()
  self.heap = {}
end

function PriorityQueue:sink()
  local heap = self.heap
  local size = #heap
  local i = 1
  local ii = i * 2

  while ii <= size do
    local m = ii + (((ii + 1 > size) or (heap[ii] < heap[ii + 1])) and 0 or 1)

    if heap[i] > heap[m] then
      heap[i], heap[m] = heap[m], heap[i]
    end

    i = m
    ii = i * 2
  end
end

function PriorityQueue:swim()
  local heap = self.heap
  local i = #heap

  while math.floor( i / 2 ) > 0 do
    local half = math.floor( i / 2 )

    if heap[i] < heap[half] then
      heap[i], heap[half] = heap[half], heap[i]
    end

    i = half
  end
end

function PriorityQueue:push( element )
  self.heap[ #self.heap + 1 ] = element

  self:swim()
end

function PriorityQueue:poll()
  local heap = self.heap
  local result = heap[1]

  heap[1] = heap[ #heap ]
  heap[ #heap ] = nil

  self:sink()

  return result
end

function PriorityQueue:empty()
  return #self.heap == 0
end

