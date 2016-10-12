# calculate area of a triangle
area_rectangle(Length, Width, Area) :-
  Area is Length * Width.

area_triangle(Height, Base, Area) :-
  Area is 0.5*Height*Base.
