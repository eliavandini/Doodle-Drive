-- Import this script in your joystick scripts

local gaming_wheel = {}

gaming_wheel.JoystickFilter = {
    interface = 0,
    buttonCount = 0,
    hatCount = 0,
    -- false means "don't care"
    aileron = false,
    axisVbrx = false,
    axisVbry = false,
    axisVbrz = false,
    axisVx = false,
    axisVy = false,
    axisVz = false,
    axisX = false,
    axisXrot = false,
    axisY = false,
    axisYrot = false,
    axisZ = false,
    axisZrot = false,
    dial = false,
    rudder = false,
    slider = false,
    throttle = false,
    wheel = false,
}

gaming_wheel.InputState = {
    wheel = 0,
    gas = 0,
    brake = 0,
    thumbX = 0,
    thumbY = 0,
    gearR = 0,
    gear1 = 0,
    gear2 = 0,
    gear3 = 0,
    gear4 = 0,
    gear5 = 0,
    gear6 = 0,
    gear7 = 0,
    button = {
        false,
        false,
        false,
        false,
        false,
        false,
        false,
        false
    },
    volumeDown = false,
    volumeUp = false,
    secondaryActive = false,
}

gaming_wheel.UpdateOutput = {
    -- hat is a table with four angles.
    -- An angle is between 0 - 35999 degrees or -1 (neutral state)
    hat = nil,
    -- `button` is a table with 128 booleans.
    button = nil,
    -- Remaining outputs are 32 bit integers.
    aileron = nil,
    axisVBRX = nil,
    axisVBRY = nil,
    axisVBRZ = nil,
    axisVX = nil,
    axisVY = nil,
    axisVZ = nil,
    axisX = nil,
    axisXRot = nil,
    axisY = nil,
    axisYRot = nil,
    axisZ = nil,
    axisZRot = nil,
    dial = nil,
    rudder = nil,
    slider = nil,
    throttle = nil,
    wheel = nil,
}

return gaming_wheel