local add = function(...)
    local sum = 0;
    local args = ...
    for k, v in pairs(args) do
        sum = sum + args[k]
    end
    return sum
end

describe('My Math Test', function()
    it('should return 1 + 2 + 3 = 6', function()
        local got = add({1,2,3})
        assert.equals(6, got)
    end)
    it('should return -1 + 2 + -1 = 0', function()
        local got = add({-1,2,-1})
        assert.equals(0, got)
    end)
end)
