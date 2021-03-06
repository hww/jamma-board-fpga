# Created by Libero 4.5.1.15
# Tue Dec 24 22:20:54 2002

# (NEW DESIGN)

# create a new design
new_design -name "scanconv" -family "ex"

# set default back-annotation base-name
set_defvar "BA_NAME" "scanconv_ba"

# set working directory
set_defvar "DESDIR" "D:/Actelprj/scanconv/designer"

# set back-annotation output directory
set_defvar "BA_DIR" "D:/Actelprj/scanconv/designer"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VERILOG"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "scanconv.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of netlist files
import_source -format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {scanconv.edn}

# export translation of original netlist
export -format "verilog" {scanconv.v}
