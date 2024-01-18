--[[
Default gaming wheel joystick script

Do not modify this file. Use this file as a template for your custom script
instead. Then select your custom script in the settings.
]]

local gw = require "gaming_wheel"

--[[
Called before creating the virtual device.

Returns a JoystickFilter table. In this table you select the vJoy interface
number to use and define the conditions the interface(s) must satisfy.

If the selected infterface number is zero, then the app will try to find any
interface which satisfies the filter. If there is none, the app will throw an
error.

If the selected interface number is non-zero, the app will only check the
specified interface, and if the filter can't be satisfied, the app will throw
an error.
]]
function Setup()
    local filter = gw.JoystickFilter
    filter.interface = 0
    filter.axisX = true
    filter.axisY = true
    filter.axisZ = true
    filter.axisXrot = true
    filter.axisZrot = true
    filter.buttonCount = 28
    return filter
end

--[[
Converts axis values to hat angles.
]]
local function vectorToHatAngle(x, y)
    if x == 0 and y == 0 then
        return -1
    end

    local a = math.atan(y, x) * 18000 / math.pi
    if a < 0 then
        return 36000 + a
    else
        return a
    end
end

-- Takes a full scale -32768 - 32767 scalar and maps it to 0 - 32767
local function halfAxis(value)
    return math.floor(value / 2 + 16384)
end

--[[
Called every time the virtual device is to be updated.

The parameter inputState is an `InputState` table which has the input data that
arrives from the mobile app with its values adjusted by the axis settings.

Returns an `UpdateOutput` table which has the updated input values.
]]
function Update(inputState)
    local output = gw.UpdateOutput
    output.axisX = halfAxis(inputState.wheel)
    output.axisY = halfAxis(inputState.gas)
    output.axisZ = halfAxis(inputState.brake)

    output.axisXRot = halfAxis(inputState.thumbX)
    output.axisZRot = halfAxis(-inputState.thumbY)

    output.button = {
        [20] = inputState.gearR,
        [21] = inputState.gear1,
        [22] = inputState.gear2,
        [23] = inputState.gear3,
        [24] = inputState.gear4,
        [25] = inputState.gear5,
        [26] = inputState.gear6,
        [27] = inputState.gear7
    }

    if not inputState.secondaryActive then
        output.button[0] = inputState.button1
        output.button[1] = inputState.button2
        output.button[2] = inputState.button3
        output.button[3] = inputState.button4
        output.button[4] = inputState.button5
        output.button[5] = inputState.button6
        output.button[6] = inputState.button7
        output.button[7] = inputState.button8

        output.button[8] = inputState.volumeDown
        output.button[9] = inputState.volumeUp
    else
        output.button[10] = inputState.button1
        output.button[11] = inputState.button2
        output.button[12] = inputState.button3
        output.button[13] = inputState.button4
        output.button[14] = inputState.button5
        output.button[15] = inputState.button6
        output.button[16] = inputState.button7
        output.button[17] = inputState.button8

        output.button[18] = inputState.volumeDown
        output.button[19] = inputState.volumeUp
    end

    return output
end