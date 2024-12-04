join_3_tables <- function(table1, table2, table3){
    link_table1_2 <- intersect(names(table1), names(table2))
    link_table2_3 <- intersect(names(table2), names(table3))
    # Joindre table1 et table2
    merged_table_1_2 <- merge(table1, table2, by = link_table1_2)
    
    # Joindre le résultat avec table3
    merged_table <- merge(merged_table_1_2, table3, by = link_table2_3)
    
    # Retourner la table fusionnée
    return(merged_table)
}
