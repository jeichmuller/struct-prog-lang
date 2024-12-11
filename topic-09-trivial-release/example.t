
i=0;
x=[2,3];
while (i<2){
    y=0;
    if (x[0]<x[1]){ y=x[1]; 
    x[1]=x[0]; 
    x[0]=y };
    i = i + 1;
    print i
};

print x
