onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /edge_detect_tb/clk
add wave -noupdate /edge_detect_tb/rst_n
add wave -noupdate /edge_detect_tb/rx_int
add wave -noupdate /edge_detect_tb/pos_rx_int
add wave -noupdate /edge_detect_tb/neg_rx_int
add wave -noupdate /edge_detect_tb/doub_rx_int
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {842008 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 209
configure wave -valuecolwidth 100
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
WaveRestoreZoom {166496 ps} {2313968 ps}
