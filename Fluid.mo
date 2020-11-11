model Fluid
  parameter Real Fci(unit = "kg/h")=100 "Feed cold in/out";
  parameter Real Fhi(unit = "kg/h")=50 "Feed hot in/out";
  parameter Real Tci(unit = "K")=10 "Temp cold in";
  parameter Real Thi(unit = "K")=100 "Temp hot in";
  parameter Real Tho(unit = "K")=90 "Temp hot out";
  parameter Real U(unit = "kg/Km^2s^2")=10 "Heat transfer coefficient";
  parameter Real Area(unit = "m^2")=10 "Area";
  parameter Real Volume(unit = "m^3")=10 "Volume";
  parameter Real Density(unit = "kg/m^3")=10 "Density"; 
  parameter Real Cp(unit = "Jkg^-1K-1")=10 "Specific Heat";
  
  Real Tco; 
equation
  der(Tco)=(Fci*Cp*Density*(Tco-Tci)-U*Area*((Thi-Tci)-(Tho-Tco))/log((Thi-Tci)/(Tho-Tco)))/(Volume*Cp*Density);    
  
end Fluid;
