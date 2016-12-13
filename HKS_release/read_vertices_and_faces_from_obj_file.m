function [vertex,faces] = read_vertices_and_faces_from_obj_file(filename)
  % Reads a .obj mesh file and outputs the vertex and face list
  % assumes a 3D triangle mesh and ignores everything but:
  % v x y z and f i j k lines
  % Input:
  %  filename  string of obj file's path
  %
  % Output:
  %  V  number of vertices x 3 array of vertex positions
  %  F  number of faces x 3 array of face indices
  %
  V = zeros(0,3);
  F = zeros(0,3);
  vertex_index = 1;
  face_index = 1;
  fid = fopen(filename,'rt');
  line = fgets(fid);
  line = fgets(fid);
  [nums]=sscanf(line,'%d %d %d');
  vertex=zeros(nums(1),3);
  faces=zeros(nums(2),3);
  for i=1:nums(1)
  line = fgets(fid);
  vertex(i,:) = sscanf(line,'%f %f %f');
  end
  for i=1:nums(2)
   line = fgets(fid);
   faces(i,:)=sscanf(line,'3 %d %d %d');
  end
  

  fclose(fid);
end