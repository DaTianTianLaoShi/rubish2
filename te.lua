Shape={number=0}
function Shape.slide(Shape,number)--�ⲽ���൱���ں����ڲ�������һ��slide����
	-- body
	Shape.number=number+1
	return Shape.number
end
function Shape:slide2(number)
	-- body
	self.number=number+2
	return self.number
end
a= Shape.slide(Shape,10)
b=Shape:slide2(20)
print(a)
print(b)
