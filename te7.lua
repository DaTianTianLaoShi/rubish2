---[[
shapes={ key = 0 }
function shapes:new(q,a)--ps 这里面的self指的是shape，new是声明一个实例
	-- body
	local q = q or {}--o做出限制
	print(q)
	setmetatable(q,self)
	self.__index=self--也是做出限制，但是为什么？访问shape这个不存在的k时候，会返回nil
	a = a or 0
	self.key = a*a
	return q
end
function shapes:PrintAreas()
	-- body
	print(self.key)
end

--声明对象后用.访问成员属性 ：访问成员方法
cs = shapes:new(nil,10)
print(cs)
cs:PrintAreas()
--]]
--[[
Shape = {area = 0}
-- 禄霉麓隆脌脿路陆路篓 new
function Shape:new (o,side)
  local o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0

  print(o)
  self.area = side*side;
  return o
end
-- 禄霉麓隆脌脿路陆路篓 printArea
function Shape:printArea ()
  print("脙忙禄媒脦陋 ",self.area)
end
-- 麓麓陆篓露脭脧贸
myshape = Shape:new(nil,10)
myshape:printArea()
--]]
