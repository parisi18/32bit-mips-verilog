onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary /Mips32/Clk
add wave -noupdate -expand -group MIPS32 -expand -group FreqDivisor -radix binary /Mips32/frequency_divisor/Clk
add wave -noupdate -expand -group MIPS32 -expand -group FreqDivisor -radix binary /Mips32/frequency_divisor/FilteredClk
add wave -noupdate -expand -group MIPS32 -expand -group FreqDivisor /Mips32/frequency_divisor/fullcount
add wave -noupdate -expand -group MIPS32 -expand -group FreqDivisor /Mips32/frequency_divisor/count_pulse
add wave -noupdate -expand -group MIPS32 -expand -group ClkSelector -radix binary /Mips32/clk_selector/Play
add wave -noupdate -expand -group MIPS32 -expand -group ClkSelector -radix binary /Mips32/clk_selector/SetOriginal
add wave -noupdate -expand -group MIPS32 -expand -group ClkSelector -radix binary /Mips32/clk_selector/FilteredClk
add wave -noupdate -expand -group MIPS32 -expand -group ClkSelector -radix binary /Mips32/clk_selector/SelectedClk
add wave -noupdate -expand -group MIPS32 -expand -group ClkSelector /Mips32/clk_selector/selected_clk
add wave -noupdate -expand -group MIPS32 -expand -group InputInterface /Mips32/input_interface/SwInput
add wave -noupdate -expand -group MIPS32 -expand -group InputInterface /Mips32/input_interface/SwValues
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group ProgramCounter /Mips32/process_unit/program_counter/PcIn
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group ProgramCounter /Mips32/process_unit/program_counter/PcOut
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group ProgramCounter -radix binary /Mips32/process_unit/program_counter/Jump
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group ProgramCounter -radix binary /Mips32/process_unit/program_counter/reset
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrMem /Mips32/process_unit/instruction_memory/Addr
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrMem -radix binary /Mips32/process_unit/instruction_memory/Input
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrMem /Mips32/process_unit/instruction_memory/InstrOut
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrMem /Mips32/process_unit/instruction_memory/clk_single_count
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrMem /Mips32/process_unit/instruction_memory/input_data
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrMem {/Mips32/process_unit/instruction_memory/mem[0]}
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/InstrIn
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Op
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Rs
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Rt
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Rd
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Immi
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Immj
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group InstrParser /Mips32/process_unit/instruction_parser/Shamt
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RtRdMux /Mips32/process_unit/rt_and_rd_mux/Rt
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RtRdMux /Mips32/process_unit/rt_and_rd_mux/Rd
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RtRdMux -radix binary /Mips32/process_unit/rt_and_rd_mux/RegDst
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RtRdMux /Mips32/process_unit/rt_and_rd_mux/Reg
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/ReadReg1
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/ReadReg2
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/WriteReg
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/WriteData
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/ImmiAddr
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs -radix binary /Mips32/process_unit/regs/RegWrite
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs -radix binary /Mips32/process_unit/regs/Jal
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/DataRead1
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs /Mips32/process_unit/regs/DataRead2
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Regs -childformat {{{/Mips32/process_unit/regs/regs[31]} -radix decimal} {{/Mips32/process_unit/regs/regs[30]} -radix decimal} {{/Mips32/process_unit/regs/regs[29]} -radix decimal} {{/Mips32/process_unit/regs/regs[28]} -radix decimal} {{/Mips32/process_unit/regs/regs[27]} -radix decimal} {{/Mips32/process_unit/regs/regs[26]} -radix decimal} {{/Mips32/process_unit/regs/regs[25]} -radix decimal} {{/Mips32/process_unit/regs/regs[24]} -radix decimal} {{/Mips32/process_unit/regs/regs[23]} -radix decimal} {{/Mips32/process_unit/regs/regs[22]} -radix decimal} {{/Mips32/process_unit/regs/regs[21]} -radix decimal} {{/Mips32/process_unit/regs/regs[20]} -radix decimal} {{/Mips32/process_unit/regs/regs[19]} -radix decimal} {{/Mips32/process_unit/regs/regs[18]} -radix decimal} {{/Mips32/process_unit/regs/regs[17]} -radix decimal} {{/Mips32/process_unit/regs/regs[16]} -radix decimal} {{/Mips32/process_unit/regs/regs[15]} -radix decimal} {{/Mips32/process_unit/regs/regs[14]} -radix decimal} {{/Mips32/process_unit/regs/regs[13]} -radix decimal} {{/Mips32/process_unit/regs/regs[12]} -radix decimal} {{/Mips32/process_unit/regs/regs[11]} -radix decimal} {{/Mips32/process_unit/regs/regs[10]} -radix decimal} {{/Mips32/process_unit/regs/regs[9]} -radix decimal} {{/Mips32/process_unit/regs/regs[8]} -radix decimal} {{/Mips32/process_unit/regs/regs[7]} -radix decimal} {{/Mips32/process_unit/regs/regs[6]} -radix decimal} {{/Mips32/process_unit/regs/regs[5]} -radix decimal} {{/Mips32/process_unit/regs/regs[4]} -radix decimal} {{/Mips32/process_unit/regs/regs[3]} -radix decimal} {{/Mips32/process_unit/regs/regs[2]} -radix decimal} {{/Mips32/process_unit/regs/regs[1]} -radix decimal} {{/Mips32/process_unit/regs/regs[0]} -radix decimal}} -subitemconfig {{/Mips32/process_unit/regs/regs[31]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[30]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[29]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[28]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[27]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[26]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[25]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[24]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[23]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[22]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[21]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[20]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[19]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[18]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[17]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[16]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[15]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[14]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[13]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[12]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[11]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[10]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[9]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[8]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[7]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[6]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[5]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[4]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[3]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[2]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[1]} {-height 15 -radix decimal} {/Mips32/process_unit/regs/regs[0]} {-height 15 -radix decimal}} /Mips32/process_unit/regs/regs
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RegToOut /Mips32/process_unit/reg_to_out_interface/DataRead1
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RegToOut -radix binary /Mips32/process_unit/reg_to_out_interface/Print
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RegToOut /Mips32/process_unit/reg_to_out_interface/HexOutput
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group RegToOut /Mips32/process_unit/reg_to_out_interface/hex_out
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group SigExt /Mips32/process_unit/sig_extend/Immi
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group SigExt /Mips32/process_unit/sig_extend/ImmiExtended
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group AluMux /Mips32/process_unit/alu_32_mux/DataRead2
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group AluMux /Mips32/process_unit/alu_32_mux/ImmediateData
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group AluMux -radix binary /Mips32/process_unit/alu_32_mux/Immediate
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group AluMux /Mips32/process_unit/alu_32_mux/DataOut
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Alu /Mips32/process_unit/alu_32/Op1
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Alu /Mips32/process_unit/alu_32/Op2
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Alu /Mips32/process_unit/alu_32/Out
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Alu /Mips32/process_unit/alu_32/AluOP
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Alu /Mips32/process_unit/alu_32/Shamt
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group Alu /Mips32/process_unit/alu_32/Zero
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux -radix binary /Mips32/process_unit/pc_mux/Jump
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux -radix binary /Mips32/process_unit/pc_mux/JumpReg
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux -radix binary /Mips32/process_unit/pc_mux/And
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux -radix binary /Mips32/process_unit/pc_mux/AluRes
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux /Mips32/process_unit/pc_mux/ExtendedImm
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux /Mips32/process_unit/pc_mux/Reg
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux /Mips32/process_unit/pc_mux/PCOut
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group PCMux /Mips32/process_unit/pc_mux/Out
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMem /Mips32/process_unit/data_mem/WriteData
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMem /Mips32/process_unit/data_mem/Addr
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMem -radix binary /Mips32/process_unit/data_mem/MemWrite
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMem -radix binary /Mips32/process_unit/data_mem/MemRead
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMem /Mips32/process_unit/data_mem/DataRead
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMemMux /Mips32/process_unit/data_mem_mux/AluOut
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMemMux /Mips32/process_unit/data_mem_mux/ReadData
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMemMux -radix binary /Mips32/process_unit/data_mem_mux/MemToReg
add wave -noupdate -expand -group MIPS32 -expand -group ProcessUnit -group DataMemMux /Mips32/process_unit/data_mem_mux/WriteData
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/OpCode
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/AluOP
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/RegDst
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/Branch
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/JumpReg
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/Jump
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/Jal
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/And
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/MemRead
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/MemToReg
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/MemWrite
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/Immediate
add wave -noupdate -expand -group MIPS32 -expand -group ControlUnit /Mips32/control_unit/RegWrite
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Input
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex0
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex1
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex2
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex3
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex4
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex5
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex6
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/Hex7
add wave -noupdate -expand -group MIPS32 -expand -group OutputInterface /Mips32/output_interface/hexes
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {60 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 356
configure wave -valuecolwidth 211
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {990 ps}
