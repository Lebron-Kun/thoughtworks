from PIL import Image
import numpy as np
image = Image.open('./image.jpg')
#image.show()    
image_array = np.array(image)


h_list = np.dot(image_array[...,:3], [1/3, 1/3, 1/3])
m_mat = np.array(h_list)
f = m_mat.reshape(image_array.shape[0],image_array.shape[1])

img = Image.fromarray(f.astype('uint8')).convert('L')
img.show()