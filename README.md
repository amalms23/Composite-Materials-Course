# Composite Materials Course Repository

This repository contains comprehensive materials for composite materials coursework, including project work, reference materials, notes, and computational analysis tools.

## 📂 Repository Structure

### Root Directory Files

#### 📚 Reference Materials
- **`Composite_introduction.pdf`** - Introductory guide to composite materials fundamentals
- **`Composites_full.pdf`** - Comprehensive reference on composite materials theory and applications

#### 📝 Course Notes
- **`Manufacturing.doc`** - Manufacturing processes and techniques for composite materials
- **`materials properties.png`** - Visual reference for material properties comparison

### 📁 COMPOSITES PROJECT

A comprehensive project folder containing finite element analysis, MATLAB implementations, and research work on composite materials characterization.

#### 🔬 Project/
FEA simulation files for composite material analysis using ABAQUS:
- **Shear Analysis**: 12_shear, 13_shear, 23_shear simulation files
- **Displacement Analysis**: XX_displacement, YY_displacement, ZZ_displacement files
- **RVE Analysis**: Representative Volume Element files (RVE.cae, RVE.jnl)
- **Simulation Reports**: Report.docx, Simulation Information.txt
- **Output Files**: Various ABAQUS output formats (.odb, .inp, .dat, .log, etc.)

#### 📊 Results/
Analysis results and post-processing files:
- **`E_yy.rpt`** - Young's modulus results in y-direction
- **`Evol_yy.rpt`** - Volume-averaged elastic properties
- **`S_yy.rpt`** - Stress analysis results
- **`three phase anomaly.xlsx`** - Excel analysis of three-phase composite behavior

#### 🛠️ matlab final/
MATLAB implementations of micromechanical models for composite property prediction:
- **`CCA.mlx`** - Composite Cylinder Assemblage model
- **`Hashin_strickman.mlx`** - Hashin-Shtrikman bounds calculation
- **`Hills_approach.mlx`** - Hill's approach for effective properties
- **`Holpin_Tsai.mlx`** - Halpin-Tsai equations implementation
- **`Mori_Tanaka.mlx`** - Mori-Tanaka method for effective properties
- **`SELF_Consistent.mlx`** - Self-consistent scheme implementation
- **`SOM_approach.mlx`** - Successive Optimization Method
- **`voigt_reuss.mlx`** - Voigt and Reuss bounds calculation

#### 🔧 matlab working folder/
Working directory for MATLAB development and testing

#### 🎨 Solidworks part/
CAD files and 3D models related to composite component design

#### 📄 Project Documentation
- **`22101262_REPORT.pdf`** - Final project report
- **`Attachments.zip`** - Supporting files and attachments
- **`Thumbs.db`** - System thumbnail cache file

## 🚀 Getting Started

### Prerequisites
- MATLAB (for running micromechanical models)
- ABAQUS (for FEA simulations)
- SolidWorks (for CAD model viewing)
- PDF reader for reference materials

### Quick Start Guide

1. **Clone the repository**:
   ```bash
   git clone https://github.com/amalms23/Composite-Materials-Course.git
   cd Composite-Materials-Course
   ```

2. **Explore reference materials**:
   - Start with `Composite_introduction.pdf` for fundamentals
   - Refer to `Composites_full.pdf` for comprehensive coverage
   - Review `Manufacturing.doc` for process understanding

3. **Run MATLAB models**:
   - Navigate to `COMPOSITES PROJECT/matlab final/`
   - Open any `.mlx` file in MATLAB
   - Follow the embedded instructions and documentation

4. **Examine FEA results**:
   - Check `COMPOSITES PROJECT/Results/` for analysis outcomes
   - Review simulation setup in `COMPOSITES PROJECT/Project/`

## 📖 Key Topics Covered

### Theoretical Foundations
- Composite material fundamentals
- Micromechanics and effective properties
- Manufacturing processes and techniques
- Material characterization methods

### Computational Methods
- **Micromechanical Models**:
  - Voigt and Reuss bounds
  - Halpin-Tsai equations
  - Mori-Tanaka method
  - Self-consistent schemes
  - Hashin-Shtrikman bounds
  - Composite Cylinder Assemblage

- **Finite Element Analysis**:
  - Representative Volume Element (RVE) modeling
  - Homogenization techniques
  - Multi-directional loading analysis
  - Property extraction and validation

### Practical Applications
- Property prediction workflows
- Design optimization approaches
- Manufacturing process selection
- Quality control and testing

## 📊 Analysis Capabilities

This repository provides tools for:

- **Elastic Property Prediction**: Calculate effective elastic constants
- **Bounds Analysis**: Determine theoretical limits of composite properties
- **Homogenization**: Multi-scale analysis from micro to macro
- **Parameter Studies**: Investigate effects of volume fraction, aspect ratio, etc.
- **Validation**: Compare analytical and numerical results

## 🤝 Contributing

Contributions are welcome! Please feel free to:

- Add new micromechanical models
- Improve existing MATLAB implementations
- Provide additional reference materials
- Enhance documentation and examples
- Report issues or suggest improvements

## 📄 Academic Use

This repository is designed for educational purposes in composite materials engineering. It serves as:

- Course material supplement
- Research reference
- Computational toolkit
- Learning resource for students and researchers

## 📞 Support

For questions or issues:
1. Check existing documentation
2. Review MATLAB file comments
3. Examine example workflows
4. Open an issue for specific problems

---

**Note**: This repository reflects ongoing coursework and research in composite materials. Content may be updated regularly with new analyses and improvements.

**Keywords**: Composite Materials, Micromechanics, MATLAB, ABAQUS, FEA, Homogenization, Material Properties, Engineering Analysis
