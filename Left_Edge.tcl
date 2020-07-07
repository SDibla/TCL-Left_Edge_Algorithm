#schedule_list  {name ST res_id}
#resources_list {res_id delay}

proc left_edge { schedule_list resources_list } {
    set output_list [list]
    foreach res $resources_list {
        set res_nodes_list [lsearch -index 2 -inline -all -exact $schedule_list [lindex $res 0]]
        set delay [lindex $res 1]
        set c 0
        while { [llength $res_nodes_list] != 0 } {
            set r 0
            incr c
            foreach node $res_nodes_list {
                if { [lindex $node 1] > $r } {
                    set r [expr { [lindex $node 1] + $delay - 1 } ]
                    set index [lsearch $res_nodes_list $node]
                    set res_nodes_list [lreplace $res_nodes_list $index $index]
                }
            }
        }
        lappend output_list "[lindex $res 0] $c"
    }
    return $output_list
}
