

x=[6,2,4,3,1];
len = 5 - 1; //change 5 to length of array

print "Original array: ";
print x;
print "Bubble Sort: ";

swapped ="t";
while (swapped == "t"){
    swapped ="f";
    i=0;
    j=1;
    while (i<len){

        if (x[i]>x[j]){ 
            y=x[i]; 
            x[i]=x[j]; 
            x[j]=y;
            swapped = "t";
            print x
        };
    
        i = i + 1;
        j=i+1 
    };
    len = len - 1
};
print "Swapped array: ";
print x
