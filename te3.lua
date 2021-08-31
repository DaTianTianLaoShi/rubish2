t2={s=100}
t={}
t2.__index=t2
setmetatable(t,t2)
print(t.s)
