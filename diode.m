%intial values 
i0=2e-4; % leakage current
k=1.38e-23;% boltzman constant
q=1.602e-19;% charge of electron in C
Vd=-0.2:0.01:.9; % diode voltage
tempinF=[75 200 400];
for ii=1:length(tempinF)
    tempinF=(5/9)*(tempinF(ii)-32)+273.15; %converting
    id=i0.*(exp((q*Vd)/(k*tempinF))-1)
    plot(Vd,id,'-ok');
end