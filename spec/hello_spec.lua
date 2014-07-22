describe('Test hello', function()
    it('should return 5', function()
        local str = 'hello'
        assert.equals(5, #str)
    end)
    it('should return 13', function()
        local str = 'hello, world!'
        assert.equals(13, #str)
    end)
end)
