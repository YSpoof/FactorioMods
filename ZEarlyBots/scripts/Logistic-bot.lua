function zearlybot_idle()
    return {
       filename = "__ZEarlyBots__/Graphics/Entity/early-logistic-robot/early-logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 41,
    height = 42,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 42,
    hr_version =
    {
      filename = "__ZEarlyBots__/Graphics/Entity/early-logistic-robot/hr-early-logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 80,
      height = 84,
      frame_count = 1,
      shift = util.by_pixel(0, -3),
      direction_count = 16,
      y = 84,
      scale = 0.5
    }
	}
end

function zearlybot_motion()
    return {	
		filename = "__ZEarlyBots__/Graphics/Entity/early-logistic-robot/early-logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 41,
    height = 42,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 126,
    }
end

function zearlybot_working()
    return {
          filename = "__ZEarlyBots__/Graphics/Entity/early-logistic-robot/early-logistic-robot-working.png",
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
    width = 24,
    height = 24,
    frame_count = 1,
    shift = util.by_pixel(33.5, 18.5),
    direction_count = 16,
    draw_as_shadow = true,
    }
    
    zearlybot_shadow_working = 
	{
     filename = "__ZEarlyBots__/Graphics/Entity/early-construction-robot/bot_shadow.png",
    priority = "high",
    line_length = 16,
    width = 24,
    height = 24,
    frame_count = 1,
    repeat_count = 2,
    shift = util.by_pixel(33.5, 18.5),
    direction_count = 16,
    draw_as_shadow = true,
    }




local Entity = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])

Entity.name = "early-logistic-bot"
Entity.energy_per_move = "2.5kJ"
Entity.energy_per_tick = "0.04kJ"
Entity.max_energy = "0.2MJ"
Entity.max_health = 50
Entity.speed = 0.03
Entity.speed_multiplier_when_out_of_energy = 0.1
Entity.minable.result = "early-logistic-bot"
Entity.icon = "__ZEarlyBots__/Graphics/Icons/robots/early-logistic-robot.png"
Entity.icon_size = 64

local Item = table.deepcopy(data.raw["item"]["logistic-robot"])

Item.name = "early-logistic-bot"
Item.place_result = "early-logistic-bot"
Item.icon = "__ZEarlyBots__/Graphics/Icons/robots/early-logistic-robot.png"
Item.icon_size = 64
Item.order = "ab[early-bot]-b[early-logistic-bot]"

local Recipe = table.deepcopy(data.raw["recipe"]["logistic-robot"])
Recipe.enabled = true
Recipe.name = "early-logistic-bot"
Recipe.ingredients = {{"early-flying-robot-frame", 1},{"copper-plate", 8}}
Recipe.result = "early-logistic-bot"

data:extend{Entity, Item, Recipe}


data.raw["logistic-robot"]["early-logistic-bot"].idle = zearlybot_idle()
data.raw["logistic-robot"]["early-logistic-bot"].in_motion = zearlybot_motion()
data.raw["logistic-robot"]["early-logistic-bot"].working = zearlybot_working()
data.raw["logistic-robot"]["early-logistic-bot"].shadow_idle = zearlybot_shadow
data.raw["logistic-robot"]["early-logistic-bot"].shadow_in_motion = zearlybot_shadow
data.raw["logistic-robot"]["early-logistic-bot"].shadow_working = zearlybot_shadow_working
