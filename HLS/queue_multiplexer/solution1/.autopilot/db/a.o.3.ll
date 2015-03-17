; ModuleID = '/home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=19 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=60 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [18 x i8] c"queue_multiplexer\00" ; [#uses=1 type=[18 x i8]*]

; [#uses=0]
define void @queue_multiplexer(i1* %switch_select, i32* %rx_data_a, i1* %rx_ready_a, i1* %rx_valid_a, i32* %rx_data_b, i1* %rx_ready_b, i1* %rx_valid_b, i32* %rx_data, i1* %rx_ready, i1* %rx_valid, i32* %tx_data_a, i1* %tx_ready_a, i1* %tx_valid_a, i32* %tx_data_b, i1* %tx_ready_b, i1* %tx_valid_b, i32* %tx_data, i1* %tx_ready, i1* %tx_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %switch_select) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_a) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_a) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data_b) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready_b) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid_b) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %rx_data) nounwind, !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_ready) nounwind, !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %rx_valid) nounwind, !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_a) nounwind, !map !42
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_a) nounwind, !map !46
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_a) nounwind, !map !50
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data_b) nounwind, !map !54
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready_b) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid_b) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %tx_data) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_ready) nounwind, !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %tx_valid) nounwind, !map !74
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i1* %switch_select}, i64 0, metadata !78), !dbg !91 ; [debug line = 4:17] [debug variable = switch_select]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_a}, i64 0, metadata !92), !dbg !93 ; [debug line = 5:16] [debug variable = rx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_a}, i64 0, metadata !94), !dbg !95 ; [debug line = 6:17] [debug variable = rx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_a}, i64 0, metadata !96), !dbg !97 ; [debug line = 7:17] [debug variable = rx_valid_a]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_b}, i64 0, metadata !98), !dbg !99 ; [debug line = 8:16] [debug variable = rx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_b}, i64 0, metadata !100), !dbg !101 ; [debug line = 9:17] [debug variable = rx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_b}, i64 0, metadata !102), !dbg !103 ; [debug line = 10:17] [debug variable = rx_valid_b]
  call void @llvm.dbg.value(metadata !{i32* %rx_data}, i64 0, metadata !104), !dbg !105 ; [debug line = 11:16] [debug variable = rx_data]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready}, i64 0, metadata !106), !dbg !107 ; [debug line = 12:17] [debug variable = rx_ready]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid}, i64 0, metadata !108), !dbg !109 ; [debug line = 13:17] [debug variable = rx_valid]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_a}, i64 0, metadata !110), !dbg !111 ; [debug line = 14:16] [debug variable = tx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_a}, i64 0, metadata !112), !dbg !113 ; [debug line = 15:17] [debug variable = tx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_a}, i64 0, metadata !114), !dbg !115 ; [debug line = 16:17] [debug variable = tx_valid_a]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_b}, i64 0, metadata !116), !dbg !117 ; [debug line = 17:16] [debug variable = tx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_b}, i64 0, metadata !118), !dbg !119 ; [debug line = 18:17] [debug variable = tx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_b}, i64 0, metadata !120), !dbg !121 ; [debug line = 19:17] [debug variable = tx_valid_b]
  call void @llvm.dbg.value(metadata !{i32* %tx_data}, i64 0, metadata !122), !dbg !123 ; [debug line = 20:16] [debug variable = tx_data]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready}, i64 0, metadata !124), !dbg !125 ; [debug line = 21:17] [debug variable = tx_ready]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid}, i64 0, metadata !126), !dbg !127 ; [debug line = 22:17] [debug variable = tx_valid]
  call void (...)* @_ssdm_op_SpecInterface(i1* %switch_select, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !128 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !130 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !131 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !132 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !133 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !134 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !135 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !136 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !137 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !138 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !139 ; [debug line = 37:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !140 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_a, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !141 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !142 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !143 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_b, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !144 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !145 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !146 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !147 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !148 ; [debug line = 47:1]
  %switch_select_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %switch_select) nounwind, !dbg !149 ; [#uses=1 type=i1] [debug line = 49:2]
  br i1 %switch_select_read, label %1, label %2, !dbg !149 ; [debug line = 49:2]

; <label>:1                                       ; preds = %0
  %rx_data_b_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %rx_data_b) nounwind, !dbg !150 ; [#uses=1 type=i32] [debug line = 50:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %rx_data, i32 %rx_data_b_read) nounwind, !dbg !150 ; [debug line = 50:3]
  %rx_valid_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_valid_b) nounwind, !dbg !152 ; [#uses=1 type=i1] [debug line = 51:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_valid, i1 %rx_valid_b_read) nounwind, !dbg !152 ; [debug line = 51:3]
  %rx_ready_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_ready) nounwind, !dbg !153 ; [#uses=1 type=i1] [debug line = 52:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_b, i1 %rx_ready_read) nounwind, !dbg !153 ; [debug line = 52:3]
  %tx_data_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %tx_data) nounwind, !dbg !154 ; [#uses=1 type=i32] [debug line = 54:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_b, i32 %tx_data_read) nounwind, !dbg !154 ; [debug line = 54:3]
  %tx_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_valid) nounwind, !dbg !155 ; [#uses=1 type=i1] [debug line = 55:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_b, i1 %tx_valid_read) nounwind, !dbg !155 ; [debug line = 55:3]
  %tx_ready_b_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_ready_b) nounwind, !dbg !156 ; [#uses=1 type=i1] [debug line = 56:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_ready, i1 %tx_ready_b_read) nounwind, !dbg !156 ; [debug line = 56:3]
  br label %3, !dbg !157                          ; [debug line = 57:2]

; <label>:2                                       ; preds = %0
  %rx_data_a_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %rx_data_a) nounwind, !dbg !158 ; [#uses=1 type=i32] [debug line = 59:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %rx_data, i32 %rx_data_a_read) nounwind, !dbg !158 ; [debug line = 59:3]
  %rx_valid_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_valid_a) nounwind, !dbg !160 ; [#uses=1 type=i1] [debug line = 60:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_valid, i1 %rx_valid_a_read) nounwind, !dbg !160 ; [debug line = 60:3]
  %rx_ready_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %rx_ready) nounwind, !dbg !161 ; [#uses=1 type=i1] [debug line = 61:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %rx_ready_a, i1 %rx_ready_read_1) nounwind, !dbg !161 ; [debug line = 61:3]
  %tx_data_read_1 = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %tx_data) nounwind, !dbg !162 ; [#uses=1 type=i32] [debug line = 63:3]
  call void @_ssdm_op_Write.ap_none.volatile.i32P(i32* %tx_data_a, i32 %tx_data_read_1) nounwind, !dbg !162 ; [debug line = 63:3]
  %tx_valid_read_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_valid) nounwind, !dbg !163 ; [#uses=1 type=i1] [debug line = 64:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_valid_a, i1 %tx_valid_read_1) nounwind, !dbg !163 ; [debug line = 64:3]
  %tx_ready_a_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %tx_ready_a) nounwind, !dbg !164 ; [#uses=1 type=i1] [debug line = 65:3]
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %tx_ready, i1 %tx_ready_a_read) nounwind, !dbg !164 ; [debug line = 65:3]
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !165                             ; [debug line = 68:1]
}

