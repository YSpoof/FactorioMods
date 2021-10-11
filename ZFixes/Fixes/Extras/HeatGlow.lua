local dr = data.raw
local drb = dr.boiler
local drr = dr.reactor

--[[ Copyright max2344 ]]

local REALISTIC_HEAT_GLOW_BASEDIR = "__ZFixes__/Graphics/Entity"
local REALISTIC_HEAT_GLOW_TINT = {r=1, g=0.63, b=0.39}
local REALISTIC_HEAT_GLOW_REACTOR_SHIFT = util.by_pixel(1, -12) --{0.03, -0.38375}
local REALISTIC_HEAT_GLOW_REACTOR_SCALE = 0.3543 --0.3542
local REALISTIC_HEAT_GLOW_DEF_BLENDMODE = "normal"
local REALISTIC_HEAT_GLOW_RR_BLENDMODE = "additive-soft"

local REALISTIC_HEAT_GLOW_FUNC = function(v) return v end
local REALISTIC_HEAT_GLOW_FUNC = apply_heat_pipe_glow

function do_blendmode(mode, sprite)
  if sprite.filename then

    if not sprite.draw_as_light then
      sprite.blend_mode=mode
    end

    if sprite.hr_version and not sprite.hr_version.draw_as_light then
      sprite.hr_version.blend_mode=mode
    end

  elseif sprite.layers then
    for _, s in pairs(sprite.layers) do
      do_blendmode(mode, s)
    end
  end
  return sprite
end


function do_tint(tint, sprite)
  if sprite.filename then
    if sprite.hr_version then
      sprite.hr_version.tint=table.deepcopy(tint)
    end
    sprite.tint=table.deepcopy(tint)

  elseif sprite.layers then
    for _, s in pairs(sprite.layers) do
      do_tint(tint, s)
    end
  end
  return sprite
end


function do_picture(sprite, pic, hr_pic)
  if sprite then
    for _, x in pairs(sprite) do
      if x.filename then
        x.filename = pic or x.filename
        if x.hr_version and x.hr_version.filename then
          x.hr_version.filename = hr_pic or x.hr_version.filename
        end
      end
    end
    return sprite
  end
end







-- heat exchanger ------------------------------------------------------------------------------------
--  adding
drb["heat-exchanger"].energy_source.heat_glow = {
    north = REALISTIC_HEAT_GLOW_FUNC{
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-N-glow.png",
      priority = "extra-high",
      width = 38, height = 70,
      shift = util.by_pixel(0, 8),
    },
    east = REALISTIC_HEAT_GLOW_FUNC{
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-E-glow.png",
      priority = "extra-high",
      width = 60, height = 62,
      shift = util.by_pixel(-22, -12),
    },
    south = REALISTIC_HEAT_GLOW_FUNC{
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-S-glow.png",
      priority = "extra-high",
      width = 38, height = 40,
      shift = util.by_pixel(0, -36),
    },
    west = REALISTIC_HEAT_GLOW_FUNC{
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-W-glow.png",
      priority = "extra-high",
      width = 60, height = 64,
      shift = util.by_pixel(20, -12),
    },
}
for _, dir in pairs(drb["heat-exchanger"].energy_source.heat_glow) do
  do_tint(REALISTIC_HEAT_GLOW_TINT, dir)
  do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, dir) 
end


drb["heat-exchanger"].energy_source.heat_picture = {
        north = {
          filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-N-heated.png",
          priority = "extra-high",
          width = 24, height = 48,
          shift = util.by_pixel(-1, 8),
          hr_version = {
            filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/hr-heatex-N-heated.png",
            priority = "extra-high",
            width = 44, height = 96,
            shift = util.by_pixel(-0.5, 8.5),
            scale = 0.5,
          }
        },
        east = {
          filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-E-heated.png",
          priority = "extra-high",
          width = 40, height = 40,
          shift = util.by_pixel(-21, -13),
          hr_version = {
            filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/hr-heatex-E-heated.png",
            priority = "extra-high",
            width = 80, height = 80,
            shift = util.by_pixel(-21, -13),
            scale = 0.5,
          }
        },
        south = {
          filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-S-heated.png",
          priority = "extra-high",
          width = 16, height = 20,
          shift = util.by_pixel(-1, -30),
          hr_version = {
            filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/hr-heatex-S-heated.png",
            priority = "extra-high",
            width = 28, height = 40,
            shift = util.by_pixel(-1, -30),
            scale = 0.5,
          }
        },
        west = {
          filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-W-heated.png",
          priority = "extra-high",
          width = 32, height = 40,
          shift = util.by_pixel(23, -13),
          hr_version = {
            filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/hr-heatex-W-heated.png",
            priority = "extra-high",
            width = 64, height = 76,
            shift = util.by_pixel(23, -13),
            scale = 0.5,
          }
        },
      }


for _, v in pairs(drb["heat-exchanger"].energy_source.heat_picture) do
    do_tint(REALISTIC_HEAT_GLOW_TINT, v)
    do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, v)
end

drb["heat-exchanger"].energy_source.heat_pipe_covers = make_4way_animation_from_spritesheet(
  {
    filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/heatex-endings-heated.png",
    priority = "extra-high",
    width = 32, height = 32,
    direction_count = 4,
    hr_version = {
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-exchanger/hr-heatex-endings-heated.png",
      priority = "extra-high",
      width = 64, height = 64,
      direction_count = 4,
      scale = 0.5
    }
  }
)

-- end heat exchanger ------------------------------------------------------------------------------------


