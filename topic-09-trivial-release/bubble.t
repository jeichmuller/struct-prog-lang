// Jay Eichmuller

x=[6,2,4,3,1];  //change array to whatever
len = 5 - 1;    //change 5 to length of array

print "Original array: ";
print x;
print "Bubble Sort: ";

swapped =true;
while (swapped == true){
    swapped =false;
    i=0;
    j=1;
    while (i<len){

        if (x[i]>x[j]){ 
            y=x[i]; 
            x[i]=x[j]; 
            x[j]=y;
            swapped = true;
            print x
        };
    
        i = i + 1;
        j=i+1 
    };
    len = len - 1
};
print "Swapped array: ";
print x
