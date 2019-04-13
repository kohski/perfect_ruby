# 浮動小数点
1.0 + 1 # => 2.0
1 + 1 # => 2

#有理数クラス(分子,分母)で分数が扱える
r = Rational(1,3) # => (1/3)

r.denominator # => 3
r.numerator # => 1

r.to_f # => 0.3333333333333333

1/3r # => (1/3)


#複素数クラス
c = Complex(2,3)
c.real # => 2
c.imaginary # => 3
Complex(2) # => (2+0i)
Complex("2+2i") # => (2+2i)