#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PIXELS_PER_IMAGE 784
#define NUM_OF_IMAGES 10000

int getImage(int argc, char *argv[]){

	int i, j, colSelect;
	int allImagesMatrix[PIXELS_PER_IMAGE][NUM_OF_IMAGES];
	int selectedImage[784];
	int selectedImageMatrix[28][28];
	FILE *allImages;

	*allImages = fopen("testData.txt", "r"); //read in raw data of all 10000 images


	//store raw data in array
	for(i = 0; i < PIXELS_PER_IMAGE; i++)
  	{
    	for(j = 0; j < NUM_OF_IMAGES; j++) 
      	{
			fscanf(allImages, "%d", &allImagesMatrix[i][j]);
		}
	}

	colSelect = atoi(argv[1]); //convert argument inputted by user into int

	for(i = 0; i < PIXELS_PER_IMAGE; i++){
		selectedImage[i] = allImagesMatrix[i][colSelect]; //write pixel values of selected column into new 1D array
	}

	a = 0
	for(i = 0, i < 28, i++){
		for(j = 0, j < 28, j++){
			selectedImageMatrix[i][j] = selectedImage[a]; //write 1D (784x1) array into 2D (28x28) array
			a++;
		}
	}

}