--
--   m e a d o w p h y s i c s
--
--   a grid-enabled
--   rhizomatic
--   cascading counter
--
--
--   *----
--        *-----
--            *---
--      *-----
--
--

meadowphysics = include("meadowphysics/lib/engine/meadowphysics")

function init()
  meadowphysics:init()
  meadowphysics:on_trigger(handle_trigger)
  meadowphysics:on_tick(handle_clock)
  redraw()
  print("GO")
end

function handle_trigger(e) -- Sound making thing goes here!
  print(e)
end

ti = 0
function handle_clock()
  ti = ti + 1
  redraw()
end

function redraw()
  screen.clear()
  screen.move(4, 8)
  screen.text(ti)
  screen.move(4, 16)
  screen.text(meadowphysics:get_state(1))
  screen.move(4, 24)
  screen.text(meadowphysics:get_state(2))
  screen.update()
end

function enc()
  meadowphysics:handle_enc()
end

function key(n,z)
  if(z == 1) then
    meadowphysics.voices[n-1].bang()
  end
  meadowphysics:handle_key(n,z)
end
