// name: OperationPow2
// keywords: 
// status: correct
// cflags: -d=newInst
//

model OperationPow2
  Integer i1;
  Real[2, 2] r1, r2;
equation
  r1 = r2 ^ i1;
  r1 = r2 ^ 0;
  r1 = r2 ^ 1;
  r1 = r2 ^ 2;
  r1 = r2 ^ 3;
  r1 = r2 ^ 4;
end OperationPow2;

// Result:
// class OperationPow2
//   Integer i1;
//   Real r1[1,1];
//   Real r1[1,2];
//   Real r1[2,1];
//   Real r1[2,2];
//   Real r2[1,1];
//   Real r2[1,2];
//   Real r2[2,1];
//   Real r2[2,2];
// equation
//   r1[1,1] = (r2 ^ i1)[1, 1];
//   r1[1,2] = (r2 ^ i1)[1, 2];
//   r1[2,1] = (r2 ^ i1)[2, 1];
//   r1[2,2] = (r2 ^ i1)[2, 2];
//   r1[1,1] = 1.0;
//   r1[1,2] = 0.0;
//   r1[2,1] = 0.0;
//   r1[2,2] = 1.0;
//   r1[1,1] = r2[1,1];
//   r1[1,2] = r2[1,2];
//   r1[2,1] = r2[2,1];
//   r1[2,2] = r2[2,2];
//   r1[1,1] = r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1];
//   r1[1,2] = r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2];
//   r1[2,1] = r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1];
//   r1[2,2] = r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2];
//   r1[1,1] = r2[1,1] * (r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1]) + r2[1,2] * (r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1]);
//   r1[1,2] = r2[1,1] * (r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2]) + r2[1,2] * (r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2]);
//   r1[2,1] = r2[2,1] * (r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1]) + r2[2,2] * (r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1]);
//   r1[2,2] = r2[2,1] * (r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2]) + r2[2,2] * (r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2]);
//   r1[1,1] = (r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1]) * (r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1]) + (r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2]) * (r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1]);
//   r1[1,2] = (r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1]) * (r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2]) + (r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2]) * (r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2]);
//   r1[2,1] = (r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1]) * (r2[1,1] * r2[1,1] + r2[1,2] * r2[2,1]) + (r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2]) * (r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1]);
//   r1[2,2] = (r2[2,1] * r2[1,1] + r2[2,2] * r2[2,1]) * (r2[1,1] * r2[1,2] + r2[1,2] * r2[2,2]) + (r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2]) * (r2[2,1] * r2[1,2] + r2[2,2] * r2[2,2]);
// end OperationPow2;
// endResult