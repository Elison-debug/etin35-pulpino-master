# Change this variable to top entity of your own design
set DESIGN pulpino_top_rtl_w_pads 

# Change this variable to the RTL path of your own design
set RTL ../pulpino/rtl

set_attribute script_search_path $SYNT_SCRIPT /

set_attr init_hdl_search_path { \
	../pulpino/rtl/includes/ \
	../pulpino/rtl/components/ \
	../pulpino/rtl/ \
	../pulpino/ips/riscv/ \
	../pulpino/ips/riscv/include/ \
	../pulpino/ips/adv_dbg_if/rtl \
	../pulpino/ips/apb/apb2per \
	../pulpino/ips/apb/apb_event_unit \
	../pulpino/ips/apb/apb_event_unit/include \
	../pulpino/ips/apb/apb_gpio \
	../pulpino/ips/apb/apb_node \
	../pulpino/ips/apb/apb_pulpino \
	../pulpino/ips/apb/apb_timer \
	../pulpino/ips/apb/apb_uart \
	../pulpino/ips/apb/apb_uart_sv \
	../pulpino/ips/axi/axi2apb \
	../pulpino/ips/axi/axi_mem_if_DP \
	../pulpino/ips/axi/axi_node \
	../pulpino/ips/axi/axi_slice \
	../pulpino/ips/axi/axi_slice_dc \
	#../pulpino/ips/axi/axi_spi_master \
	../pulpino/ips/axi/axi_spi_slave \
	../pulpino/ips/axi/core2axi \
} /

set_attribute init_lib_search_path { \
	/usr/local-eit/cad2/cmpstm/stm065v536/CORE65LPLVT_5.1/libs \
	/usr/local-eit/cad2/cmpstm/stm065v536/CLOCK65LPLVT_3.1/libs \
	/usr/local-eit/cad2/cmpstm/oldmems/mem2010/SPHDL100909-40446@1.0/libs  \
	/usr/local-eit/cad2/cmpstm/dicp18/lu_pads_65nm \
} /

set_attribute library { \
	CLOCK65LPLVT_nom_1.20V_25C.lib \
	CORE65LPLVT_nom_1.20V_25C.lib \
	SPHDL100909_nom_1.20V_25C.lib  \
	Pads_Oct2012.lib \
} /

set_attr hdl_error_on_blackbox true /

# put all your design files here

set DESIGN_FILES_V { \
        adbg_crc32.v adbg_lint_defines.v adbg_or1k_defines.v adbg_defines.v adbg_tap_defines.v syncflop.v\
        bytefifo.v syncreg.v adbg_axi_defines.v adbg_tap_top.v\
}

