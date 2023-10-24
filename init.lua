-- Two dashes start a one line comment 
--[[
    Adding two ['s and ]'s  makes it multi-line
    comment.
    Make sure there is no space after --
]]

--------------------------------------------
-- 1. Variable and flow control
--------------------------------------------

Num = 42    -- Numbers can be integer or floating point

s = 'walternate'    -- Immutable string like python
t = "double-quotes are also fine"
u = [[Double brackets
start and end
multi-line strings.]]

t = nil     -- Undefines t; Lua has garbge collection

-- Blocks are denoted with keywords like 'do/end'
while Num < 50 do
    Num = Num + 1   -- No ++ or += type operators.
end

-- If clauses: 
if Num > 40 then
    print('over 40')
elseif s ~= 'walternate' then   -- ~= is not equals
    -- Equality check is == like Python/C; ok for strings.
    io.write('not over 40\n')
else
    -- Variables are global by default.
    thisIsGlobal = 5    -- Camel case is common.

    -- How to make a variable local:
    local line = io.read()  -- Reads next stdin line.

    -- String concatenation uses the .. operator:
    print('Winter is coming, ' .. line)
end

-- Undefined variables return nil.
-- This is not an error.
foo = anUnknownVariable     -- Now foo = nil
print('foo = ', foo)

aBoolValue = false

-- Only nil and false are falsy; 0 and '' are true
-- 'not' operator negates(make negative) the value of its operand
if not aBoolValue then print('it was false') end
if not foo then print('foo is nil') end

-- 'or' and 'and' are short-circuited.
-- This is similar to the A?B:C operator in C:
ans = aBoolValue and 'yes' or 'no'  --> 'no'
print(ans)

karlSum = 0

for i = 1, 100 do   -- The range includes both ends.
    karlSum = karlSum + i;
end
print('kerlSum', karlSum)

-- Use "100, 1, -1" as the range to count down:
freeSum = 0
for j = 100, 1, -1 do freeSum = freeSum + j end
-- In genereal, the range is begin, end[, step].
print(freeSum)

-- Another loop construct:
repeat
    print('the way of future')
    Num = Num - 1
until Num == 0
