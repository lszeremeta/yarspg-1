# This file is automatically generated by ebnf version 2.0.0
# Derived from etc/yars-pg.ebnf
module YARSPG::Meta
  RULES = [
    EBNF::Rule.new(:yarspg, "1", [:star, :statement]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:statement, "2", [:alt, :node, :edge, :prefix_directive, :metadata, :node_schema, :edge_schema, :section]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:prefix_directive, "3", [:seq, :_prefix_directive_1, :IRI]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_prefix_directive_1, "3.1", [:alt, "::", :pname]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:pname, "4", [:seq, ":", :ALNUM_PLUS, ":"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:pn_local, "5", [:seq, :ALNUM_PLUS]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:metadata, "6", [:seq, "-", :_metadata_1, :_metadata_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_metadata_1, "6.1", [:alt, :_metadata_3, :_metadata_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_metadata_3, "6.3", [:seq, :pn_local, :pname]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_metadata_4, "6.4", [:seq, :IRI, ":"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_metadata_2, "6.2", [:alt, :STRING, :IRI]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:graph_name, "6a", [:seq, :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:annotation, "7", [:alt, :string_annotation, :rdf_annotation]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:string_annotation, "8", [:seq, :STRING, ":", :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:rdf_annotation, "9", [:seq, :_rdf_annotation_1, :_rdf_annotation_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rdf_annotation_1, "9.1", [:alt, :_rdf_annotation_3, :_rdf_annotation_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rdf_annotation_3, "9.3", [:seq, :pn_local, :pname]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rdf_annotation_4, "9.4", [:seq, :IRI, ":"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_rdf_annotation_2, "9.2", [:alt, :STRING, :IRI]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:annotations_list, "10", [:seq, "+", :annotation, :_annotations_list_1]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_annotations_list_1, "10.1", [:star, :_annotations_list_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_annotations_list_2, "10.2", [:seq, ",", :annotation]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:props_list, "11", [:seq, "[", :prop, :_props_list_1, "]"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_props_list_1, "11.1", [:star, :_props_list_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_props_list_2, "11.2", [:seq, ",", :prop]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:graphs_list, "12", [:seq, "/", :graph_name, :_graphs_list_1, "/"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_graphs_list_1, "12.1", [:star, :_graphs_list_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_graphs_list_2, "12.2", [:seq, ",", :graph_name]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:node, "13", [:seq, "<", :node_id, ">", :_node_1, :_node_2, :_node_3, :_node_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_1, "13.1", [:opt, :_node_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_5, "13.5", [:seq, "{", :node_label, :_node_6, "}"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_6, "13.6", [:star, :_node_7]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_7, "13.7", [:seq, ",", :node_label]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_2, "13.2", [:opt, :props_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_3, "13.3", [:opt, :graphs_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_4, "13.4", [:opt, :annotations_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:edge, "14", [:alt, :directed, :undirected]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:section, "15", [:seq, "%", :SECTION_NAME]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:directed, "16", [:seq, "(", :node_id, ")", "-", :_directed_1, "{", :edge_label, "}", :_directed_2, "->", "(", :node_id, ")", :_directed_3, :_directed_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_1, "16.1", [:opt, :_directed_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_5, "16.5", [:seq, "<", :edge_id, ">"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_2, "16.2", [:opt, :props_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_3, "16.3", [:opt, :graphs_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_4, "16.4", [:opt, :annotations_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:undirected, "17", [:seq, "(", :node_id, ")", "-", :_undirected_1, "{", :edge_label, "}", :_undirected_2, "-", "(", :node_id, ")", :_undirected_3, :_undirected_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_1, "17.1", [:opt, :_undirected_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_5, "17.5", [:seq, "<", :edge_id, ">"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_2, "17.2", [:opt, :props_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_3, "17.3", [:opt, :graphs_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_4, "17.4", [:opt, :annotations_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:node_id, "18", [:seq, :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:node_label, "19", [:seq, :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:prop, "20", [:seq, :key, ":", :value]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:edge_id, "21", [:seq, :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:edge_label, "22", [:seq, :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:key, "23", [:seq, :STRING]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:value, "24", [:alt, :primitive_value, :complex_value]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:primitive_value, "25", [:alt, :STRING, :DATETYPE, :NUMBER, :BOOL, "null"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:complex_value, "26", [:alt, :set, :list, :struct]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:set, "27", [:seq, "{", :_set_1, :_set_2, "}"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_set_1, "27.1", [:alt, :primitive_value, :set]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_set_2, "27.2", [:star, :_set_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_set_3, "27.3", [:seq, ",", :_set_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_set_4, "27.4", [:alt, :primitive_value, :set]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:list, "28", [:seq, "[", :_list_1, :_list_2, "]"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_list_1, "28.1", [:alt, :primitive_value, :list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_list_2, "28.2", [:star, :_list_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_list_3, "28.3", [:seq, ",", :_list_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_list_4, "28.4", [:alt, :primitive_value, :list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:struct, "29", [:seq, "{", :key, ":", :_struct_1, :_struct_2, "}"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_struct_1, "29.1", [:alt, :primitive_value, :struct]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_struct_2, "29.2", [:star, :_struct_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_struct_3, "29.3", [:seq, ",", :key, ":", :_struct_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_struct_4, "29.4", [:alt, :primitive_value, :struct]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:node_schema, "30", [:seq, "S", :_node_schema_1, :_node_schema_2, :_node_schema_3, :_node_schema_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_schema_1, "30.1", [:seq, "{", :node_label, :_node_schema_5, "}"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_schema_5, "30.5", [:star, :_node_schema_6]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_schema_6, "30.6", [:seq, ",", :node_label]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_schema_2, "30.2", [:opt, :props_list_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_schema_3, "30.3", [:opt, :graphs_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_node_schema_4, "30.4", [:opt, :annotations_list]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:props_list_schema, "31", [:seq, "[", :prop_schema, :_props_list_schema_1, "]"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_props_list_schema_1, "31.1", [:star, :_props_list_schema_2]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_props_list_schema_2, "31.2", [:seq, ",", :prop_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:prop_schema, "32", [:seq, :key, ":", :value_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:value_schema, "33", [:alt, :primitive_value_schema, :complex_value_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:primitive_value_schema, "34", [:alt, "Decimal", "SmallInt", "Integer", "BigInt", "Float", "Real", "Double", "Bool", "Null", "String", "Date", "Timestamp", "Time"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:complex_value_schema, "35", [:alt, :set_schema, :list_schema, :struct_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:set_schema, "36", [:seq, "Set", "(", :_set_schema_1, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_set_schema_1, "36.1", [:alt, :primitive_value_schema, :set_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:list_schema, "37", [:seq, "List", "(", :_list_schema_1, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_list_schema_1, "37.1", [:alt, :primitive_value_schema, :list_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:struct_schema, "38", [:seq, "Struct", "(", :_struct_schema_1, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_struct_schema_1, "38.1", [:alt, :primitive_value_schema, :struct_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:edge_schema, "39", [:alt, :directed_schema, :undirected_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:directed_schema, "40", [:seq, "S", :_directed_schema_1, "-", "{", :edge_label, "}", :_directed_schema_2, "->", :_directed_schema_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_schema_1, "40.1", [:opt, :_directed_schema_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_schema_4, "40.4", [:seq, "(", :node_label, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_schema_2, "40.2", [:opt, :props_list_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_schema_3, "40.3", [:opt, :_directed_schema_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_directed_schema_5, "40.5", [:seq, "(", :node_label, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:undirected_schema, "41", [:seq, "S", :_undirected_schema_1, "-", "{", :edge_label, "}", :_undirected_schema_2, "-", :_undirected_schema_3]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_schema_1, "41.1", [:opt, :_undirected_schema_4]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_schema_4, "41.4", [:seq, "(", :node_label, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_schema_2, "41.2", [:opt, :props_list_schema]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_schema_3, "41.3", [:opt, :_undirected_schema_5]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_undirected_schema_5, "41.5", [:seq, "(", :node_label, ")"]).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:SECTION_NAME, "42", [:alt, "METADATA", "NODE SCHEMAS", "EDGE SCHEMAS", "NODES", "EDGES"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:COMMENT, "43", [:seq, "#", :_COMMENT_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_COMMENT_1, "43.1", [:star, :_COMMENT_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_COMMENT_2, "43.2", [:range, "^#xd#xa#xc"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:STRING, "44", [:seq, :STRING_LITERAL_QUOTE], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:NUMBER, "45", [:seq, :_NUMBER_1, :_NUMBER_2, :_NUMBER_3, :_NUMBER_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_NUMBER_1, "45.1", [:opt, :SIGN], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_NUMBER_2, "45.2", [:plus, :_NUMBER_5], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_NUMBER_5, "45.5", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_NUMBER_3, "45.3", [:opt, "."], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_NUMBER_4, "45.4", [:star, :_NUMBER_6], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_NUMBER_6, "45.6", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:BOOL, "46", [:alt, "true", "false"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:STRING_LITERAL_QUOTE, "47", [:seq, "\"", :_STRING_LITERAL_QUOTE_1, "\""], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_QUOTE_1, "47.1", [:star, :_STRING_LITERAL_QUOTE_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_QUOTE_2, "47.2", [:alt, :_STRING_LITERAL_QUOTE_3, "'", "\""], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_STRING_LITERAL_QUOTE_3, "47.3", [:range, "^\"#xd#xa"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:ALNUM_PLUS, "48", [:seq, :PN_CHARS_BASE, :_ALNUM_PLUS_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_ALNUM_PLUS_1, "48.1", [:opt, :_ALNUM_PLUS_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_ALNUM_PLUS_2, "48.2", [:seq, :_ALNUM_PLUS_3, :PN_CHARS], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_ALNUM_PLUS_3, "48.3", [:star, :_ALNUM_PLUS_4], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_ALNUM_PLUS_4, "48.4", [:alt, :PN_CHARS, "."], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:IRI, "49", [:seq, "<", :_IRI_1, ">"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_IRI_1, "49.1", [:star, :_IRI_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_IRI_2, "49.2", [:alt, :PN_CHARS, ".", ":", "/", "\\", "#", "@", "%", "&", :UCHAR], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_CHARS, "50", [:alt, :PN_CHARS_U, :_PN_CHARS_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_PN_CHARS_1, "50.1", [:range, "-0-9#xB7#x0300-#x036F#x203F-#x2040"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_CHARS_U, "51", [:alt, :PN_CHARS_BASE, "_"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:DATETYPE, "52", [:alt, :TIMESTAMP, :DATE, :TIME], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:DATE, "53", [:seq, :_DATE_1, :_DATE_2, :_DATE_3, :_DATE_4, "-", :_DATE_5, :_DATE_6, "-", :_DATE_7, :_DATE_8], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_1, "53.1", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_2, "53.2", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_3, "53.3", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_4, "53.4", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_5, "53.5", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_6, "53.6", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_7, "53.7", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_DATE_8, "53.8", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:TIME, "54", [:seq, :_TIME_1, :_TIME_2, ":", :_TIME_3, :_TIME_4, ":", :_TIME_5, :_TIME_6, :_TIME_7], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_1, "54.1", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_2, "54.2", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_3, "54.3", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_4, "54.4", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_5, "54.5", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_6, "54.6", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIME_7, "54.7", [:opt, :TIMEZONE], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:TIMEZONE, "55", [:seq, :_TIMEZONE_1, :_TIMEZONE_2, :_TIMEZONE_3, ":", :_TIMEZONE_4, :_TIMEZONE_5], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIMEZONE_1, "55.1", [:opt, :SIGN], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIMEZONE_2, "55.2", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIMEZONE_3, "55.3", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIMEZONE_4, "55.4", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_TIMEZONE_5, "55.5", [:range, "0-9"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:TIMESTAMP, "56", [:seq, :DATE, "T", :TIME], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:SIGN, "57", [:alt, "+", "-"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:UCHAR, "58", [:seq, :_UCHAR_1, :HEX, :HEX, :HEX, :HEX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_UCHAR_1, "58.1", [:alt, "u", :_UCHAR_2], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_UCHAR_2, "58.2", [:seq, "U", :HEX, :HEX, :HEX, :HEX], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:PN_CHARS_BASE, "59", [:range, "A-Za-z0-9#xC0-#xD6#xD8-#xF6#xF8-#x2FF#x370-#x37D#x37F-#x1FFF#x200C-#x200D#x2070-#x218F#x2C00-#x2FEF#x3001-#xD7FF#xF900-#xFDCF#xFDF0-#xFFFD"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:HEX, "60", [:range, "0-9A-Fa-f"], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:WS, "61", [:plus, :_WS_1], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_WS_1, "61.1", [:alt, :_WS_2, :COMMENT], kind: :terminal).extend(EBNF::PEG::Rule),
    EBNF::Rule.new(:_WS_2, "61.2", [:range, "#x20#x9#xa"], kind: :terminal).extend(EBNF::PEG::Rule),
  ]
end

