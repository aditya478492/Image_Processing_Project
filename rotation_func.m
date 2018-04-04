function rot=rotation_func(vertex,a)
cosine=cos(a);
sine=sin(a);
R=[cosine -sine 0;sine cosine 0;0 0 1];
rot=mtimes(R,vertex);
end