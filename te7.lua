---[[
shapes={ key = 0 }
function shapes:new(q,a)--ps �������selfָ����shape��new������һ��ʵ��
	-- body
	local q = q or {}--o��������
	print(q)
	setmetatable(q,self)
	self.__index=self--Ҳ���������ƣ�����Ϊʲô������shape��������ڵ�kʱ�򣬻᷵��nil
	a = a or 0
	self.key = a*a
	return q
end
function shapes:PrintAreas()
	-- body
	print(self.key)
end

--�����������.���ʳ�Ա���� �����ʳ�Ա����
cs = shapes:new(nil,10)
print(cs)
cs:PrintAreas()
--]]
--[[
Shape = {area = 0}
-- »ù´¡Àà·½·¨ new
function Shape:new (o,side)
  local o = o or {}
  setmetatable(o, self)
  self.__index = self
  side = side or 0

  print(o)
  self.area = side*side;
  return o
end
-- »ù´¡Àà·½·¨ printArea
function Shape:printArea ()
  print("Ãæ»ýÎª ",self.area)
end
-- ´´½¨¶ÔÏó
myshape = Shape:new(nil,10)
myshape:printArea()
--]]
