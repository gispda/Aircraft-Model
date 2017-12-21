function [ Lift ] = lift( CL,rho,Speed,S )
%Returns the value of lift (Force)
     Lift=.5*CL*rho*Speed^2*S;

end

