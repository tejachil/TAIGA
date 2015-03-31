; ModuleID = '/home/teja/Documents/TAIGA/HLS/fifo_dequeue/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=16 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"-bus_bundle axi_fifo\00", align 1 ; [#uses=1 type=[21 x i8]*]
@str = internal constant [13 x i8] c"fifo_dequeue\00" ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define i32 @fifo_dequeue(i32* %fifo_data, i1* %fifo_recv_enable, i1* %fifo_recv_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %fifo_data) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fifo_recv_enable) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fifo_recv_valid) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %fifo_data}, i64 0, metadata !47), !dbg !48 ; [debug line = 8:16] [debug variable = fifo_data]
  call void @llvm.dbg.value(metadata !{i1* %fifo_recv_enable}, i64 0, metadata !49), !dbg !50 ; [debug line = 9:18] [debug variable = fifo_recv_enable]
  call void @llvm.dbg.value(metadata !{i1* %fifo_recv_valid}, i64 0, metadata !51), !dbg !52 ; [debug line = 10:18] [debug variable = fifo_recv_valid]
  call void (...)* @_ssdm_op_SpecInterface(i32* %fifo_data, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !53 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %fifo_recv_enable, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !55 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %fifo_recv_valid, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !56 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !57 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @.str1, [10 x i8]* @.str3, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [21 x i8]* @.str4) nounwind, !dbg !58 ; [debug line = 17:1]
  store volatile i1 true, i1* %fifo_recv_enable, align 1, !dbg !59 ; [debug line = 20:2]
  br label %._crit_edge, !dbg !60                 ; [debug line = 23:2]

._crit_edge:                                      ; preds = %._crit_edge, %0
  %fifo_recv_valid.load = load volatile i1* %fifo_recv_valid, align 1, !dbg !60 ; [#uses=1 type=i1] [debug line = 23:2]
  br i1 %fifo_recv_valid.load, label %1, label %._crit_edge, !dbg !60 ; [debug line = 23:2]

; <label>:1                                       ; preds = %._crit_edge
  store volatile i1 false, i1* %fifo_recv_enable, align 1, !dbg !61 ; [debug line = 26:2]
  %fifo_data.load = load volatile i32* %fifo_data, align 4, !dbg !62 ; [#uses=1 type=i32] [debug line = 28:2]
  ret i32 %fifo_data.load, !dbg !62               ; [debug line = 28:2]
}

; [#uses=4]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_SpecIFCore(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/teja/Documents/TAIGA/HLS/fifo_dequeue/solution1/.autopilot/db/fifo_dequeue.pragma.2.c", metadata !"/home/teja/Documents/TAIGA/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !18} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fifo_dequeue", metadata !"fifo_dequeue", metadata !"", metadata !6, i32 6, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i1*, i1*)* @fifo_dequeue, null, null, metadata !16, i32 11} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"fifo_dequeue/.apc/fifo_dequeue.c", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !12, metadata !12}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_volatile_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_volatile_type ]
!14 = metadata !{i32 786454, null, metadata !"uint1", metadata !6, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ]
!15 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{metadata !20, metadata !23, metadata !24, metadata !25}
!20 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !21, i32 320, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !21, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !21, i32 321, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !21, i32 322, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !26, i32 26, metadata !9, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!26 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"fifo_data", metadata !31, metadata !"int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"fifo_recv_enable", metadata !31, metadata !"uint1", i32 0, i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"fifo_recv_valid", metadata !31, metadata !"uint1", i32 0, i32 0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"return", metadata !45, metadata !"int", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 1, i32 0}
!47 = metadata !{i32 786689, metadata !5, metadata !"fifo_data", metadata !6, i32 16777224, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 8, i32 16, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"fifo_recv_enable", metadata !6, i32 33554441, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 9, i32 18, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"fifo_recv_valid", metadata !6, i32 50331658, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 10, i32 18, metadata !5, null}
!53 = metadata !{i32 13, i32 1, metadata !54, null}
!54 = metadata !{i32 786443, metadata !5, i32 11, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 14, i32 1, metadata !54, null}
!56 = metadata !{i32 15, i32 1, metadata !54, null}
!57 = metadata !{i32 16, i32 1, metadata !54, null}
!58 = metadata !{i32 17, i32 1, metadata !54, null}
!59 = metadata !{i32 20, i32 2, metadata !54, null}
!60 = metadata !{i32 23, i32 2, metadata !54, null}
!61 = metadata !{i32 26, i32 2, metadata !54, null}
!62 = metadata !{i32 28, i32 2, metadata !54, null}
