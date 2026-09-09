# flex09-info

A curated collection of FLEX/09 operating-system files, applications, development tools, documentation, and historical software.

See the [archive index](archive-index/README.md) for the purpose, disk label, key files, and contents profile of every ZIP file.

## Repository navigation

| Folder | Contents | Unique archived files |
| --- | --- | ---: |
| [flex-09](flex-09/) | TSC FLEX/FLEX09 operating-system distributions and source | 174 |
| [manuals](manuals/) | Generic FLEX manuals and reference material | 25 |
| [apps](apps/) | End-user applications grouped by product | 201 |
| [games](games/) | Games grouped by title or type | 8 |
| [dev](dev/) | Compilers, assemblers, debuggers, emulators, and development tools | 246 |
| [utilities](utilities/) | System, disk, editor, diagnostic, and communications utilities | 102 |
| [newsletters](newsletters/) | FLEX newsletters and user-group publications | 11 |
| [magazines](magazines/) | Magazine material grouped by publication | 2 |
| [sourcecode](sourcecode/) | Source examples, demonstrations, and historical source collections | 114 |
| [incoming](incoming/) | Drop location for newly added, not-yet-classified files | 0 |
| [misc](misc/) | OS-9 material, unidentified disk sets, and uncategorized files | 354 |

## Organization notes

- Related files are grouped into product-specific subfolders, such as [DynaCalc](apps/dynacalc/), [Introl-C](dev/introl-c/), and [TSC FLEX source](flex-09/sourcecode/).
- The original bytes of every retained file are unchanged. Files were moved and renamed by reusing their existing Git blob hashes.
- ZIP names use the format `OriginalCode - Product - Purpose.zip`; selected archive-series names also include key components when that makes their differences clearer.
- The [archive index](archive-index/README.md) records all 1,186 ZIP files. Standard and raw-sector directory scans were used to identify archive contents. Unreadable archives remain explicitly identified rather than given speculative descriptions.
- MACE, XMACE, and the combined PL9/MACE development disk are grouped under [dev/assemblers/mace](dev/assemblers/mace/).
- 59 redundant copies from 57 duplicate sets were removed. See the [duplicate-removal log](misc/duplicate-removal-log.md).
- ZIP duplicates were identified by their unpacked entry names and contents, so archives that differed only in ZIP container metadata or filename capitalization were treated as duplicates.
- Add new, unclassified material to [incoming](incoming/) for later review.

## Top-level folder details

### [flex-09](flex-09/)

TSC FLEX/FLEX09 operating-system distributions and source. Subfolders: [distributions](flex-09/distributions/), [sourcecode](flex-09/sourcecode/).

### [manuals](manuals/)

Generic FLEX manuals and reference material. Subfolders: [color-flex](manuals/color-flex/), [flex](manuals/flex/), [misc](manuals/misc/), [o-flex](manuals/o-flex/).

### [apps](apps/)

End-user applications grouped by product. Subfolders: [calendar-scheduling](apps/calendar-scheduling/), [dataman](apps/dataman/), [dynacalc](apps/dynacalc/), [dynamite](apps/dynamite/), [dynastar](apps/dynastar/), [finance](apps/finance/), [forms](apps/forms/), [graphics-cad](apps/graphics-cad/), [mailing-labels](apps/mailing-labels/), [misc](apps/misc/), [music](apps/music/), [publishing](apps/publishing/), [screditor](apps/screditor/), [spelling-dictionaries](apps/spelling-dictionaries/), [stylograph](apps/stylograph/), [tabula](apps/tabula/).

### [games](games/)

Games grouped by title or type. Subfolders: [adventure](games/adventure/), [chess](games/chess/), [life](games/life/), [misc](games/misc/).

### [dev](dev/)

Compilers, assemblers, debuggers, emulators, and development tools. MACE material is grouped in [assemblers/mace](dev/assemblers/mace/). Subfolders: [assemblers](dev/assemblers/), [basic](dev/basic/), [compilers-misc](dev/compilers-misc/), [csc](dev/csc/), [debuggers](dev/debuggers/), [disassemblers](dev/disassemblers/), [dyna-c](dev/dyna-c/), [dynasoft-pascal](dev/dynasoft-pascal/), [emulators](dev/emulators/), [forth](dev/forth/), [introl-c](dev/introl-c/), [jcp](dev/jcp/), [linkers-loaders](dev/linkers-loaders/), [lucidata-pascal](dev/lucidata-pascal/), [mark-williams-c](dev/mark-williams-c/), [mccosh-c](dev/mccosh-c/), [omega-soft-pascal](dev/omega-soft-pascal/), [pascal](dev/pascal/), [pilot](dev/pilot/), [small-c](dev/small-c/), [splm](dev/splm/), [toolkits](dev/toolkits/), [TSC FORTRAN](dev/tsc-fortran/), [TSC Pascal](dev/tsc-pascal/).

### [utilities](utilities/)

System, disk, editor, diagnostic, and communications utilities. Subfolders: [communications](utilities/communications/), [diagnostics](utilities/diagnostics/), [dru-series](utilities/dru-series/), [editors](utilities/editors/), [system](utilities/system/).

### [newsletters](newsletters/)

FLEX newsletters and user-group publications are stored directly in this folder.

### [magazines](magazines/)

Magazine material grouped by publication. Subfolders: [CoCo Friends](magazines/coco-friends/).

### [sourcecode](sourcecode/)

Source examples, demonstrations, and historical source collections. Subfolders: [examples](sourcecode/examples/), [kn-collection](sourcecode/kn-collection/), [library-disks](sourcecode/library-disks/), [sjt-collection](sourcecode/sjt-collection/).

### [incoming](incoming/)

Drop location for newly added, not-yet-classified files.

### [misc](misc/)

OS-9 material, unidentified disk sets, and uncategorized files. Subfolders: [archive-series](misc/archive-series/), [notes](misc/notes/), [os-9](misc/os-9/), [uncategorized](misc/uncategorized/), [work-disks](misc/work-disks/).
