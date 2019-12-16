function err = mass_cons_flux_test
disp('mass_cons_flux_test - testing mass consistent flux approximation with terrain')
nx=10; ny=10; nz=10;

% hh=rand(1,3);
% hh=[1,1,1];
% [x,y,z]   = ndgrid(hh(1)*[0:nx],hh(2)*[0:ny],hh(3)*[0:nz]);
% X={x,y,z};
mesh_len=[8,8,8];
h=rand(1,3);
X = regular_mesh(mesh_len,h,1.2);
X=add_terrain_to_mesh(X,'hill','shift',0.3)
x = X{1};
y = X{2};
z = X{3};

U0 = grad3z(ones(size(x)-1),mesh_len);
U0{1}=ones(size(U0{1}));
U0{2}=0*ones(size(U0{2}));
U0{3}=0*ones(size(U0{3}));

err=0;
[U,err] = mass_cons_flux(U0,X,'check'); 
plot_wind_above_terrain(U,X,mesh_len)
% plot_wind_above_terrain(U,X,[1 1 1])
end