function obj = SigDC(varargin)

obj = struct('opt', [], 'data', []);
obj = class(obj, 'SigDC');

errstr = 'Don''t know what to do with ';	% for argument error messages

switch nargin
    case 0
        % default constructor, do nothing
    case 1
        % copy constructor
        arg = varargin{1};
        if isa(arg, class(obj))
            obj = arg;
        else
            error([errstr 'a %s.'], class(arg));
        end
    case 2
        arg1 = varargin{1};
        arg2 = varargin{2};
        if isa(arg1, 'Optickle') && isa(arg2, 'double')
            obj.opt = arg1;
            obj.data = arg2;
        else
            error([errstr 'a %s and a %s.'], class(arg1), class(arg2));
        end
    otherwise
        % wrong number of input args
        error([errstr '%d input arguments.'], nargin);
end