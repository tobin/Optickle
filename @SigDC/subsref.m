function B = subsref(this, S)

% Just pass-through to the underlying double array
B = subsref(this.data, S);
