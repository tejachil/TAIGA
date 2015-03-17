; ModuleID = '/home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=19 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=60 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [18 x i8] c"queue_multiplexer\00" ; [#uses=1 type=[18 x i8]*]

; [#uses=0]
define void @queue_multiplexer(i1* %switch_select, i32* %rx_data_a, i1* %rx_ready_a, i1* %rx_valid_a, i32* %rx_data_b, i1* %rx_ready_b, i1* %rx_valid_b, i32* %rx_data, i1* %rx_ready, i1* %rx_valid, i32* %tx_data_a, i1* %tx_ready_a, i1* %tx_valid_a, i32* %tx_data_b, i1* %tx_ready_b, i1* %tx_valid_b, i32* %tx_data, i1* %tx_ready, i1* %tx_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %switch_select) nounwind, !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_a) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_a) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_a) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_b) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_b) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_b) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_a) nounwind, !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_a) nounwind, !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_a) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_b) nounwind, !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_b) nounwind, !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_b) nounwind, !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data) nounwind, !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready) nounwind, !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid) nounwind, !map !101
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i1* %switch_select}, i64 0, metadata !105), !dbg !106 ; [debug line = 4:17] [debug variable = switch_select]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_a}, i64 0, metadata !107), !dbg !108 ; [debug line = 5:16] [debug variable = rx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_a}, i64 0, metadata !109), !dbg !110 ; [debug line = 6:17] [debug variable = rx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_a}, i64 0, metadata !111), !dbg !112 ; [debug line = 7:17] [debug variable = rx_valid_a]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_b}, i64 0, metadata !113), !dbg !114 ; [debug line = 8:16] [debug variable = rx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_b}, i64 0, metadata !115), !dbg !116 ; [debug line = 9:17] [debug variable = rx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_b}, i64 0, metadata !117), !dbg !118 ; [debug line = 10:17] [debug variable = rx_valid_b]
  call void @llvm.dbg.value(metadata !{i32* %rx_data}, i64 0, metadata !119), !dbg !120 ; [debug line = 11:16] [debug variable = rx_data]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready}, i64 0, metadata !121), !dbg !122 ; [debug line = 12:17] [debug variable = rx_ready]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid}, i64 0, metadata !123), !dbg !124 ; [debug line = 13:17] [debug variable = rx_valid]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_a}, i64 0, metadata !125), !dbg !126 ; [debug line = 14:16] [debug variable = tx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_a}, i64 0, metadata !127), !dbg !128 ; [debug line = 15:17] [debug variable = tx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_a}, i64 0, metadata !129), !dbg !130 ; [debug line = 16:17] [debug variable = tx_valid_a]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_b}, i64 0, metadata !131), !dbg !132 ; [debug line = 17:16] [debug variable = tx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_b}, i64 0, metadata !133), !dbg !134 ; [debug line = 18:17] [debug variable = tx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_b}, i64 0, metadata !135), !dbg !136 ; [debug line = 19:17] [debug variable = tx_valid_b]
  call void @llvm.dbg.value(metadata !{i32* %tx_data}, i64 0, metadata !137), !dbg !138 ; [debug line = 20:16] [debug variable = tx_data]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready}, i64 0, metadata !139), !dbg !140 ; [debug line = 21:17] [debug variable = tx_ready]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid}, i64 0, metadata !141), !dbg !142 ; [debug line = 22:17] [debug variable = tx_valid]
  call void (...)* @_ssdm_op_SpecInterface(i1* %switch_select, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !143 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !145 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !146 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !147 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !148 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !149 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !150 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !151 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !152 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !153 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !154 ; [debug line = 37:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !155 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_a, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !156 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !157 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !158 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_b, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !159 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !160 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !161 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid, [8 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !162 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !163 ; [debug line = 47:1]
  %switch_select.load = load volatile i1* %switch_select, align 1, !dbg !164 ; [#uses=1 type=i1] [debug line = 49:2]
  br i1 %switch_select.load, label %1, label %2, !dbg !164 ; [debug line = 49:2]

; <label>:1                                       ; preds = %0
  %rx_data_b.load = load volatile i32* %rx_data_b, align 4, !dbg !165 ; [#uses=1 type=i32] [debug line = 50:3]
  store volatile i32 %rx_data_b.load, i32* %rx_data, align 4, !dbg !165 ; [debug line = 50:3]
  %rx_valid_b.load = load volatile i1* %rx_valid_b, align 1, !dbg !167 ; [#uses=1 type=i1] [debug line = 51:3]
  store volatile i1 %rx_valid_b.load, i1* %rx_valid, align 1, !dbg !167 ; [debug line = 51:3]
  %rx_ready.load = load volatile i1* %rx_ready, align 1, !dbg !168 ; [#uses=1 type=i1] [debug line = 52:3]
  store volatile i1 %rx_ready.load, i1* %rx_ready_b, align 1, !dbg !168 ; [debug line = 52:3]
  %tx_data.load = load volatile i32* %tx_data, align 4, !dbg !169 ; [#uses=1 type=i32] [debug line = 54:3]
  store volatile i32 %tx_data.load, i32* %tx_data_b, align 4, !dbg !169 ; [debug line = 54:3]
  %tx_valid.load = load volatile i1* %tx_valid, align 1, !dbg !170 ; [#uses=1 type=i1] [debug line = 55:3]
  store volatile i1 %tx_valid.load, i1* %tx_valid_b, align 1, !dbg !170 ; [debug line = 55:3]
  %tx_ready_b.load = load volatile i1* %tx_ready_b, align 1, !dbg !171 ; [#uses=1 type=i1] [debug line = 56:3]
  store volatile i1 %tx_ready_b.load, i1* %tx_ready, align 1, !dbg !171 ; [debug line = 56:3]
  br label %3, !dbg !172                          ; [debug line = 57:2]

; <label>:2                                       ; preds = %0
  %rx_data_a.load = load volatile i32* %rx_data_a, align 4, !dbg !173 ; [#uses=1 type=i32] [debug line = 59:3]
  store volatile i32 %rx_data_a.load, i32* %rx_data, align 4, !dbg !173 ; [debug line = 59:3]
  %rx_valid_a.load = load volatile i1* %rx_valid_a, align 1, !dbg !175 ; [#uses=1 type=i1] [debug line = 60:3]
  store volatile i1 %rx_valid_a.load, i1* %rx_valid, align 1, !dbg !175 ; [debug line = 60:3]
  %rx_ready.load.1 = load volatile i1* %rx_ready, align 1, !dbg !176 ; [#uses=1 type=i1] [debug line = 61:3]
  store volatile i1 %rx_ready.load.1, i1* %rx_ready_a, align 1, !dbg !176 ; [debug line = 61:3]
  %tx_data.load.1 = load volatile i32* %tx_data, align 4, !dbg !177 ; [#uses=1 type=i32] [debug line = 63:3]
  store volatile i32 %tx_data.load.1, i32* %tx_data_a, align 4, !dbg !177 ; [debug line = 63:3]
  %tx_valid.load.1 = load volatile i1* %tx_valid, align 1, !dbg !178 ; [#uses=1 type=i1] [debug line = 64:3]
  store volatile i1 %tx_valid.load.1, i1* %tx_valid_a, align 1, !dbg !178 ; [debug line = 64:3]
  %tx_ready_a.load = load volatile i1* %tx_ready_a, align 1, !dbg !179 ; [#uses=1 type=i1] [debug line = 65:3]
  store volatile i1 %tx_ready_a.load, i1* %tx_ready, align 1, !dbg !179 ; [debug line = 65:3]
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !180                             ; [debug line = 68:1]
}

; [#uses=20]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=19]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/.autopilot/db/queue_multiplexer.pragma.2.cpp", metadata !"/home/teja/Documents/TAIGA/HLS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !17} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"queue_multiplexer", metadata !"queue_multiplexer", metadata !"_Z17queue_multiplexerPVbPViS0_S0_S2_S0_S0_S2_S0_S0_S2_S0_S0_S2_S0_S0_S2_S0_S0_", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*)* @queue_multiplexer, null, null, metadata !15, i32 23} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"queue_multiplexer/.apc/queue_multiplexer.cpp", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9, metadata !12, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_volatile_type ]
!11 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!13 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_volatile_type ]
!14 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !19, metadata !22, metadata !23, metadata !24, metadata !26}
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !20, i32 320, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!21 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !20, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !20, i32 321, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !20, i32 322, metadata !21, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !25, i32 26, metadata !14, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!25 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !25, i32 30, metadata !14, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"switch_select", metadata !31, metadata !"bool", i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 0, i32 1}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"rx_data_a", metadata !31, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"rx_ready_a", metadata !31, metadata !"bool", i32 0, i32 0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"rx_valid_a", metadata !31, metadata !"bool", i32 0, i32 0}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"rx_data_b", metadata !31, metadata !"int", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"rx_ready_b", metadata !31, metadata !"bool", i32 0, i32 0}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"rx_valid_b", metadata !31, metadata !"bool", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"rx_data", metadata !31, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"rx_ready", metadata !31, metadata !"bool", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"rx_valid", metadata !31, metadata !"bool", i32 0, i32 0}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"tx_data_a", metadata !31, metadata !"int", i32 0, i32 31}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"tx_ready_a", metadata !31, metadata !"bool", i32 0, i32 0}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 0, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"tx_valid_a", metadata !31, metadata !"bool", i32 0, i32 0}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"tx_data_b", metadata !31, metadata !"int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 0, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"tx_ready_b", metadata !31, metadata !"bool", i32 0, i32 0}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 0, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"tx_valid_b", metadata !31, metadata !"bool", i32 0, i32 0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"tx_data", metadata !31, metadata !"int", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 0, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"tx_ready", metadata !31, metadata !"bool", i32 0, i32 0}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 0, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"tx_valid", metadata !31, metadata !"bool", i32 0, i32 0}
!105 = metadata !{i32 786689, metadata !5, metadata !"switch_select", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 4, i32 17, metadata !5, null}
!107 = metadata !{i32 786689, metadata !5, metadata !"rx_data_a", metadata !6, i32 33554437, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 5, i32 16, metadata !5, null}
!109 = metadata !{i32 786689, metadata !5, metadata !"rx_ready_a", metadata !6, i32 50331654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 6, i32 17, metadata !5, null}
!111 = metadata !{i32 786689, metadata !5, metadata !"rx_valid_a", metadata !6, i32 67108871, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 7, i32 17, metadata !5, null}
!113 = metadata !{i32 786689, metadata !5, metadata !"rx_data_b", metadata !6, i32 83886088, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 8, i32 16, metadata !5, null}
!115 = metadata !{i32 786689, metadata !5, metadata !"rx_ready_b", metadata !6, i32 100663305, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 9, i32 17, metadata !5, null}
!117 = metadata !{i32 786689, metadata !5, metadata !"rx_valid_b", metadata !6, i32 117440522, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 10, i32 17, metadata !5, null}
!119 = metadata !{i32 786689, metadata !5, metadata !"rx_data", metadata !6, i32 134217739, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 11, i32 16, metadata !5, null}
!121 = metadata !{i32 786689, metadata !5, metadata !"rx_ready", metadata !6, i32 150994956, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 12, i32 17, metadata !5, null}
!123 = metadata !{i32 786689, metadata !5, metadata !"rx_valid", metadata !6, i32 167772173, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 13, i32 17, metadata !5, null}
!125 = metadata !{i32 786689, metadata !5, metadata !"tx_data_a", metadata !6, i32 184549390, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 14, i32 16, metadata !5, null}
!127 = metadata !{i32 786689, metadata !5, metadata !"tx_ready_a", metadata !6, i32 201326607, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 15, i32 17, metadata !5, null}
!129 = metadata !{i32 786689, metadata !5, metadata !"tx_valid_a", metadata !6, i32 218103824, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 16, i32 17, metadata !5, null}
!131 = metadata !{i32 786689, metadata !5, metadata !"tx_data_b", metadata !6, i32 234881041, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 17, i32 16, metadata !5, null}
!133 = metadata !{i32 786689, metadata !5, metadata !"tx_ready_b", metadata !6, i32 251658258, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 18, i32 17, metadata !5, null}
!135 = metadata !{i32 786689, metadata !5, metadata !"tx_valid_b", metadata !6, i32 268435475, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 19, i32 17, metadata !5, null}
!137 = metadata !{i32 786689, metadata !5, metadata !"tx_data", metadata !6, i32 285212692, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 20, i32 16, metadata !5, null}
!139 = metadata !{i32 786689, metadata !5, metadata !"tx_ready", metadata !6, i32 301989909, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 21, i32 17, metadata !5, null}
!141 = metadata !{i32 786689, metadata !5, metadata !"tx_valid", metadata !6, i32 318767126, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!142 = metadata !{i32 22, i32 17, metadata !5, null}
!143 = metadata !{i32 25, i32 1, metadata !144, null}
!144 = metadata !{i32 786443, metadata !5, i32 23, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 27, i32 1, metadata !144, null}
!146 = metadata !{i32 28, i32 1, metadata !144, null}
!147 = metadata !{i32 29, i32 1, metadata !144, null}
!148 = metadata !{i32 30, i32 1, metadata !144, null}
!149 = metadata !{i32 31, i32 1, metadata !144, null}
!150 = metadata !{i32 32, i32 1, metadata !144, null}
!151 = metadata !{i32 33, i32 1, metadata !144, null}
!152 = metadata !{i32 34, i32 1, metadata !144, null}
!153 = metadata !{i32 35, i32 1, metadata !144, null}
!154 = metadata !{i32 37, i32 1, metadata !144, null}
!155 = metadata !{i32 38, i32 1, metadata !144, null}
!156 = metadata !{i32 39, i32 1, metadata !144, null}
!157 = metadata !{i32 40, i32 1, metadata !144, null}
!158 = metadata !{i32 41, i32 1, metadata !144, null}
!159 = metadata !{i32 42, i32 1, metadata !144, null}
!160 = metadata !{i32 43, i32 1, metadata !144, null}
!161 = metadata !{i32 44, i32 1, metadata !144, null}
!162 = metadata !{i32 45, i32 1, metadata !144, null}
!163 = metadata !{i32 47, i32 1, metadata !144, null}
!164 = metadata !{i32 49, i32 2, metadata !144, null}
!165 = metadata !{i32 50, i32 3, metadata !166, null}
!166 = metadata !{i32 786443, metadata !144, i32 49, i32 20, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 51, i32 3, metadata !166, null}
!168 = metadata !{i32 52, i32 3, metadata !166, null}
!169 = metadata !{i32 54, i32 3, metadata !166, null}
!170 = metadata !{i32 55, i32 3, metadata !166, null}
!171 = metadata !{i32 56, i32 3, metadata !166, null}
!172 = metadata !{i32 57, i32 2, metadata !166, null}
!173 = metadata !{i32 59, i32 3, metadata !174, null}
!174 = metadata !{i32 786443, metadata !144, i32 58, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 60, i32 3, metadata !174, null}
!176 = metadata !{i32 61, i32 3, metadata !174, null}
!177 = metadata !{i32 63, i32 3, metadata !174, null}
!178 = metadata !{i32 64, i32 3, metadata !174, null}
!179 = metadata !{i32 65, i32 3, metadata !174, null}
!180 = metadata !{i32 68, i32 1, metadata !144, null}
