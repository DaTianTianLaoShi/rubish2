--[[
t2={s=100}
t={}
t2.__index=t2
setmetatable(t,t2)
print(t.s)
--]]
--通常原表设置如下
t2={s=200}
t3={}
t2.__index=t2
setmetatable(t3,t2)
print(t3.s)