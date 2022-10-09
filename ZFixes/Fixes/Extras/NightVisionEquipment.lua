for _, nv in pairs(data.raw["night-vision-equipment"]) do
    if nv.shape.width == 2 then
        nv.shape = {
        width = 1,
        height = 1,
        type = "full"
        }
    end
end