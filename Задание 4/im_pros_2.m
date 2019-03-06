function fn = im_pros_2()  #FN = IM_PROS_2()  fn = input('File name: ', 's');  f = imfinfo(fn);  im_type=f.ColorType  im_indexed='indexed';  if strcmp(im_type, im_indexed)    [im_1, map] = imread(fn);    [map] = imcomplement(map);    figure, imshow(im_1, map);    else    im_1 = imread(fn);    [im_1] = imcomplement(im_1);    figure, imshow(im_1);  endif
endfunction
