function zearlybot_idle()
    return {
        filename = "__ZEarlyBots__/Graphics/Entity/early-construction-robot/early-construction-robot.png",
        priority = "high",
        line_length = 16,
        width = 32,
        height = 36,
        frame_count = 1,
        shift = {0, -0.15625},
        direction_count = 16,
      }
end

function zearlybot_motion()
    return {
          filename = "__ZEarlyBots__/Graphics/Entity/early-construction-robot/early-construction-robot.png",
          priority = "high",
          line_length = 16,
          width = 32,
          height = 36,
          frame_count = 1,
          shift = {0, -0.15625},
          direction_count = 16,
          y = 36,
        }
end

function zearlybot_working()
    return {
          filename = "__ZEarlyBots__/Graphics/Entity/early-construction-robot/early-construction-robot-working.png",
          priority = "high",
          line_length = 2,
          width = 28,
          height = 36,
          frame_count = 2,
          shift = {0, -0.15625},
          direction_count = 16,
          animation_speed = 0.3,
        }
    end
    
    
    zearlybot_shadow = {
      filename = "__ZEarlyBots__/Graphics/Entity/early-construction-robot/bot_shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      direction_count = 16,
    }
    
    zearlybot_shadow_working = {
      stripes = util.multiplystripes(2,
        {
          {
            filename = "__ZEarlyBots__/Graphics/Entity/early-construction-robot/bot_shadow.png",
            width_in_frames = 16,
            height_in_frames = 1,
          }
        }
      ),
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      direction_count = 16,
    }




local Entity = table.deepcopy(data.raw["construction-robot"]["construction-robot"])

Entity.name = "early-bot"
Entity.energy_per_move = "2.5kJ"
Entity.energy_per_tick = "0.04kJ"
Entity.max_energy = "0.2MJ"
Entity.max_health = 50
Entity.speed = 0.04
Entity.speed_multiplier_when_out_of_energy = 0.1
Entity.minable.result = "early-bot"
Entity.icon = "__ZEarlyBots__/Graphics/Icons/robots/early-construction-robot.png"
Entity.icon_size = 32

local Item = table.deepcopy(data.raw["item"]["construction-robot"])

Item.name = "early-bot"
Item.place_result = "early-bot"
Item.icon = "__ZEarlyBots__/Graphics/Icons/robots/early-construction-robot.png"
Item.icon_size = 32
Item.order = "a[early-bot]-b[robot]"

local Recipe = table.deepcopy(data.raw["recipe"]["construction-robot"])
Recipe.enabled = true
Recipe.name = "early-bot"
Recipe.ingredients = {{"early-flying-robot-frame", 1},{"iron-plate", 6}}
Recipe.result = "early-bot"

data:extend{Entity, Item, Recipe}


data.raw["construction-robot"]["early-bot"].idle = zearlybot_idle()
data.raw["construction-robot"]["early-bot"].in_motion = zearlybot_motion()
data.raw["construction-robot"]["early-bot"].working = zearlybot_working()
data.raw["construction-robot"]["early-bot"].shadow_idle = zearlybot_shadow
data.raw["construction-robot"]["early-bot"].shadow_in_motion = zearlybot_shadow
data.raw["construction-robot"]["early-bot"].shadow_working = zearlybot_shadow_working
