function display(this)

if exist('showfDC','file')
    showsigDC(this.opt, this.data);
else
    display(this.data)
end
