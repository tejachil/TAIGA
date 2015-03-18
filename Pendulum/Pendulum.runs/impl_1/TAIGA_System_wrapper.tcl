proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  debug::add_scope template.lib 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir /home/teja/Documents/TAIGA/Pendulum/Pendulum.cache/wt [current_project]
  set_property parent.project_path /home/teja/Documents/TAIGA/Pendulum/Pendulum.xpr [current_project]
  set_property ip_repo_paths {
  /home/teja/Documents/TAIGA/Pendulum/Pendulum.cache/ip
  /home/teja/Documents/TAIGA/HLS/queue_multiplexer/solution1/impl/ip
} [current_project]
  set_property ip_output_repo /home/teja/Documents/TAIGA/Pendulum/Pendulum.cache/ip [current_project]
  add_files -quiet /home/teja/Documents/TAIGA/Pendulum/Pendulum.runs/synth_1/TAIGA_System_wrapper.dcp
  add_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/TAIGA_System.bmm
  set_property SCOPED_TO_REF TAIGA_System [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/TAIGA_System.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/TAIGA_System.bmm]
  add_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/e11bcbd5/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF TAIGA_System [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/e11bcbd5/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS {IO_Intermediary backup_controller} [get_files -all /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_4/e11bcbd5/data/mb_bootloop_le.elf]
  read_xdc -ref TAIGA_System_processing_system7_0_0 -cells inst /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_processing_system7_0_0/TAIGA_System_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_processing_system7_0_0/TAIGA_System_processing_system7_0_0.xdc]
  read_xdc -ref TAIGA_System_microblaze_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_0/TAIGA_System_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_0/TAIGA_System_microblaze_0_0.xdc]
  read_xdc -ref TAIGA_System_dlmb_v10_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_1/TAIGA_System_dlmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_1/TAIGA_System_dlmb_v10_1.xdc]
  read_xdc -ref TAIGA_System_ilmb_v10_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_1/TAIGA_System_ilmb_v10_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_1/TAIGA_System_ilmb_v10_1.xdc]
  read_xdc -ref TAIGA_System_IO_Intermediary_axi_intc_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0.xdc]
  read_xdc -ref TAIGA_System_mdm_1_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_mdm_1_1/TAIGA_System_mdm_1_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_mdm_1_1/TAIGA_System_mdm_1_1.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_rst_production_controller_100M_1 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1_board.xdc]
  read_xdc -ref TAIGA_System_rst_production_controller_100M_1 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_rst_production_controller_100M_1/TAIGA_System_rst_production_controller_100M_1.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_axi_quad_spi_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_board.xdc]
  read_xdc -ref TAIGA_System_axi_quad_spi_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_axi_gpio_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0_board.xdc]
  read_xdc -ref TAIGA_System_axi_gpio_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_0/TAIGA_System_axi_gpio_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_axi_gpio_0_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1_board.xdc]
  read_xdc -ref TAIGA_System_axi_gpio_0_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_1/TAIGA_System_axi_gpio_0_1.xdc]
  read_xdc -ref TAIGA_System_axi_timebase_wdt_0_0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timebase_wdt_0_0/TAIGA_System_axi_timebase_wdt_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timebase_wdt_0_0/TAIGA_System_axi_timebase_wdt_0_0.xdc]
  read_xdc -ref TAIGA_System_fifo_generator_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0/TAIGA_System_fifo_generator_0_0.xdc]
  read_xdc -ref TAIGA_System_fifo_production_to_IOI_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0/TAIGA_System_fifo_production_to_IOI_0.xdc]
  read_xdc -ref TAIGA_System_fifo_IOI_to_production_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0/TAIGA_System_fifo_IOI_to_production_0.xdc]
  read_xdc -ref TAIGA_System_fifo_production_to_IOI_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1/TAIGA_System_fifo_production_to_IOI_1.xdc]
  read_xdc -ref TAIGA_System_microblaze_0_1 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_1/TAIGA_System_microblaze_0_1.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_microblaze_0_1/TAIGA_System_microblaze_0_1.xdc]
  read_xdc -ref TAIGA_System_dlmb_v10_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_0/TAIGA_System_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_dlmb_v10_0/TAIGA_System_dlmb_v10_0.xdc]
  read_xdc -ref TAIGA_System_ilmb_v10_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_0/TAIGA_System_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_ilmb_v10_0/TAIGA_System_ilmb_v10_0.xdc]
  read_xdc -ref TAIGA_System_backup_controller_axi_intc_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0.xdc]
  read_xdc -ref TAIGA_System_axi_timer_0_0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timer_0_0/TAIGA_System_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_timer_0_0/TAIGA_System_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_axi_gpio_0_2 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2_board.xdc]
  read_xdc -ref TAIGA_System_axi_gpio_0_2 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_2/TAIGA_System_axi_gpio_0_2.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_axi_gpio_0_3 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3_board.xdc]
  read_xdc -ref TAIGA_System_axi_gpio_0_3 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_3/TAIGA_System_axi_gpio_0_3.xdc]
  read_xdc -prop_thru_buffers -ref TAIGA_System_axi_gpio_0_4 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4_board.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4_board.xdc]
  read_xdc -ref TAIGA_System_axi_gpio_0_4 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4.xdc
  set_property processing_order EARLY [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_gpio_0_4/TAIGA_System_axi_gpio_0_4.xdc]
  read_xdc /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/constrs_1/new/TAIGA_Pendulum_ZYBO.xdc
  read_xdc -ref TAIGA_System_IO_Intermediary_axi_intc_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_IO_Intermediary_axi_intc_0/TAIGA_System_IO_Intermediary_axi_intc_0_clocks.xdc]
  read_xdc -ref TAIGA_System_axi_quad_spi_0_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_clocks.xdc
  set_property processing_order LATE [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_axi_quad_spi_0_0/TAIGA_System_axi_quad_spi_0_0_clocks.xdc]
  read_xdc -ref TAIGA_System_backup_controller_axi_intc_0 -cells U0 /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files /home/teja/Documents/TAIGA/Pendulum/Pendulum.srcs/sources_1/bd/TAIGA_System/ip/TAIGA_System_backup_controller_axi_intc_0/TAIGA_System_backup_controller_axi_intc_0_clocks.xdc]
  link_design -top TAIGA_System_wrapper -part xc7z010clg400-1
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force TAIGA_System_wrapper_opt.dcp
  catch {report_drc -file TAIGA_System_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force TAIGA_System_wrapper_placed.dcp
  catch { report_io -file TAIGA_System_wrapper_io_placed.rpt }
  catch { report_clock_utilization -file TAIGA_System_wrapper_clock_utilization_placed.rpt }
  catch { report_utilization -file TAIGA_System_wrapper_utilization_placed.rpt -pb TAIGA_System_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file TAIGA_System_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force TAIGA_System_wrapper_routed.dcp
  catch { report_drc -file TAIGA_System_wrapper_drc_routed.rpt -pb TAIGA_System_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file TAIGA_System_wrapper_timing_summary_routed.rpt -rpx TAIGA_System_wrapper_timing_summary_routed.rpx }
  catch { report_power -file TAIGA_System_wrapper_power_routed.rpt -pb TAIGA_System_wrapper_power_summary_routed.pb }
  catch { report_route_status -file TAIGA_System_wrapper_route_status.rpt -pb TAIGA_System_wrapper_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force TAIGA_System_wrapper.mmi }
  catch { write_bmm -force TAIGA_System_wrapper_bd.bmm }
  write_bitstream -force TAIGA_System_wrapper.bit 
  if { [file exists /home/teja/Documents/TAIGA/Pendulum/Pendulum.runs/synth_1/TAIGA_System_wrapper.hwdef] } {
    catch { write_sysdef -hwdef /home/teja/Documents/TAIGA/Pendulum/Pendulum.runs/synth_1/TAIGA_System_wrapper.hwdef -bitfile TAIGA_System_wrapper.bit -meminfo TAIGA_System_wrapper.mmi -file TAIGA_System_wrapper.sysdef }
  }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

