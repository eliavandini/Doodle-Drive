--[[
Default gaming wheel joystick script

Do not modify this file. Use this file as a template for your custom script
instead. Then select your custom script in the settings.
]]

local gw = require "gaming_wheel"

--[[
Called before creating the virtual device. Used to adjust the virtual device
parameters and the input layout.

Returns a DeviceInfo table which has the virtual device parameters and the
controller layout.
]]
function Setup()
    local deviceInfo = gw.DeviceInfo
    deviceInfo.name = "GW Virtual Steering Wheel"
    deviceInfo.vendorId = 0
    deviceInfo.productId = 0
    deviceInfo.busType = gw.Bus.VIRTUAL
    deviceInfo.version = 0
    deviceInfo.abs = {
        gw.AbsoluteAxis.X,
        gw.AbsoluteAxis.Y,
        gw.AbsoluteAxis.Z,
        gw.AbsoluteAxis.RX,
        gw.AbsoluteAxis.RZ
    }
    deviceInfo.rel = {
        gw.RelativeAxis.X,
        gw.RelativeAxis.Y,
    }
    deviceInfo.btn = {
        gw.Button.ZERO,
        gw.Button.ONE,
        gw.Button.TWO,
        gw.Button.THREE,
        gw.Button.FOUR,
        gw.Button.FIVE,
        gw.Button.SIX,
        gw.Button.SEVEN,
        gw.Button.TR,
        gw.Button.TL,
        gw.Button.DPAD_UP,
        gw.Button.DPAD_DOWN,
        gw.Button.DPAD_LEFT,
        gw.Button.DPAD_RIGHT,
        gw.Button.NORTH,
        gw.Button.SOUTH,
        gw.Button.EAST,
        gw.Button.WEST,
        gw.Button.TR2,
        gw.Button.TL2,
        gw.Button.TRIGGER_HAPPY1,
        gw.Button.TRIGGER_HAPPY2,
        gw.Button.TRIGGER_HAPPY3,
        gw.Button.TRIGGER_HAPPY4,
        gw.Button.TRIGGER_HAPPY5,
        gw.Button.TRIGGER_HAPPY6,
        gw.Button.TRIGGER_HAPPY7,
        gw.Button.TRIGGER_HAPPY8,
    }
    return deviceInfo
end

--[[
Called every time the virtual device is to be updated.

The parameter inputState is an `InputState` table which has the input data that
arrives from the mobile app with its values adjusted by the axis settings.

Returns an `UpdateOutput` table which has the updated input values.
]]
function Update(inputState)
    local output = gw.UpdateOutput

    output.abs = {
        [gw.AbsoluteAxis.X] = inputState.wheel,
        [gw.AbsoluteAxis.Y] = inputState.gas,
        [gw.AbsoluteAxis.Z] = inputState.brake,
        [gw.AbsoluteAxis.RX] = inputState.thumbX,
        [gw.AbsoluteAxis.RZ] = -inputState.thumbY
    }

    output.btn = {
        [gw.Button.TRIGGER_HAPPY1] = inputState.gearR,
        [gw.Button.TRIGGER_HAPPY2] = inputState.gear1,
        [gw.Button.TRIGGER_HAPPY3] = inputState.gear2,
        [gw.Button.TRIGGER_HAPPY4] = inputState.gear3,
        [gw.Button.TRIGGER_HAPPY5] = inputState.gear4,
        [gw.Button.TRIGGER_HAPPY6] = inputState.gear5,
        [gw.Button.TRIGGER_HAPPY7] = inputState.gear6,
        [gw.Button.TRIGGER_HAPPY8] = inputState.gear7
    }

    if not inputState.secondaryActive then
        output.btn[gw.Button.ZERO] = inputState.button1
        output.btn[gw.Button.ONE] = inputState.button2
        output.btn[gw.Button.TWO] = inputState.button3
        output.btn[gw.Button.THREE] = inputState.button4
        output.btn[gw.Button.FOUR] = inputState.button5
        output.btn[gw.Button.FIVE] = inputState.button6
        output.btn[gw.Button.SIX] = inputState.button7
        output.btn[gw.Button.SEVEN] = inputState.button8

        output.btn[gw.Button.TR] = inputState.volumeDown
        output.btn[gw.Button.TL] = inputState.volumeUp
    else
        output.btn[gw.Button.DPAD_UP] = inputState.button1
        output.btn[gw.Button.DPAD_DOWN] = inputState.button2
        output.btn[gw.Button.DPAD_LEFT] = inputState.button3
        output.btn[gw.Button.DPAD_RIGHT] = inputState.button4
        output.btn[gw.Button.NORTH] = inputState.button5
        output.btn[gw.Button.SOUTH] = inputState.button6
        output.btn[gw.Button.EAST] = inputState.button7
        output.btn[gw.Button.WEST] = inputState.button8

        output.btn[gw.Button.TR2] = inputState.volumeDown
        output.btn[gw.Button.TL2] = inputState.volumeUp
    end

    return output
end