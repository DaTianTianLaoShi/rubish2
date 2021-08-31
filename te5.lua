--[[package.path="C:/Users/USER/Desktop/moudles.lua"..";..\\?.lua"
tm=require("moudles")
print(tm.c)
print(package.path)]]--
---[[
a="abcdef"
b="hijk"
f="qqqqq"
c=a..b
d={a,b}
num =math.random(1,2)
table.insert(d,f)
a=table.concat(d,1)
print(d[2])
