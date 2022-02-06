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

local meadowphysics = include("meadowphysics/lib/mp/core")()
local g = grid.connect()

-- voicing

local Moonshine = include('engine_study/lib/moonshine_engine')
engine.name = 'Moonshine'

function trigger(note_num, hz, voice)
end

function gate_high(note_num, hz, voice)
end

function gate_low(note_num, hz, voice)

end

function init_engine ()
  Moonshine.add_params()  
end




-- core stuff

function init()
  meadowphysics.init()
  params:add_separator()
  init_engine()
end

function key(n,z)
  meadowphysics:handle_key(n,z)
end

function g.key(x, y, z) 
  meadowphysics:handle_grid_input(x, y, z)
end

function redraw()
  screen.clear()
  meadowphysics:draw()
  screen.update()
end
