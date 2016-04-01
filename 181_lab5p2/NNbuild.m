Correct = 0;
for x = 1:10000
%Neural Network built from weights and biases
A = func2(x,testData);
%Computes the weighted sum of the input image nodes times the weights for
%each node of layer 1.
for i = 1:200
    %L1(i) = sum(A.*reshape(finalW1L1(i,:),[784,1])) + finalB1L1(i); %sum of multiplication of input image times weights plus the bias.
    
    for index1 = 1:784
        L1a(index1) = A(index1,1) * finalW1L1(i,index1);
    end
    
    L1b(i) = sum(L1a) + finalB1L1(i,1);

    L1(i) = 1/ ( 1 + exp(-(L1b(i))) );
end

    
%Computes the weighted sum of the layer 1 nodes times the weights for
%each node of layer 2.

for j = 1:200
    %L2(j) = sum(L1.*finalW1L2(j,:)) + finalB1L2(j); %sum of multiplication of layer 1 times weights plus the bias.

    for index2 = 1:200
        L2a(index2) = L1(index2) * finalW1L2(j,index2);
    end
    
    L2b(j) = sum(L2a) + finalB1L2(j,1);
    
    L2(j) = 1/ ( 1 + exp(-(L2b(j))) );
end

%Computes the weighted sum of the layer 2 nodes times the weights for
%each node of layer 3.

for k = 1:10
    %L3(k) = sum(L2.*finalSoftmaxTheta(k,:)); %sum of multiplication of layer 1 times weights plus the bias.

    for index3 = 1:200
        L3a(index3) = L2(index3) * finalSoftmaxTheta(k,index3);
    end
    
    L3b(k) = sum(L3a);
    
    Result(k) = 1/ ( 1 + exp(-(L3b(k))) );
end


[Prob,Chosen] = max(Result);
if Chosen == testLabels(x)
    Correct = Correct + 1;
end

end