; [#uses=20]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=19]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=9]
define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0                            ; [#uses=1 type=i1]
  ret i1 %empty
}

; [#uses=4]
define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=8]
define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_Write.ap_none.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 0, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"switch_select", metadata !4, metadata !"bool", i32 0, i32 0}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"rx_data_a", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 0, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"rx_ready_a", metadata !4, metadata !"bool", i32 0, i32 0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"rx_valid_a", metadata !4, metadata !"bool", i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 31, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"rx_data_b", metadata !4, metadata !"int", i32 0, i32 31}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 0, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"rx_ready_b", metadata !4, metadata !"bool", i32 0, i32 0}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 0, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"rx_valid_b", metadata !4, metadata !"bool", i32 0, i32 0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"rx_data", metadata !4, metadata !"int", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"rx_ready", metadata !4, metadata !"bool", i32 0, i32 0}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"rx_valid", metadata !4, metadata !"bool", i32 0, i32 0}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"tx_data_a", metadata !4, metadata !"int", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"tx_ready_a", metadata !4, metadata !"bool", i32 0, i32 0}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"tx_valid_a", metadata !4, metadata !"bool", i32 0, i32 0}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 31, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"tx_data_b", metadata !4, metadata !"int", i32 0, i32 31}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 0, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"tx_ready_b", metadata !4, metadata !"bool", i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 0, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"tx_valid_b", metadata !4, metadata !"bool", i32 0, i32 0}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 31, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"tx_data", metadata !4, metadata !"int", i32 0, i32 31}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 0, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"tx_ready", metadata !4, metadata !"bool", i32 0, i32 0}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"tx_valid", metadata !4, metadata !"bool", i32 0, i32 0}
!78 = metadata !{i32 786689, metadata !79, metadata !"switch_select", metadata !80, i32 16777220, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!79 = metadata !{i32 786478, i32 0, metadata !80, metadata !"queue_multiplexer", metadata !"queue_multiplexer", metadata !"_Z17queue_multiplexerPVbPViS0_S0_S2_S0_S0_S2_S0_S0_S2_S0_S0_S2_S0_S0_S2_S0_S0_", metadata !80, i32 3, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*, i32*, i1*, i1*)* @queue_multiplexer, null, null, metadata !89, i32 23} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786473, metadata !"queue_multiplexer/.apc/queue_multiplexer.cpp", metadata !"/home/teja/Documents/TAIGA/HLS", null} ; [ DW_TAG_file_type ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !83, metadata !86, metadata !83, metadata !83, metadata !86, metadata !83, metadata !83, metadata !86, metadata !83, metadata !83, metadata !86, metadata !83, metadata !83, metadata !86, metadata !83, metadata !83, metadata !86, metadata !83, metadata !83}
!83 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ]
!84 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_volatile_type ]
!85 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!86 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!87 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_volatile_type ]
!88 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!91 = metadata !{i32 4, i32 17, metadata !79, null}
!92 = metadata !{i32 786689, metadata !79, metadata !"rx_data_a", metadata !80, i32 33554437, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 5, i32 16, metadata !79, null}
!94 = metadata !{i32 786689, metadata !79, metadata !"rx_ready_a", metadata !80, i32 50331654, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 6, i32 17, metadata !79, null}
!96 = metadata !{i32 786689, metadata !79, metadata !"rx_valid_a", metadata !80, i32 67108871, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 7, i32 17, metadata !79, null}
!98 = metadata !{i32 786689, metadata !79, metadata !"rx_data_b", metadata !80, i32 83886088, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 8, i32 16, metadata !79, null}
!100 = metadata !{i32 786689, metadata !79, metadata !"rx_ready_b", metadata !80, i32 100663305, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 9, i32 17, metadata !79, null}
!102 = metadata !{i32 786689, metadata !79, metadata !"rx_valid_b", metadata !80, i32 117440522, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 10, i32 17, metadata !79, null}
!104 = metadata !{i32 786689, metadata !79, metadata !"rx_data", metadata !80, i32 134217739, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 11, i32 16, metadata !79, null}
!106 = metadata !{i32 786689, metadata !79, metadata !"rx_ready", metadata !80, i32 150994956, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 12, i32 17, metadata !79, null}
!108 = metadata !{i32 786689, metadata !79, metadata !"rx_valid", metadata !80, i32 167772173, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 13, i32 17, metadata !79, null}
!110 = metadata !{i32 786689, metadata !79, metadata !"tx_data_a", metadata !80, i32 184549390, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!111 = metadata !{i32 14, i32 16, metadata !79, null}
!112 = metadata !{i32 786689, metadata !79, metadata !"tx_ready_a", metadata !80, i32 201326607, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 15, i32 17, metadata !79, null}
!114 = metadata !{i32 786689, metadata !79, metadata !"tx_valid_a", metadata !80, i32 218103824, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 16, i32 17, metadata !79, null}
!116 = metadata !{i32 786689, metadata !79, metadata !"tx_data_b", metadata !80, i32 234881041, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 17, i32 16, metadata !79, null}
!118 = metadata !{i32 786689, metadata !79, metadata !"tx_ready_b", metadata !80, i32 251658258, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 18, i32 17, metadata !79, null}
!120 = metadata !{i32 786689, metadata !79, metadata !"tx_valid_b", metadata !80, i32 268435475, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 19, i32 17, metadata !79, null}
!122 = metadata !{i32 786689, metadata !79, metadata !"tx_data", metadata !80, i32 285212692, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 20, i32 16, metadata !79, null}
!124 = metadata !{i32 786689, metadata !79, metadata !"tx_ready", metadata !80, i32 301989909, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 21, i32 17, metadata !79, null}
!126 = metadata !{i32 786689, metadata !79, metadata !"tx_valid", metadata !80, i32 318767126, metadata !83, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 22, i32 17, metadata !79, null}
!128 = metadata !{i32 25, i32 1, metadata !129, null}
!129 = metadata !{i32 786443, metadata !79, i32 23, i32 2, metadata !80, i32 0} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 27, i32 1, metadata !129, null}
!131 = metadata !{i32 28, i32 1, metadata !129, null}
!132 = metadata !{i32 29, i32 1, metadata !129, null}
!133 = metadata !{i32 30, i32 1, metadata !129, null}
!134 = metadata !{i32 31, i32 1, metadata !129, null}
!135 = metadata !{i32 32, i32 1, metadata !129, null}
!136 = metadata !{i32 33, i32 1, metadata !129, null}
!137 = metadata !{i32 34, i32 1, metadata !129, null}
!138 = metadata !{i32 35, i32 1, metadata !129, null}
!139 = metadata !{i32 37, i32 1, metadata !129, null}
!140 = metadata !{i32 38, i32 1, metadata !129, null}
!141 = metadata !{i32 39, i32 1, metadata !129, null}
!142 = metadata !{i32 40, i32 1, metadata !129, null}
!143 = metadata !{i32 41, i32 1, metadata !129, null}
!144 = metadata !{i32 42, i32 1, metadata !129, null}
!145 = metadata !{i32 43, i32 1, metadata !129, null}
!146 = metadata !{i32 44, i32 1, metadata !129, null}
!147 = metadata !{i32 45, i32 1, metadata !129, null}
!148 = metadata !{i32 47, i32 1, metadata !129, null}
!149 = metadata !{i32 49, i32 2, metadata !129, null}
!150 = metadata !{i32 50, i32 3, metadata !151, null}
!151 = metadata !{i32 786443, metadata !129, i32 49, i32 20, metadata !80, i32 1} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 51, i32 3, metadata !151, null}
!153 = metadata !{i32 52, i32 3, metadata !151, null}
!154 = metadata !{i32 54, i32 3, metadata !151, null}
!155 = metadata !{i32 55, i32 3, metadata !151, null}
!156 = metadata !{i32 56, i32 3, metadata !151, null}
!157 = metadata !{i32 57, i32 2, metadata !151, null}
!158 = metadata !{i32 59, i32 3, metadata !159, null}
!159 = metadata !{i32 786443, metadata !129, i32 58, i32 6, metadata !80, i32 2} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 60, i32 3, metadata !159, null}
!161 = metadata !{i32 61, i32 3, metadata !159, null}
!162 = metadata !{i32 63, i32 3, metadata !159, null}
!163 = metadata !{i32 64, i32 3, metadata !159, null}
!164 = metadata !{i32 65, i32 3, metadata !159, null}
!165 = metadata !{i32 68, i32 1, metadata !129, null}
