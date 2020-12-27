function [c] =confun(X,params)
%% 制約関数の作成（決定論的環境）
%
% params = setparams;
% X = [1:4*params.N] ; 
% 
%% code
N = params.N ;
n = params.n ;
m = params.m ;

%事前割り当て
c = zeros(params.sumC,1) ;

%物理制約
for i = 1:N-1
    
    % x2 = x1 + n*dx1
    c(2*i-1) = X(2*i-1) + n*X(2*i) - X(2*i+1) ;
    
    % dx2 = dx1 + u*n/m
    c(2*i) = X(2*i) + X(2*N+i)*n/m - X(2*i+2) ;
    
end
    
