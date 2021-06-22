#include <opencv2/opencv.hpp>

#include <vector>
#include <iostream>

using namespace cv;


Mat redFilter(const Mat& src){
	
	Mat redOnly;
	Mat1b mask1, mask2;


	inRange (src, Scalar(0, 70 , 50), Scalar(10, 255,255), 
mask1);
	inRange (src, Scalar(170, 70, 50), Scalar(100, 255, 255), 
mask2);

	

	return mask1 | mask2;
}

int main(int argc, char* arv[]){
	VideoCapture cap(0);
	
	if(!cap.isOpened()){
		std::cout << "cannot open the video cam" << std::endl;
		return -1; 
	}

	std::cout << "opend video cam" << std::endl;

	Mat frame, thr, gray, hsv_image;
	
	//for(;;){
		bool bSuccess = cap.read(frame);

		if (!bSuccess){
			std::cout << "cannot read frame" << std::endl;
			//break;  
		}

		cvtColor(frame, hsv_image, cv::COLOR_BGR2HSV);
	
		Mat redOnly = redFilter(hsv_image);	
		Mat grayOnl	
		

		cvtColor(redOnly, grayOnly, COLOR_BGR2GRAY);
		threshold(grayOnly, thr, 100, 255, THRESH_BINARY);
		Moments m = moments(thr, true);
		Point p(m.m10/m.m00, m.m01/m.m00);

		std::cout << Mat(p) << std::endl;

	}

	imwrite("test.jpg", redOnly);

	std::cout << "end program" << std::endl;
	return 0;
}  
