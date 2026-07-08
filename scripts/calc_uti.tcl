proc calc_std_uti {} {
deselectAll
selectInst pad*
set list_pad_area [dbGet selected.area]
set total_pad_area [expr [join $list_pad_area +]]
puts "total pad area: $total_pad_area"
deselectAll
selectInst i_croc_soc/i_croc/gen_sram_bank_1__i_sram/gen_512x32xBx1_i_cut
set MACRO1_area [dbGet selected.area]
deselectAll
selectInst i_croc_soc/i_croc/gen_sram_bank_0__i_sram/gen_512x32xBx1_i_cut
set MACRO2_area [dbGet selected.area]
deselectAll
set MACRO_area [expr $MACRO1_area + $MACRO2_area]
puts "MACRO_area: $MACRO_area"
set total_core_area [dbGet top.fplan.coreBox_area]
puts "total_core_area: $total_core_area"
set list_inst_area [dbGet top.insts.area]
set total_inst_area [expr [join $list_inst_area +]]
puts "total_inst_area: $total_inst_area"
set total_stdcell_area [expr $total_inst_area - $MACRO_area - $total_pad_area]
puts "total_std_cell_area: $total_stdcell_area"
set stdcell_placeable_area [expr $total_core_area - $MACRO_area]
puts "stdcell placeable area: $stdcell_placeable_area"
puts "stdcell Uti = total stdcell area/stdcell placeable area: [expr $total_stdcell_area/$stdcell_placeable_area]"
}

