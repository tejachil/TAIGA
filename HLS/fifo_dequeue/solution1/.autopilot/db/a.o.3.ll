; ModuleID = '/home/teja/Documents/TAIGA/HLS/fifo_dequeue/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=3 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=16 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [21 x i8] c"-bus_bundle axi_fifo\00", align 1 ; [#uses=1 type=[21 x i8]*]
@str = internal constant [13 x i8] c"fifo_dequeue\00" ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define i32 @fifo_dequeue(i32* %fifo_data, i1* %fifo_recv_enable, i1* %fifo_recv_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %fifo_data) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fifo_recv_enable) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fifo_recv_valid) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %fifo_data}, i64 0, metadata !20), !dbg !34 ; [debug line = 8:16] [debug variable = fifo_data]
  call void @llvm.dbg.value(metadata !{i1* %fifo_recv_enable}, i64 0, metadata !35), !dbg !36 ; [debug line = 9:18] [debug variable = fifo_recv_enable]
  call void @llvm.dbg.value(metadata !{i1* %fifo_recv_valid}, i64 0, metadata !37), !dbg !38 ; [debug line = 10:18] [debug variable = fifo_recv_valid]
  call void (...)* @_ssdm_op_SpecInterface(i32* %fifo_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !39 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %fifo_recv_enable, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !41 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %fifo_recv_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !42 ; [debug line = 15:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !43 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [21 x i8]* @p_str4) nounwind, !dbg !44 ; [debug line = 17:1]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %fifo_recv_enable, i1 true) nounwind, !dbg !45 ; [debug line = 20:2]
  br label %._crit_edge, !dbg !46                 ; [debug line = 23:2]

._crit_edge:                                      ; preds = %._crit_edge, %0
  %fifo_recv_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %fifo_recv_valid) nounwind, !dbg !46 ; [#uses=1 type=i1] [debug line = 23:2]
  br i1 %fifo_recv_valid_read, label %1, label %._crit_edge, !dbg !46 ; [debug line = 23:2]

; <label>:1                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %fifo_recv_enable, i1 false) nounwind, !dbg !47 ; [debug line = 26:2]
  %fifo_data_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %fifo_data) nounwind, !dbg !48 ; [#uses=1 type=i32] [debug line = 28:2]
  ret i32 %fifo_data_read, !dbg !48               ; [debug line = 28:2]
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0                            ; [#uses=1 type=i1]
  ret i1 %empty
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"fifo_data", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 0, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"fifo_recv_enable", metadata !4, metadata !"uint1", i32 0, i32 0}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 0, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"fifo_recv_valid", metadata !4, metadata !"uint1", i32 0, i32 0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"return", metadata !18, metadata !"int", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 1, i32 0}
!20 = metadata !{i32 786689, metadata !21, metadata !"fifo_data", metadata !22, i32 16777224, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 786478, i32 0, metadata !22, metadata !"fifo_dequeue", metadata !"fifo_dequeue", metadata !"", metadata !22, i32 6, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i1*, i1*)* @fifo_dequeue, null, null, metadata !32, i32 11} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786473, metadata !"fifo_dequeue/.apc/fifo_dequeue.c", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{metadata !25, metadata !26, metadata !28, metadata !28}
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!27 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_volatile_type ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_volatile_type ]
!30 = metadata !{i32 786454, null, metadata !"uint1", metadata !22, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 8, i32 16, metadata !21, null}
!35 = metadata !{i32 786689, metadata !21, metadata !"fifo_recv_enable", metadata !22, i32 33554441, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 9, i32 18, metadata !21, null}
!37 = metadata !{i32 786689, metadata !21, metadata !"fifo_recv_valid", metadata !22, i32 50331658, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 10, i32 18, metadata !21, null}
!39 = metadata !{i32 13, i32 1, metadata !40, null}
!40 = metadata !{i32 786443, metadata !21, i32 11, i32 2, metadata !22, i32 0} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 14, i32 1, metadata !40, null}
!42 = metadata !{i32 15, i32 1, metadata !40, null}
!43 = metadata !{i32 16, i32 1, metadata !40, null}
!44 = metadata !{i32 17, i32 1, metadata !40, null}
!45 = metadata !{i32 20, i32 2, metadata !40, null}
!46 = metadata !{i32 23, i32 2, metadata !40, null}
!47 = metadata !{i32 26, i32 2, metadata !40, null}
!48 = metadata !{i32 28, i32 2, metadata !40, null}
