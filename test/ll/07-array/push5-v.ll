@_bal_stack_guard = external global i8*
@_Bi04root0 = external constant {i32}
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}*, i64)
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb0m4lang5arraypush(i8 addrspace(1)*, i8 addrspace(1)*)
declare i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)*) readnone
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %v = alloca i8 addrspace(1)*
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8 addrspace(1)*
  %5 = alloca i8 addrspace(1)*
  %6 = alloca i8
  %7 = load i8*, i8** @_bal_stack_guard
  %8 = icmp ult i8* %6, %7
  br i1 %8, label %21, label %9
9:
  %10 = call {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* @_bal_list_construct({i32}* @_Bi04root0, i64 0)
  %11 = bitcast {{i32, i8 addrspace(1)*(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i8 addrspace(1)*)*, i64(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, i64)*, double(i8 addrspace(1)*, i64)*, i64(i8 addrspace(1)*, i64, double)*, i64, {i32}*}*, i64, i64, i8* addrspace(1)*} addrspace(1)* %10 to i8 addrspace(1)*
  %12 = getelementptr i8, i8 addrspace(1)* %11, i64 1297036692682702852
  store i8 addrspace(1)* %12, i8 addrspace(1)** %1
  %13 = load i8 addrspace(1)*, i8 addrspace(1)** %1
  store i8 addrspace(1)* %13, i8 addrspace(1)** %v
  %14 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !8
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 17), !dbg !8
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %14, i8 addrspace(1)* %15), !dbg !8
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !8
  %16 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !9
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %16, i8 addrspace(1)* null), !dbg !9
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !9
  %17 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !10
  %18 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 21), !dbg !10
  call void @_Bb0m4lang5arraypush(i8 addrspace(1)* %17, i8 addrspace(1)* %18), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %4, !dbg !10
  %19 = load i8 addrspace(1)*, i8 addrspace(1)** %v, !dbg !11
  %20 = call i8 addrspace(1)* @_bal_tagged_clear_exact_ptr(i8 addrspace(1)* %19), !dbg !11
  call void @_Bb02ioprintln(i8 addrspace(1)* %20), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !11
  ret void
21:
  %22 = call i8 addrspace(1)* @_bal_panic_construct(i64 516), !dbg !7
  call void @_bal_panic(i8 addrspace(1)* %22)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/07-array/push5-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 2, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = !DILocation(line: 0, column: 0, scope: !5)
!8 = !DILocation(line: 4, column: 6, scope: !5)
!9 = !DILocation(line: 5, column: 6, scope: !5)
!10 = !DILocation(line: 6, column: 6, scope: !5)
!11 = !DILocation(line: 7, column: 4, scope: !5)
