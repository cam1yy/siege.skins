# Tuck Shop Calculator - Delphi VCL

Minimal and basic tuck shop calculator made for RAD Studio.
Looks like a high school project but everything works :)

### What it does
- 9 items: Meat Pie ($4.50), Sausage Roll ($3.50), Sandwich ($5.00), Hot Dog ($4.00), Chips ($2.50), Juice Box ($3.00), Water ($2.00), Cookie ($1.50), Lolly Bag ($2.00)
- type quantity for each item (0 if you dont want it)
- press **Calculate Total** to see total + receipt
- enter cash given and press **Work out change** - shows change or how much more you need
- **Clear** resets everything

### How to run (RAD Studio)
1. Open `TuckShop.dpr` or `TuckShop.dproj` in Embarcadero RAD Studio (10.4+ / 11 / 12 Athens)
2. Make sure Target Platform is **Windows 32-bit** or **64-bit**
3. Press **F9** (Run) or **Shift+F9** to Build
4. EXE will be in `Win32\Debug\TuckShop.exe` (or `Win64\Debug\`)

No extra components needed - just standard VCL (StdCtrls, ExtCtrls).

### Files
- `TuckShop.dpr` - project file
- `TuckShop.dproj` - RAD Studio project config
- `MainForm.pas` - all the code (a bit messy on purpose but functional)
- `MainForm.dfm` - form layout

### Notes
- Code is intentionally a bit messy / high-school style (global `total` var, repetitive ifs, copy-paste lines) but it all works and handles bad input (letters, negatives, empty).
- Prices are at top of `MainForm.pas` if you want to change them.

Made by cam for tuck shop duty - 2026
