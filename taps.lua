mytable={}
ma._add=function ( ... )--原表
	-- body
end
setmetatable(mytable,ma)

--调用table的一个不存在的索引时，会使用到元表的__index元方法，和前几个元方法不同，__index可以是一个函数也可是一个table。
my1={key1="value1"}
--index作为函数
m={}
m2={1,2,3}
m._index=function (m2,key)
	-- body
	return "this is key"
end
setmetatable(m2,m)
print(m2.key)
--输出结果为this is key
--_index作为table
local m3={}
m3._index={key="123",key2="456",key3="789"}
local t2 = {1,2,3}
setmetatable(t2,m3)
print(t2.key)
print(t2.key2)
print(t2.key3)
--[[输出结果为
123
456
789
--]]

--当为table中一个不存在的索引赋值时，会去调用元表中的__newindex元方法
--作为函数 __newindex是一个函数时会将赋值语句中的表、索引、赋的值当作参数去调用。不对表进行改变
local m4={}
a1={key1="This is key1"}
--需要三个参数 
m4.__newindex=function (a1,t1,s1)
	-- body
	print(t1)
	print(s1)
end
setmetatable(a1,m4)
a1.key2="this is key2"--打印结果 key2   this is key2
print(a1.key2)
--[[
输出结果为空 nil 只是调用了_newIndex元方法，并没有对t中的元素进行任何改进
--]]
--作为table__newindex是一个table时，为t中不存在的索引赋值会将该索引和值赋到__newindex所指向的表中，不对原来的表进行改变。
local m5={}
local newm5={}
m5.__newindex=newm5
t6={}
setmetatable(t6,m5)
t6.key="this is m5key"--如果对已经存在的键进行赋值，则对元数组进行更新
print(t6.key,newm5.key)
--结果为nil,this is m5key

--rawget可以让你直接获取到表中索引的实际值，而不通过元表的__index元方法。
local m6={}
local mm7.__newindex={key4."4396"}
setmetatable(m6,mm7)--到底需不需要待定
local s=rawget(m6,"key4")--key4要加双引号
print(s)
--输出结果为空


table10={}
tablein={key5."112345"}
table10.__newindex=tablein
ts={}
setmetatable(ts,table10)
print(ts.key)--输出为nil
rawset(ts,"key5","112345")
print(ts.key5)
--输出112345

