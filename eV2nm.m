% eV2nm
% Koutsopoulos Nikos
% AEM 14689
% C2019

clear

prompt = 'Input eV to nm (1) or nm to eV (2) (type 1 or 2) ';                                                    
answer = input(prompt);
while (answer ~= 2 ) && (answer ~= 1)
    prompt = 'Input eV to nm (1) or nm to eV (2) (type 1 or 2) ';                                                    
    answer = input(prompt);
end
if answer == 1
    prompt = 'Input eV: ';                                                    
    eV = input(prompt);
    lamda = 1240/eV;
    X = ['Wavelength is ',num2str(lamda),' nm.'];
    disp(X);
else if answer == 2
     prompt = 'Input nm: ';                                                    
    lamda = input(prompt);
    eV = 1240/lamda;
    Y = ['Energy is ',num2str(eV),' eV.'];
    disp(Y);
    end
end
