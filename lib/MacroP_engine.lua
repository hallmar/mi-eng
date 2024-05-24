--- MacroP Engine lib
-- Engine params and functions.
--
-- @module MacroP
-- @release v0.3.1
-- @author Steven Noreyko @okyeron
--
-- 
-- Based on the supercollider Mi-UGens by Volker Bohm <https://github.com/v7b1/mi-UGens>
-- Based on original code by Émilie Gillet <https://github.com/pichenettes/eurorack>
--

local cs = require 'controlspec'

local MacroP = {}

function MacroP.add_params()

  params:add_separator ("Macro Osc P")
  params:add{type = "control", id = "engine", name = "engine",
    controlspec = cs.new(1, 16, "lin", 1, 0, "")}

  params:add{type = "control", id = "pitch", name = "pitch",
    controlspec = cs.new(0, 127, "lin", 1, 35, "")}
  params:add{type = "control", id = "harmonics", name = "harmonics",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0.25, "")}

  params:add{type = "control", id = "timbre", name = "timbre",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0.5, "")}
  params:add{type = "control", id = "timb_mod", name = "timb_mod",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0, "")}

  params:add{type = "control", id = "morph", name = "morph",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0.5, "")}
  params:add{type = "control", id = "morph_mod", name = "morph_mod",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0, "")}

  params:add{type = "control", id = "fm_mod", name = "fm_mod",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0, "")}

  params:add{type = "control", id = "trigger", name = "trigger",
    controlspec = cs.new(0, 1, "lin", 1, 0, "")}
  params:add{type = "control", id = "level", name = "level",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0, "")}
  
  params:add{type = "control", id = "decay", name = "decay",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0, "")}
  params:add{type = "control", id = "lpg_colour", name = "lpg_colour",
    controlspec = cs.new(0.00, 1.00, "lin", 0.01, 0, "")}

end

return MacroP
