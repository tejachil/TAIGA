; ModuleID = '/home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@str = internal constant [18 x i8] c"queue_multiplexer\00" ; [#uses=1 type=[18 x i8]*]

; [#uses=0]
define void @queue_multiplexer(i1* %switch_select, i32* %rx_data_a, i1* %rx_ready_a, i1* %rx_valid_a, i32* %rx_data_b, i1* %rx_ready_b, i1* %rx_valid_b, i32* %rx_data, i1* %rx_ready, i1* %rx_valid, i32* %tx_data_a, i1* %tx_ready_a, i1* %tx_valid_a, i32* %tx_data_b, i1* %tx_ready_b, i1* %tx_valid_b, i32* %tx_data, i1* %tx_ready, i1* %tx_valid) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i1* %switch_select}, i64 0, metadata !27), !dbg !28 ; [debug line = 4:17] [debug variable = switch_select]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_a}, i64 0, metadata !29), !dbg !30 ; [debug line = 5:16] [debug variable = rx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_a}, i64 0, metadata !31), !dbg !32 ; [debug line = 6:17] [debug variable = rx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_a}, i64 0, metadata !33), !dbg !34 ; [debug line = 7:17] [debug variable = rx_valid_a]
  call void @llvm.dbg.value(metadata !{i32* %rx_data_b}, i64 0, metadata !35), !dbg !36 ; [debug line = 8:16] [debug variable = rx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready_b}, i64 0, metadata !37), !dbg !38 ; [debug line = 9:17] [debug variable = rx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid_b}, i64 0, metadata !39), !dbg !40 ; [debug line = 10:17] [debug variable = rx_valid_b]
  call void @llvm.dbg.value(metadata !{i32* %rx_data}, i64 0, metadata !41), !dbg !42 ; [debug line = 11:16] [debug variable = rx_data]
  call void @llvm.dbg.value(metadata !{i1* %rx_ready}, i64 0, metadata !43), !dbg !44 ; [debug line = 12:17] [debug variable = rx_ready]
  call void @llvm.dbg.value(metadata !{i1* %rx_valid}, i64 0, metadata !45), !dbg !46 ; [debug line = 13:17] [debug variable = rx_valid]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_a}, i64 0, metadata !47), !dbg !48 ; [debug line = 14:16] [debug variable = tx_data_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_a}, i64 0, metadata !49), !dbg !50 ; [debug line = 15:17] [debug variable = tx_ready_a]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_a}, i64 0, metadata !51), !dbg !52 ; [debug line = 16:17] [debug variable = tx_valid_a]
  call void @llvm.dbg.value(metadata !{i32* %tx_data_b}, i64 0, metadata !53), !dbg !54 ; [debug line = 17:16] [debug variable = tx_data_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready_b}, i64 0, metadata !55), !dbg !56 ; [debug line = 18:17] [debug variable = tx_ready_b]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid_b}, i64 0, metadata !57), !dbg !58 ; [debug line = 19:17] [debug variable = tx_valid_b]
  call void @llvm.dbg.value(metadata !{i32* %tx_data}, i64 0, metadata !59), !dbg !60 ; [debug line = 20:16] [debug variable = tx_data]
  call void @llvm.dbg.value(metadata !{i1* %tx_ready}, i64 0, metadata !61), !dbg !62 ; [debug line = 21:17] [debug variable = tx_ready]
  call void @llvm.dbg.value(metadata !{i1* %tx_valid}, i64 0, metadata !63), !dbg !64 ; [debug line = 22:17] [debug variable = tx_valid]
  call void (...)* @_ssdm_op_SpecInterface(i1* %switch_select, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_a, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !67 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_a, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !68 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_a, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !69 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data_b, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !70 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready_b, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !71 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid_b, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %rx_data, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_ready, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !74 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %rx_valid, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_a, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 37:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_a, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 38:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_a, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 39:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data_b, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready_b, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !80 ; [debug line = 41:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid_b, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !81 ; [debug line = 42:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %tx_data, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !82 ; [debug line = 43:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_ready, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !83 ; [debug line = 44:1]
  call void (...)* @_ssdm_op_SpecInterface(i1* %tx_valid, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !84 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [debug line = 47:1]
  %switch_select.load = load volatile i1* %switch_select, align 1, !dbg !86 ; [#uses=1 type=i1] [debug line = 49:2]
  br i1 %switch_select.load, label %1, label %2, !dbg !86 ; [debug line = 49:2]

; <label>:1                                       ; preds = %0
  %rx_data_b.load = load volatile i32* %rx_data_b, align 4, !dbg !87 ; [#uses=1 type=i32] [debug line = 50:3]
  store volatile i32 %rx_data_b.load, i32* %rx_data, align 4, !dbg !87 ; [debug line = 50:3]
  %rx_valid_b.load = load volatile i1* %rx_valid_b, align 1, !dbg !89 ; [#uses=1 type=i1] [debug line = 51:3]
  store volatile i1 %rx_valid_b.load, i1* %rx_valid, align 1, !dbg !89 ; [debug line = 51:3]
  %rx_ready.load = load volatile i1* %rx_ready, align 1, !dbg !90 ; [#uses=1 type=i1] [debug line = 52:3]
  store volatile i1 %rx_ready.load, i1* %rx_ready_b, align 1, !dbg !90 ; [debug line = 52:3]
  %tx_data.load = load volatile i32* %tx_data, align 4, !dbg !91 ; [#uses=1 type=i32] [debug line = 54:3]
  store volatile i32 %tx_data.load, i32* %tx_data_b, align 4, !dbg !91 ; [debug line = 54:3]
  %tx_valid.load = load volatile i1* %tx_valid, align 1, !dbg !92 ; [#uses=1 type=i1] [debug line = 55:3]
  store volatile i1 %tx_valid.load, i1* %tx_valid_b, align 1, !dbg !92 ; [debug line = 55:3]
  %tx_ready_b.load = load volatile i1* %tx_ready_b, align 1, !dbg !93 ; [#uses=1 type=i1] [debug line = 56:3]
  store volatile i1 %tx_ready_b.load, i1* %tx_ready, align 1, !dbg !93 ; [debug line = 56:3]
  br label %3, !dbg !94                           ; [debug line = 57:2]

; <label>:2                                       ; preds = %0
  %rx_data_a.load = load volatile i32* %rx_data_a, align 4, !dbg !95 ; [#uses=1 type=i32] [debug line = 59:3]
  store volatile i32 %rx_data_a.load, i32* %rx_data, align 4, !dbg !95 ; [debug line = 59:3]
  %rx_valid_a.load = load volatile i1* %rx_valid_a, align 1, !dbg !97 ; [#uses=1 type=i1] [debug line = 60:3]
  store volatile i1 %rx_valid_a.load, i1* %rx_valid, align 1, !dbg !97 ; [debug line = 60:3]
  %rx_ready.load.1 = load volatile i1* %rx_ready, align 1, !dbg !98 ; [#uses=1 type=i1] [debug line = 61:3]
  store volatile i1 %rx_ready.load.1, i1* %rx_ready_a, align 1, !dbg !98 ; [debug line = 61:3]
  %tx_data.load.1 = load volatile i32* %tx_data, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 63:3]
  store volatile i32 %tx_data.load.1, i32* %tx_data_a, align 4, !dbg !99 ; [debug line = 63:3]
  %tx_valid.load.1 = load volatile i1* %tx_valid, align 1, !dbg !100 ; [#uses=1 type=i1] [debug line = 64:3]
  store volatile i1 %tx_valid.load.1, i1* %tx_valid_a, align 1, !dbg !100 ; [debug line = 64:3]
  %tx_ready_a.load = load volatile i1* %tx_ready_a, align 1, !dbg !101 ; [#uses=1 type=i1] [debug line = 65:3]
  store volatile i1 %tx_ready_a.load, i1* %tx_ready, align 1, !dbg !101 ; [debug line = 65:3]
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void, !dbg !102                             ; [debug line = 68:1]
}

; [#uses=20]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=19]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

!llvm.dbg.cu = !{!0}

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
!27 = metadata !{i32 786689, metadata !5, metadata !"switch_select", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!28 = metadata !{i32 4, i32 17, metadata !5, null}
!29 = metadata !{i32 786689, metadata !5, metadata !"rx_data_a", metadata !6, i32 33554437, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 5, i32 16, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"rx_ready_a", metadata !6, i32 50331654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 6, i32 17, metadata !5, null}
!33 = metadata !{i32 786689, metadata !5, metadata !"rx_valid_a", metadata !6, i32 67108871, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!34 = metadata !{i32 7, i32 17, metadata !5, null}
!35 = metadata !{i32 786689, metadata !5, metadata !"rx_data_b", metadata !6, i32 83886088, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 8, i32 16, metadata !5, null}
!37 = metadata !{i32 786689, metadata !5, metadata !"rx_ready_b", metadata !6, i32 100663305, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!38 = metadata !{i32 9, i32 17, metadata !5, null}
!39 = metadata !{i32 786689, metadata !5, metadata !"rx_valid_b", metadata !6, i32 117440522, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!40 = metadata !{i32 10, i32 17, metadata !5, null}
!41 = metadata !{i32 786689, metadata !5, metadata !"rx_data", metadata !6, i32 134217739, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!42 = metadata !{i32 11, i32 16, metadata !5, null}
!43 = metadata !{i32 786689, metadata !5, metadata !"rx_ready", metadata !6, i32 150994956, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 12, i32 17, metadata !5, null}
!45 = metadata !{i32 786689, metadata !5, metadata !"rx_valid", metadata !6, i32 167772173, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 13, i32 17, metadata !5, null}
!47 = metadata !{i32 786689, metadata !5, metadata !"tx_data_a", metadata !6, i32 184549390, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 14, i32 16, metadata !5, null}
!49 = metadata !{i32 786689, metadata !5, metadata !"tx_ready_a", metadata !6, i32 201326607, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 15, i32 17, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"tx_valid_a", metadata !6, i32 218103824, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 16, i32 17, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"tx_data_b", metadata !6, i32 234881041, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 17, i32 16, metadata !5, null}
!55 = metadata !{i32 786689, metadata !5, metadata !"tx_ready_b", metadata !6, i32 251658258, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 18, i32 17, metadata !5, null}
!57 = metadata !{i32 786689, metadata !5, metadata !"tx_valid_b", metadata !6, i32 268435475, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 19, i32 17, metadata !5, null}
!59 = metadata !{i32 786689, metadata !5, metadata !"tx_data", metadata !6, i32 285212692, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 20, i32 16, metadata !5, null}
!61 = metadata !{i32 786689, metadata !5, metadata !"tx_ready", metadata !6, i32 301989909, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 21, i32 17, metadata !5, null}
!63 = metadata !{i32 786689, metadata !5, metadata !"tx_valid", metadata !6, i32 318767126, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 22, i32 17, metadata !5, null}
!65 = metadata !{i32 25, i32 1, metadata !66, null}
!66 = metadata !{i32 786443, metadata !5, i32 23, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 27, i32 1, metadata !66, null}
!68 = metadata !{i32 28, i32 1, metadata !66, null}
!69 = metadata !{i32 29, i32 1, metadata !66, null}
!70 = metadata !{i32 30, i32 1, metadata !66, null}
!71 = metadata !{i32 31, i32 1, metadata !66, null}
!72 = metadata !{i32 32, i32 1, metadata !66, null}
!73 = metadata !{i32 33, i32 1, metadata !66, null}
!74 = metadata !{i32 34, i32 1, metadata !66, null}
!75 = metadata !{i32 35, i32 1, metadata !66, null}
!76 = metadata !{i32 37, i32 1, metadata !66, null}
!77 = metadata !{i32 38, i32 1, metadata !66, null}
!78 = metadata !{i32 39, i32 1, metadata !66, null}
!79 = metadata !{i32 40, i32 1, metadata !66, null}
!80 = metadata !{i32 41, i32 1, metadata !66, null}
!81 = metadata !{i32 42, i32 1, metadata !66, null}
!82 = metadata !{i32 43, i32 1, metadata !66, null}
!83 = metadata !{i32 44, i32 1, metadata !66, null}
!84 = metadata !{i32 45, i32 1, metadata !66, null}
!85 = metadata !{i32 47, i32 1, metadata !66, null}
!86 = metadata !{i32 49, i32 2, metadata !66, null}
!87 = metadata !{i32 50, i32 3, metadata !88, null}
!88 = metadata !{i32 786443, metadata !66, i32 49, i32 20, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 51, i32 3, metadata !88, null}
!90 = metadata !{i32 52, i32 3, metadata !88, null}
!91 = metadata !{i32 54, i32 3, metadata !88, null}
!92 = metadata !{i32 55, i32 3, metadata !88, null}
!93 = metadata !{i32 56, i32 3, metadata !88, null}
!94 = metadata !{i32 57, i32 2, metadata !88, null}
!95 = metadata !{i32 59, i32 3, metadata !96, null}
!96 = metadata !{i32 786443, metadata !66, i32 58, i32 6, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 60, i32 3, metadata !96, null}
!98 = metadata !{i32 61, i32 3, metadata !96, null}
!99 = metadata !{i32 63, i32 3, metadata !96, null}
!100 = metadata !{i32 64, i32 3, metadata !96, null}
!101 = metadata !{i32 65, i32 3, metadata !96, null}
!102 = metadata !{i32 68, i32 1, metadata !66, null}
