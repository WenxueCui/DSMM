function Y = vl_nnloss_zuo(X,c,dzdy,varargin)

% --------------------------------------------------------------------
% pixel-level L2 loss
% --------------------------------------------------------------------

if nargin <= 2 || isempty(dzdy)
    t = ((X-c).^2)/2;
    Y = sum(t(:))/size(X,4); % reconstruction error per sample;
else
    Y = bsxfun(@minus,X,c).*dzdy;
end