-- heat-pipe ------------------------------------------------------------------------------------
--  adding
dr["heat-pipe"]["heat-pipe"].heat_buffer.heat_glow = REALISTIC_HEAT_GLOW_FUNC{
  filename = REALISTIC_HEAT_GLOW_BASEDIR.."/heat-pipe/heated-glow.png",
  priority = "extra-high",
  width = 55, height = 55,
  scale = 1.2,
}

do_tint(REALISTIC_HEAT_GLOW_TINT, dr["heat-pipe"]["heat-pipe"].heat_buffer.heat_glow)
do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, dr["heat-pipe"]["heat-pipe"].heat_buffer.heat_glow) 



dr["heat-pipe"]["heat-pipe"].heat_glow_sprites = make_heat_pipe_pictures(REALISTIC_HEAT_GLOW_BASEDIR.."/heat-pipe/", "heated", {
  single = { empty = true },
  straight_vertical = { variations = 6 },
  straight_horizontal = { variations = 6 },
  corner_right_up = { name = "corner-up-right", variations = 6 },
  corner_left_up = { name = "corner-up-left", variations = 6 },
  corner_right_down = { name = "corner-down-right", variations = 6 },
  corner_left_down = { name = "corner-down-left", variations = 6 },
  t_up = {},
  t_down = {},
  t_right = {},
  t_left = {},
  cross = { name = "t" },
  ending_up = {},
  ending_down = {},
  ending_right = {},
  ending_left = {},
    })



  for _, sprite in pairs(dr["heat-pipe"]["heat-pipe"].heat_glow_sprites) do
    if sprite.filename then
      do_tint(REALISTIC_HEAT_GLOW_TINT, sprite)
    else
      for _, f in pairs(sprite) do
        do_tint(REALISTIC_HEAT_GLOW_TINT, f)
        do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, f)
      end
    end
  end

-- end heat-pipe ------------------------------------------------------------------------------------


-- nuclear-reactor ------------------------------------------------------------------------------------
-- heat buffer
--  adding
drr["nuclear-reactor"].heat_buffer.heat_glow = REALISTIC_HEAT_GLOW_FUNC{
  filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/reactor-heat-glow.png",
  priority = "extra-high",
  width = 188, height = 190,
  shift = util.by_pixel(-2, -4),
}

do_tint(REALISTIC_HEAT_GLOW_TINT, drr["nuclear-reactor"].heat_buffer.heat_glow)
do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, drr["nuclear-reactor"].heat_buffer.heat_glow) 
--end


drr["nuclear-reactor"].heat_buffer.heat_picture = REALISTIC_HEAT_GLOW_FUNC{
  filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/reactor-heated.png",
  priority = "extra-high",
  width = 108, height = 128,
  shift = util.by_pixel(1, -7),
  hr_version = {
    filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/hr-reactor-heated.png",
    priority = "extra-high",
    width = 216, height = 256,
    scale = 0.5,
    shift = util.by_pixel(3, -6.5),
  }
}


do_tint(REALISTIC_HEAT_GLOW_TINT, drr["nuclear-reactor"].heat_buffer.heat_picture)
do_blendmode(REALISTIC_HEAT_GLOW_RR_BLENDMODE, drr["nuclear-reactor"].heat_buffer.heat_picture)

drr["nuclear-reactor"].heat_lower_layer_picture = REALISTIC_HEAT_GLOW_FUNC{
  filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/reactor-pipes-heated.png",
  priority = "extra-high",
  width = 156, height = 156,
  shift = util.by_pixel(-3, -4),
  hr_version = {
    filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/hr-reactor-pipes-heated.png",
    priority = "extra-high",
    width = 320, height = 316,
    scale = 0.5,
    shift = util.by_pixel(-0.5, -4.5)
  }
}


do_tint(REALISTIC_HEAT_GLOW_TINT, drr["nuclear-reactor"].heat_lower_layer_picture)
do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, drr["nuclear-reactor"].heat_lower_layer_picture)

drr["nuclear-reactor"].heat_connection_patches_connected = {
  sheet = REALISTIC_HEAT_GLOW_FUNC{
    filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/reactor-connect-patches-heated.png",
    priority = "extra-high",
    width = 32, height = 32,
    variation_count = 12,
    hr_version = {
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/hr-reactor-connect-patches-heated.png",
      priority = "extra-high",
      width = 64, height = 64,
      variation_count = 12,
      scale = 0.5
    }
  }
}

do_tint(REALISTIC_HEAT_GLOW_TINT, drr["nuclear-reactor"].heat_connection_patches_connected.sheet)
do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, drr["nuclear-reactor"].heat_connection_patches_connected.sheet)


drr["nuclear-reactor"].heat_connection_patches_disconnected = {
  sheet = REALISTIC_HEAT_GLOW_FUNC{
    filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/reactor-connect-patches-heated.png",
    priority = "extra-high",
    width = 32, height = 32,
    variation_count = 12,
    y = 32,
    hr_version = {
      filename = REALISTIC_HEAT_GLOW_BASEDIR.."/nuclear-reactor/hr-reactor-connect-patches-heated.png",
      priority = "extra-high",
      width = 64, height = 64,
      variation_count = 12,
      y = 64,
      scale = 0.5
    }
  }
}

do_tint(REALISTIC_HEAT_GLOW_TINT, drr["nuclear-reactor"].heat_connection_patches_disconnected.sheet)
do_blendmode(REALISTIC_HEAT_GLOW_DEF_BLENDMODE, drr["nuclear-reactor"].heat_connection_patches_disconnected.sheet)
-- end nuclear-reactor ------------------------------------------------------------------------------------

