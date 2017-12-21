function [ drag ] = drag( CD,rho,Speed,S )
%Returns the value of drag (Force)
     drag=.5*CD*rho*Speed^2*S;

end

