; ModuleID = '/home/teja/Documents/TAIGA/HLS/fifo_dequeue/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [21 x i8] c"-bus_bundle axi_fifo\00", align 1
@str = internal constant [13 x i8] c"fifo_dequeue\00"

define i32 @fifo_dequeue(i32* %fifo_data, i1* %fifo_recv_enable, i1* %fifo_recv_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %fifo_data) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fifo_recv_enable) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fifo_recv_valid) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %fifo_data, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %fifo_recv_enable, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %fifo_recv_valid, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [21 x i8]* @p_str4) nounwind
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %fifo_recv_enable, i1 true) nounwind
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %0
  %fifo_recv_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %fifo_recv_valid) nounwind
  br i1 %fifo_recv_valid_read, label %1, label %._crit_edge

; <label>:1                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %fifo_recv_enable, i1 false) nounwind
  %fifo_data_read = call i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32* %fifo_data) nounwind
  ret i32 %fifo_data_read
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_none.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
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
