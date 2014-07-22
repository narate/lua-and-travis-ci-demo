local add = function(...)
    local sum = 0;
    local args = ...
    for k, v in pairs(args) do
        sum = sum + args[k]
    end
    return sum
end

local div = function(a, b)
    if b == 0 then
        return 'inf'
    end
    return a / b;
end

local sub = function(...)
    local sub = 0
    local args = ...
    for k, v in pairs(args) do
        sum = sum - args[k]
    end
    return sum
end

local mul = function(...)
    local sum = 1
    local args = ...
    for k, v in pairs(args) do
        sum = sum * args[k]
    end
    return sum
end

describe('My Math Test', function()
    describe('Test add', function()
        it('should return 1 + 2 + 3 = 6', function()
            local got = add({1,2,3})
            assert.equals(6, got)
        end)
        it('should return -1 + 2 + -1 = 0', function()
            local got = add({-1,2,-1})
            assert.equals(0, got)
        end)
    end)

    describe('Test div', function()
        it('should return div(1,2) = 0.5', function()
            local got = div(1,2)
            assert.equals(0.5, got)
        end)

        it('should failed divide by zero', function()
            local got = div(1,0)
            assert.equals('inf', got)
        end)
    end)

    describe('Test sub', function()
        it('should return sub(1, 2) == -1', function()
            local got = sub(1,2)
            assert.equals(1, got)
        end)
    end)
end)
