@_bal_stack_guard = external global i8*
declare void @_bal_panic (i64)
declare i8 addrspace (1)* @_bal_int_to_tagged (i64)
declare void @_Bio__println (i8 addrspace (1)*)
declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64) nounwind readnone speculatable willreturn
define void @_B_main () {
  %i = alloca i64
  %_0 = alloca i1
  %_1 = alloca i1
  %_2 = alloca i8 addrspace (1)*
  %_3 = alloca i64
  %_4 = alloca i64
  %_5 = alloca i8
  %_6 = load i8*, i8** @_bal_stack_guard
  %_7 = icmp ult i8* %_5, %_6
  br i1 %_7, label %L7, label %L1
L1:
  store i64 0, i64* %i
  br label %L2
L2:
  %_8 = load i64, i64* %i
  %_9 = icmp slt i64 %_8, 3
  store i1 %_9, i1* %_0
  %_10 = load i1, i1* %_0
  %_11 = xor i1 1, %_10
  store i1 %_11, i1* %_1
  %_12 = load i1, i1* %_1
  br i1 %_12, label %L4, label %L5
L3:
  ret void
L4:
  br label %L3
L5:
  %_13 = load i64, i64* %i
  %_14 = call i8 addrspace (1)* @_bal_int_to_tagged (i64 %_13)
  call void @_Bio__println (i8 addrspace (1)* %_14)
  store i8 addrspace (1)* null, i8 addrspace (1)** %_2
  %_15 = load i64, i64* %i
  %_16 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 %_15, i64 1)
  %_17 = extractvalue {i64, i1} %_16, 1
  br i1 %_17, label %L9, label %L8
L6:
  %_20 = load i64, i64* %_4
  call void @_bal_panic (i64 %_20)
  unreachable
L7:
  call void @_bal_panic (i64 772)
  unreachable
L8:
  %_18 = extractvalue {i64, i1} %_16, 0
  store i64 %_18, i64* %_3
  %_19 = load i64, i64* %_3
  store i64 %_19, i64* %i
  br label %L2
L9:
  store i64 3329, i64* %_4
  br label %L6
}
