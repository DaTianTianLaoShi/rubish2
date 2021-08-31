--无论怎样lua的对象都和原表有密不可分的关系
--符号：的含义是默认在方法形参里面添加一个self（指向自己的指针，相当于this）
--or在lua的赋值语句中表示第一个操作数为真返回第一个，否则返回第二个
call={key=0}
function call:new()
	-- body
end
--以上表达了new方法属于call（table），并且第一个形参是自己
shape={}
function shape:new(o,a)--ps 这里面的self指的是shape，new是声明一个实例
	-- body
	local o=o or {}--o做出限制
	 --a做出限制
	--setmetatable(o,self)
	a=a or 0
	self.t=a or 0
	--self.__index=self--也是做出限制，但是为什么？访问shape这个不存在的k时候，会返回nil
	self.key=a*a
	return o
end
function shape:PrintArea()
	-- body
	print(self.key)
end
function shape:re()
	-- body
	return self.t
end
--声明对象后用.访问成员属性 ：访问成员方法
c=shape:new(nil,10)
c:PrintArea()
--输出结果为100
s=shape:new(nil,20)
s:PrintArea()
print(s.key)
print(c.key)
print(c:re())
print(s.t)
print(c.t)
c.t=100
print(c.t)
c:re()
print(s.t)
--接下来进行对象继承
--这里需要大量的实验
shape2=shape:new()--new就是声明对象的实例
--
function shape2:new(o,C_a)
	-- body
	self._index=self
	o=o or 0
	C_a= C_a or 0
end
