
<p align="center">
  <img src="assets/logo.png" alt="WinSysInsight Logo" width="300" height="300">
</p>

<h1 align="center">WinSysInsight</h1>

<p align="center">
  <b>A Professional Windows Diagnostic Tool for Engineers and IT Professionals</b>
</p>

<p align="center">
  <a href="https://github.com/oussama-zbair/WinSysInsight/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/oussama-zbair/WinSysInsight/ci.yml?branch=main" alt="CI Build Status">
  </a>
  <a href="https://github.com/oussama-zbair/WinSysInsight/issues">
    <img src="https://img.shields.io/github/issues/oussama-zbair/WinSysInsight" alt="GitHub Issues">
  </a>
  <a href="https://github.com/oussama-zbair/WinSysInsight/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/oussama-zbair/WinSysInsight" alt="License">
  </a>
  <a href="https://github.com/oussama-zbair/WinSysInsight/stargazers">
    <img src="https://img.shields.io/github/stars/oussama-zbair/WinSysInsight" alt="GitHub Stars">
  </a>
  <a href="https://github.com/oussama-zbair/WinSysInsight/forks">
    <img src="https://img.shields.io/github/forks/oussama-zbair/WinSysInsight" alt="GitHub Forks">
  </a>
</p>

---

## 🌟 Features

- **Comprehensive System Diagnostics**: Retrieve detailed information about your CPU, memory, storage, network, and more.
- **HTML Report Generator**: Generates a visually appealing and organized HTML report for easy analysis.
- **CLI and GUI Options**: Use the tool via the command line or an optional GUI for user-friendly interaction.
- **Automated Testing**: Includes Pester tests for ensuring reliability.
- **Secure and Open Source**: Built with security and transparency in mind.
- **Easy Integration**: Ready to integrate with CI/CD pipelines via GitHub Actions.

---

## 📥 Installation

### Quick Installation

1. Open **PowerShell** as Administrator.
2. Run the following commands:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   iwr -Uri https://github.com/oussama-zbair/WinSysInsight/raw/main/scripts/setup.ps1 -OutFile setup.ps1
   .\setup.ps1
   ```

### Manual Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/oussama-zbair/WinSysInsight.git
   cd WinSysInsight
   ```
2. Navigate to the `src/` directory and run the main script:
   ```powershell
   .\Diagnostic.ps1
   ```

---

## 🛠️ Usage

### Basic Usage

Run the diagnostic tool directly from the command line:
```powershell
.\Diagnostic.ps1 -OutputFormat HTML -Modules "CPU, Memory"
```

### Available Arguments

| Argument         | Description                                                             | Example                        |
|------------------|-------------------------------------------------------------------------|--------------------------------|
| `-OutputFormat`  | Specify the output format of the report (`Text`, `HTML`, or `JSON`).     | `-OutputFormat "HTML"`         |
| `-Modules`       | Select specific diagnostic modules to run (`CPU`, `Memory`, `Network`). | `-Modules "CPU, Memory"`       |

### Example

To run diagnostics on all available modules and generate an HTML report:
```powershell
.\Diagnostic.ps1 -OutputFormat "HTML" -Modules "CPU, Memory, Network"
```
This will create a report in the `output/` directory.

---

## 📂 Repository Structure

```plaintext
WinSysInsight/
├── src/
│   ├── Diagnostic.ps1          # Core diagnostic script
│   ├── ReportGenerator.ps1     # Converts output to HTML
│   └── Modules/                # Modular diagnostic scripts
│       ├── CPU.ps1             # CPU diagnostics
│       ├── Memory.ps1          # Memory diagnostics
│       └── Network.ps1         # Network diagnostics
├── scripts/
│   ├── setup.ps1               # Installation script
│   ├── download_and_run.ps1    # Download and run script
├── tests/
│   └── Diagnostic.Tests.ps1    # Pester tests for validation
├── .github/
│   └── workflows/
│       └── ci.yml              # GitHub Actions workflow for CI/CD
├── docs/
│   ├── Installation.md         # Installation instructions
│   ├── Usage.md                # Usage guide
│   └── Features.md             # Detailed feature list
├── output/                     # Generated reports
├── assets/                     # Project assets (e.g., logo)
├── README.md                   # Project overview
└── LICENSE                     # Project license (MIT)
```

---

## 🧪 Testing

To ensure the reliability of the tool, **WinSysInsight** includes automated tests using [Pester](https://github.com/pester/Pester).

### Running Tests

Run the following command to execute all tests:
```powershell
Invoke-Pester -Path tests/Diagnostic.Tests.ps1
```

---




