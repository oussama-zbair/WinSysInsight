
# Usage Guide

## Running the Diagnostic Tool

1. **Run the main script**:
   Open PowerShell, navigate to the `src` directory, and execute the `Diagnostic.ps1` script:
   ```powershell
   cd src
   .\Diagnostic.ps1
   ```

2. **Generate an HTML Report**:
   To create a detailed HTML report, run the `ReportGenerator.ps1` script:
   ```powershell
   .\ReportGenerator.ps1
   ```

3. **Run Specific Modules**:
   Execute individual modules for diagnostics:
   - **CPU Diagnostics**:
     ```powershell
     .\Modules\CPU.ps1
     ```
   - **Memory Diagnostics**:
     ```powershell
     .\Modules\Memory.ps1
     ```
   - **Network Diagnostics**:
     ```powershell
     .\Modules\Network.ps1
     ```

4. **Download and Run**:
   Use the provided script to download and run the diagnostic tool directly:
   ```powershell
   iwr -Uri https://github.com/oussama-zbair/WinSysInsight/raw/main/scripts/download_and_run.ps1 -OutFile download_and_run.ps1
   .\download_and_run.ps1
   ```

## Output Location

- All reports (e.g., `Report.html`) will be saved in the `output` directory.
