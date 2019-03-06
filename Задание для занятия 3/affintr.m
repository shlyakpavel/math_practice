function affintr(I, T, type)  tform=maketform('affine', T);  I1=imtransform(I, tform);  figure,imshow(I1)  title(type)
endfunction
