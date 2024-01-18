-- XBox 360 Controller script which is probably not 100% accurate.

local gw = require "gaming_wheel"

function Setup()
    local deviceInfo = gw.DeviceInfo
    deviceInfo.name = "XBox 360 Wireless Controller"
    deviceInfo.vendorId = 0x45e
    deviceInfo.productId = 0xb12
    deviceInfo.busType = gw.Bus.USB
    deviceInfo.version = 1
    deviceInfo.abs = {
        gw.AbsoluteAxis.X,
        gw.AbsoluteAxis.Y,
        gw.AbsoluteAxis.Z,

        gw.AbsoluteAxis.RX,
        gw.AbsoluteAxis.RY,
        gw.AbsoluteAxis.RZ,

        gw.AbsoluteAxis.HAT0X,
        gw.AbsoluteAxis.HAT0Y,
    }
    deviceInfo.btn = {
        gw.Button.A,
        gw.Button.B,
        gw.Button.X,
        gw.Button.Y,
        gw.Button.TL,
        gw.Button.TR,
        gw.Button.SELECT,
        gw.Button.START,
        gw.Button.MODE,
        gw.Button.THUMBL,
        gw.Button.THUMBR,
    }
    return deviceInfo
end

-- A utility function to map a value to another scale.
local function map(value, valueRangeStart, valueRangeEnd, newRangeStart, newRangeEnd)
    return newRangeStart + (newRangeEnd - newRangeStart) * ((value - valueRangeStart) / (valueRangeEnd - valueRangeStart))
end

local function bool_to_num(value)
    return value and 1 or 0
end

function Update(inputState)
    local output = gw.UpdateOutput
    local yAxis = map(inputState.gas, 32767, -32768, 0, -32768) + map(inputState.brake, 32767, -32768, 0, 32767)
    output.abs = {
        [gw.AbsoluteAxis.X] = inputState.wheel,
        [gw.AbsoluteAxis.Y] = yAxis,
        [gw.AbsoluteAxis.RX] = inputState.thumbX,
        [gw.AbsoluteAxis.RY] = -inputState.thumbY
    }

    local up
    local right
    local left
    local down

    if not inputState.secondaryActive then
        up = bool_to_num(inputState.button5)
        right = bool_to_num(inputState.button6)
        left = bool_to_num(inputState.button7)
        down = bool_to_num(inputState.button8)

        output.btn = {
            [gw.Button.NORTH] = inputState.button1,
            [gw.Button.EAST] = inputState.button2,
            [gw.Button.WEST] = inputState.button3,
            [gw.Button.SOUTH] = inputState.button4,
            [gw.Button.SELECT] = false,
            [gw.Button.START] = false,
            [gw.Button.MODE] = false,
            [gw.Button.TL] = inputState.volumeUp,
            [gw.Button.TR] = inputState.volumeDown,
            [gw.Button.THUMBL] = false,
            [gw.Button.THUMBR] = false
        }

        output.abs[gw.AbsoluteAxis.Z] = -32768
        output.abs[gw.AbsoluteAxis.RZ] = -32768
    else
        up = 0
        right = 0
        left = 0
        down = 0

        output.btn = {
            [gw.Button.NORTH] = false,
            [gw.Button.EAST] = false,
            [gw.Button.WEST] = false,
            [gw.Button.SOUTH] = false,
            [gw.Button.SELECT] = inputState.button1,
            [gw.Button.START] = inputState.button5,
            [gw.Button.MODE] = inputState.button3,
            [gw.Button.TL] = false,
            [gw.Button.TR] = false,
            [gw.Button.THUMBL] = inputState.button3,
            [gw.Button.THUMBR] = inputState.button7
        }

        output.abs[gw.AbsoluteAxis.Z] = bool_to_num(inputState.button4) * 65535 -32768
        output.abs[gw.AbsoluteAxis.RZ] = bool_to_num(inputState.button8) * 65535 -32768
    end

    output.abs[gw.AbsoluteAxis.HAT0X] = right * 32767 + left * -32768
    output.abs[gw.AbsoluteAxis.HAT0Y] = up * -32768 + down * 32767

    return output
end