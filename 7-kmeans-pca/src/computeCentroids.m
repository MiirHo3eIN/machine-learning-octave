function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
	[m n] = size(X);
	centroids = zeros(K, n);
	
	% Go over every centroid and compute mean of all points that belong to it. 
	% Concretely, the row vector centroids(i, :) should contain the mean of the data points assigned to centroid i.
	% Used for-loop over the centroids to compute this.
	for eachC = 1: K,
		sum=zeros(1,n);
		count=0;
			for eachI = 1: length(idx)
				if eachC==idx(eachI),
					sum = sum + X(eachI,:);
					count = count+1;
				end;
			end;
		
		centroids(eachC,:)=(sum ./ count);
	end;
end

