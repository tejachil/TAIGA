# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7z010clg400-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/teja/Documents/TAIGA/Pendulum/Pendulum.cache/wt [current_project]
set_property parent.project_path /home/teja/Documents/TAIGA/Pendulum/Pendulum.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/impl/ip [current_project]
add_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/TAIGA_System.bd
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_processing_system7_0_0/TAIGA_System_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_0/TAIGA_System_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_0/TAIGA_System_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_1/TAIGA_System_dlmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_1/TAIGA_System_dlmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_1/TAIGA_System_ilmb_v10_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_1/TAIGA_System_ilmb_v10_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_bram_if_cntlr_1/TAIGA_System_dlmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_bram_if_cntlr_1/TAIGA_System_ilmb_bram_if_cntlr_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_lmb_bram_1/TAIGA_System_lmb_bram_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_mdm_1_1/TAIGA_System_mdm_1_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_mdm_1_1/TAIGA_System_mdm_1_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_xbar_0/TAIGA_System_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timebase_wdt_0_0/TAIGA_System_axi_timebase_wdt_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timebase_wdt_0_0/TAIGA_System_axi_timebase_wdt_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_fifo_mm_s_0_0/TAIGA_System_axi_fifo_mm_s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_fifo_IOI_dequeue_0/TAIGA_System_axi_fifo_IOI_dequeue_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_fifo_IOI_dequeue_1/TAIGA_System_axi_fifo_IOI_dequeue_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/ipshared/xilinx.com/queue_multiplexer_v1_0/680e8b2b/constraints/queue_multiplexer_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_1/TAIGA_System_microblaze_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_1/TAIGA_System_microblaze_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_0/TAIGA_System_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_0/TAIGA_System_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_0/TAIGA_System_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_0/TAIGA_System_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_bram_if_cntlr_0/TAIGA_System_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_bram_if_cntlr_0/TAIGA_System_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_lmb_bram_0/TAIGA_System_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timer_0_0/TAIGA_System_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timer_0_0/TAIGA_System_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_xbar_1/TAIGA_System_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_xbar_2/TAIGA_System_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_uartlite_0_0/TAIGA_System_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_uartlite_0_0/TAIGA_System_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_uartlite_0_0/TAIGA_System_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_auto_pc_0/TAIGA_System_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/TAIGA_System_ooc.xdc]
set_property is_locked true [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/TAIGA_System.bd]

read_verilog -library xil_defaultlib /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/hdl/TAIGA_System_wrapper.v
read_xdc /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/constrs_1/new/TAIGA_Pendulum_ZYBO.xdc
set_property used_in_implementation false [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/constrs_1/new/TAIGA_Pendulum_ZYBO.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file TAIGA_System_wrapper.hwdef }
synth_design -top TAIGA_System_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef TAIGA_System_wrapper.dcp
catch { report_utilization -file TAIGA_System_wrapper_utilization_synth.rpt -pb TAIGA_System_wrapper_utilization_synth.pb }
