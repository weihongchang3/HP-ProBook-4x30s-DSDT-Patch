// SSDT for 4x0 G2 Broadwell

DefinitionBlock ("", "SSDT", 2, "hack", "4x0g2b", 0)
{
    #include "include/standard_PS2K.asl"
    Include("include/layout3_HDEF.asl")
    Include("include/layout3_HDAU.asl")
}
//EOF
