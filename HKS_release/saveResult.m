function [V,F] = saveResult(filename,vertices,faces,vt)
fprintf('save resutl\n');
num_vertices = size(vertices,1);
num_faces = size(faces,1);
delete(filename);
  fid = fopen(filename,'w');
  for i=1:num_vertices
  fprintf(fid,'v %.6f %.6f %.6f\n',vertices(i,1),vertices(i,2),vertices(i,3));
  end
    for i=1:num_vertices
  fprintf(fid,'vt %.6f 0\n',vt(i));
  end
  for i=1:num_faces
  fprintf(fid,'f %d/%d %d/%d %d/%d\n',faces(i,1),faces(i,1),faces(i,2),faces(i,2),faces(i,3),faces(i,3));
  end

fclose(fid);
fprintf('done\n');