# System Memory Map

_OCR transcription from: `Screenshot_20260912-071953.png`_

## VII. System Memory Map

The following is a brief list of the RAM space required by the FLEX Operating System. All address are in hex.

| Address | Use |
|---|---|
| `0000 - BFFF` | User RAM. Note: Some of this space is used by NEWDISK, COPY and other utilities. |
| `C000 - DFFF` | Disk Operating System |
| `C07F` | System stack |
| `C100 - C6FF` | Utility command space |
| `CD00` | FLEX cold start entry address |
| `CD03` | FLEX warm start entry address |

For a more detailed memory map, consult the *Advanced Programmer's Guide*.
