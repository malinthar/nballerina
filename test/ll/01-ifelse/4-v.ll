@_bal_stack_guard = external global i8*
declare i8 addrspace(1)* @_bal_panic_construct(i64) cold
declare void @_bal_panic(i8 addrspace(1)*) noreturn cold
declare i8 addrspace(1)* @_bal_int_to_tagged(i64)
declare void @_Bb02ioprintln(i8 addrspace(1)*)
define void @_B04rootmain() !dbg !5 {
  %1 = alloca i8 addrspace(1)*
  %2 = alloca i8 addrspace(1)*
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i8
  %5 = load i8*, i8** @_bal_stack_guard
  %6 = icmp ult i8* %4, %5
  br i1 %6, label %8, label %7
7:
  call void @_B_printBranch(i64 5), !dbg !10
  store i8 addrspace(1)* null, i8 addrspace(1)** %1, !dbg !10
  call void @_B_printBranch(i64 10), !dbg !11
  store i8 addrspace(1)* null, i8 addrspace(1)** %2, !dbg !11
  call void @_B_printBranch(i64 15), !dbg !12
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !12
  ret void
8:
  %9 = call i8 addrspace(1)* @_bal_panic_construct(i64 1028), !dbg !9
  call void @_bal_panic(i8 addrspace(1)* %9)
  unreachable
}
define internal void @_B_printBranch(i64 %0) !dbg !7 {
  %x = alloca i64
  %2 = alloca i1
  %3 = alloca i8 addrspace(1)*
  %4 = alloca i1
  %x.1 = alloca i64
  %5 = alloca i8 addrspace(1)*
  %x.2 = alloca i64
  %6 = alloca i8 addrspace(1)*
  %7 = alloca i8
  %8 = load i8*, i8** @_bal_stack_guard
  %9 = icmp ult i8* %7, %8
  br i1 %9, label %28, label %10
10:
  store i64 %0, i64* %x
  %11 = load i64, i64* %x
  %12 = icmp slt i64 %11, 10
  store i1 %12, i1* %2
  %13 = load i1, i1* %2
  br i1 %13, label %14, label %16
14:
  %15 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 0), !dbg !14
  call void @_Bb02ioprintln(i8 addrspace(1)* %15), !dbg !14
  store i8 addrspace(1)* null, i8 addrspace(1)** %3, !dbg !14
  br label %27
16:
  %17 = load i64, i64* %x
  %18 = icmp eq i64 %17, 10
  store i1 %18, i1* %4
  %19 = load i1, i1* %4
  br i1 %19, label %20, label %23
20:
  %21 = load i64, i64* %x
  store i64 %21, i64* %x.1
  %22 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 1), !dbg !15
  call void @_Bb02ioprintln(i8 addrspace(1)* %22), !dbg !15
  store i8 addrspace(1)* null, i8 addrspace(1)** %5, !dbg !15
  br label %26
23:
  %24 = load i64, i64* %x
  store i64 %24, i64* %x.2
  %25 = call i8 addrspace(1)* @_bal_int_to_tagged(i64 2), !dbg !16
  call void @_Bb02ioprintln(i8 addrspace(1)* %25), !dbg !16
  store i8 addrspace(1)* null, i8 addrspace(1)** %6, !dbg !16
  br label %26
26:
  br label %27
27:
  ret void
28:
  %29 = call i8 addrspace(1)* @_bal_panic_construct(i64 2564), !dbg !13
  call void @_bal_panic(i8 addrspace(1)* %29)
  unreachable
}
!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!2}
!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !DIFile(filename:"../../../compiler/testSuite/01-ifelse/4-v.bal", directory:"")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!3 = !DISubroutineType(types: !4)
!4 = !{}
!5 = distinct !DISubprogram(name:"main", linkageName:"_B04rootmain", scope: !1, file: !1, line: 4, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !6)
!6 = !{}
!7 = distinct !DISubprogram(name:"printBranch", linkageName:"_B_printBranch", scope: !1, file: !1, line: 10, type: !3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !8)
!8 = !{}
!9 = !DILocation(line: 0, column: 0, scope: !5)
!10 = !DILocation(line: 5, column: 4, scope: !5)
!11 = !DILocation(line: 6, column: 4, scope: !5)
!12 = !DILocation(line: 7, column: 4, scope: !5)
!13 = !DILocation(line: 0, column: 0, scope: !7)
!14 = !DILocation(line: 12, column: 8, scope: !7)
!15 = !DILocation(line: 14, column: 8, scope: !7)
!16 = !DILocation(line: 16, column: 8, scope: !7)
