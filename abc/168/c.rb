a,b,h,m = gets.split.map(&:to_f)

pi = Math::PI
h_angle = (60 * h + m) / 720 * 360
m_angle = m / 60 * 360
angle = (h_angle - m_angle).abs
angle = [angle, 360 - angle].min
x = a**2 + b**2 - 2*a*b*Math.cos(angle/180 * pi)
puts Math.sqrt(x.to_f)