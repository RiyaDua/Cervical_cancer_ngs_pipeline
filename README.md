# 🧬 Identification of Hub Genes and Pathways in Cervical Cancer

This repository contains scripts and workflow details from my **published research on cervical cancer hub genes**, where we utilized **in-silico approaches to identify key genetic pathways**. *(Raw data is not included due to publication policies.)*

## 🔍 Research Overview
- **Objective**: Identify key genes involved in **cervical cancer** using **microarray profiling data**.
- **Data Source**: Publicly available dataset from **NCBI-GEO** (`GSE63678`).
- **Approach**:
  - **Differential Gene Expression (DEG) Analysis** using `DESeq2` and `limma`.
  - **Network-Based Gene Selection** via `Cytoscape` and `STRING Database`.
  - **Molecular Docking & Dynamics** of candidate proteins using **AutoDock & GROMACS**.
  - **Survival Analysis** using `survival` and `survminer`.

## 🛠 Tools & Packages Used
### 🔹 **Data Analysis**
- `R`: `DESeq2`, `GEOquery`, `tidyr`, `limma`, `pheatmap`, `dplyr`
- **Network Analysis**: `Cytoscape`, `STRING Database`
- **Survival Analysis**: `survival`, `survminer`

### 🔹 **Molecular Docking & Simulation**
- **AutoDock**: Ligand-protein docking
- **GROMACS**: Molecular dynamics simulation
- **PyMOL**: 3D visualization of protein-ligand complexes

## 📄 **Publication**
This work is published in:  
📌 **[PLOS ONE]** (DOI: [[(https://doi.org/10.1371/journal.pone.0287864)]])  
For full details, please refer to the **published paper**.
