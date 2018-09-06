function p = predOwn(filename)
	 X = imread(filename);
	 X = imresize(X,[20 20]);
	 X = double(X);
	 temp = X;
	 X = (X.-128)./255;
	 X = X .* (temp > 0);
	 X = reshape(X, [], numel(X));
	 displayData(X);
	 load('ex3weights.mat');
	 p = predict(Theta1,Theta2,X);