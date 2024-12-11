
i=0;
j=1;
x=[3,2,4,6,1];
swapped =false;
while (swapped){
    swapped =false;
    i=0;
    j=1;
    len = 5 - 1; //change 5 to length of array
    while (i<len){

        if (x[i]>x[j]){ 
            y=x[j]; 
            x[j]=x[i]; 
            x[i]=y;
            swapped = false
        };
    
        i = i + 1;
        j=i+1 
    };
    len = len - 1
};
print x
