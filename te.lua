Shape={number=0}
function Shape.slide(Shape,number)--这步骤相当于在函数内部声明了一个slide方法
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
