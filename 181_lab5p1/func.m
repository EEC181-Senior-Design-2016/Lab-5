function B = func(x, testData)
    A = testData(:,x);
    B = reshape(A,[28,28]);
    figure();
    imshow(B);
        