set DESIGN_FILES_SV { \
	axi2apb32.sv AXI_2_APB_32.sv axi2apb.sv AXI_2_APB.sv \
	axi_mem_if_DP_hybr.sv axi_mem_if_DP.sv \
	axi_mem_if_MP_Hybrid_multi_bank.sv axi_mem_if_multi_bank.sv \
	axi_mem_if_SP.sv axi_read_only_ctrl.sv axi_write_only_ctrl.sv \
	defines.v apb_regs_top.sv axi_BR_allocator.sv axi_request_block.sv\
        axi_address_decoder_AR.sv axi_BW_allocator.sv axi_response_block.sv\
        axi_address_decoder_AW.sv axi_DW_allocator.sv axi_RR_Flag_Req.sv\
	axi_address_decoder_BR.sv  axi_FanInPrimitive_Req.sv \
	axi_address_decoder_BW.sv  axi_multiplexer.sv\
        axi_address_decoder_DW.sv  axi_node.sv\
        axi_AR_allocator.sv        axi_node_wrap.sv\
        axi_ArbitrationTree.sv     axi_node_wrap_with_slices.sv\
        axi_AW_allocator.sv        axi_regs_top.sv\
        axi_ar_buffer.sv axi_buffer.sv axi_w_buffer.sv\
        axi_aw_buffer.sv axi_r_buffer.sv axi_b_buffer.sv  axi_slice.sv \
	axi_slice_dc_master.sv  dc_synchronizer.v axi_slice_dc_slave.sv dc_token_ring_fifo_din.v \
        dc_data_buffer.v        dc_token_ring_fifo_dout.v \
        dc_full_detector.v      dc_token_ring.v \
        axi_spi_slave.sv       spi_slave_cmd_parser.sv  spi_slave_rx.sv \
        spi_slave_controller.sv  spi_slave_syncro.sv \
        spi_slave_dc_fifo.sv     spi_slave_tx.sv \
        spi_slave_axi_plug.sv  spi_slave_regs.sv \
        core2axi.sv\
        #AXI files done!
        apb2per.sv defines_event_unit.sv apb_event_unit.sv generic_service_unit.sv sleep_unit.sv\
        apb_gpio.sv apb_node.sv apb_node_wrap.sv apb_pulpino.sv \
        apb_timer.sv timer.sv \
        apb_uart.sv        uart_interrupt.sv \
        apb_uart_sv.sv       uart_rx.sv \
        io_generic_fifo.sv    uart_tx.sv \
        #APB files done
        adbg_or1k_module.sv adbg_top.sv adv_dbg_if.sv adbg_or1k_biu.sv adbg_axionly_top.sv adbg_lintonly_top.sv\
        adbg_axi_module.sv adbg_lint_module.sv adbg_axi_biu.sv adbg_or1k_status_reg.sv adbg_lint_biu.sv\
        #ADV files done
        apu_core_package.sv  riscv_config.sv   riscv_tracer_defines.sv\
        apu_macros.sv        riscv_defines.sv\
        #IPSRISKVINCLUDE  files done
        riscv_id_stage.sv riscv_int_controller.sv riscv_mult.sv riscv_if_stage.sv riscv_alu_div.sv\
        riscv_cs_registers.sv riscv_core.sv\
        riscv_apu_disp.sv riscv_load_store_unit.sv riscv_tracer.sv riscv_ex_stage.sv\
        riscv_alu_basic.sv riscv_hwloop_controller.sv riscv_L0_buffer.sv riscv_compressed_decoder.sv\
        riscv_register_file_latch.sv riscv_prefetch_buffer.sv riscv_register_file.sv\
        riscv_debug_unit.sv riscv_alu.sv riscv_prefetch_L0_buffer.sv riscv_decoder.sv\
        riscv_fetch_fifo.sv riscv_hwloop_regs.sv\
        #ipsRISKV files done
        config.sv apb_bus.sv apu_defines.sv axi_bus.sv debug_bus.sv \
        #rtl INCLUDE files done
        cluster_clock_gating.sv    generic_fifo.sv         rstgen.sv\
        cluster_clock_inverter.sv  pulp_clock_gating.sv    sp_ram.sv\
        cluster_clock_mux2.sv      pulp_clock_inverter.sv\
        dp_ram.sv                  pulp_clock_mux2.sv\
        #rtl include files done
        apb_mock_uart.sv axi2apb_wrap.sv axi_mem_if_SP_wrap.sv axi_node_intf_wrap.sv\
        axi_slice_wrap.sv axi_spi_slave_wrap.sv boot_code.sv boot_rom_wrap.sv \
        clk_rst_gen.sv core2axi_wrap.sv core_region.sv dp_ram_wrap.sv instr_ram_wrap.sv\
        periph_bus_wrap.sv peripherals.sv pulpino_top.sv ram_mux.sv random_stalls.sv sp_ram_wrap.sv\
        #rtl files done

}



set DESIGN_FILES_VHDL { \
        apb_uart.vhd          slib_input_filter.vhd  uart_interrupt.vhd\
        slib_clock_div.vhd    slib_input_sync.vhd    uart_receiver.vhd\
        slib_counter.vhd      slib_mv_filter.vhd     uart_transmitter.vhd\
        slib_edge_detect.vhd  \
        slib_fifo.vhd         uart_baudgen.vhd\
}


set SYN_EFF medium 
set MAP_EFF medium 
set OPT_EFF medium 

set_attribute syn_generic_effort ${SYN_EFF}
set_attribute syn_map_effort ${MAP_EFF}
set_attribute syn_opt_effort ${OPT_EFF}
set_attribute information_level 5; # Up to maximum 9
