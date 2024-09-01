cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  pemphigus---secondary:
    run: pemphigus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  other-pemphigus-icd---secondary:
    run: other-pemphigus-icd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: pemphigus---secondary/output
  pemphigus-icd-vulgaris---secondary:
    run: pemphigus-icd-vulgaris---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: other-pemphigus-icd---secondary/output
  pemphigus-icd-vegetan---secondary:
    run: pemphigus-icd-vegetan---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-vulgaris---secondary/output
  foliaceous-pemphigus-icd---secondary:
    run: foliaceous-pemphigus-icd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-vegetan---secondary/output
  pemphigus-icd-selvagem---secondary:
    run: pemphigus-icd-selvagem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: foliaceous-pemphigus-icd---secondary/output
  pemphigus-icd-erythematosus---secondary:
    run: pemphigus-icd-erythematosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-selvagem---secondary/output
  pemphigus-icd-druginduced---secondary:
    run: pemphigus-icd-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-erythematosus---secondary/output
  pemphigus-icd-unspecified---secondary:
    run: pemphigus-icd-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-druginduced---secondary/output
  pemphigus-icd-paraneoplastica---secondary:
    run: pemphigus-icd-paraneoplastica---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-unspecified---secondary/output
  pemphigus-icd-membrane---secondary:
    run: pemphigus-icd-membrane---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-paraneoplastica---secondary/output
  pemphigus-icd-neumann---secondary:
    run: pemphigus-icd-neumann---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-membrane---secondary/output
  pemphigus-icd-benign---secondary:
    run: pemphigus-icd-benign---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-neumann---secondary/output
  pemphigus-icd-neonatorum---secondary:
    run: pemphigus-icd-neonatorum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-benign---secondary/output
  pemphigus-icd-screening---secondary:
    run: pemphigus-icd-screening---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-neonatorum---secondary/output
  pemphigus-icd-foliaceu---secondary:
    run: pemphigus-icd-foliaceu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-screening---secondary/output
  familial-pemphigus-icd---secondary:
    run: familial-pemphigus-icd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-foliaceu---secondary/output
  syphilitic-pemphigus-icd---secondary:
    run: syphilitic-pemphigus-icd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: familial-pemphigus-icd---secondary/output
  minor-pemphigus-icd---secondary:
    run: minor-pemphigus-icd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: syphilitic-pemphigus-icd---secondary/output
  pemphigus-icd---secondary:
    run: pemphigus-icd---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: minor-pemphigus-icd---secondary/output
  pemphigus-icd-dystrophy---secondary:
    run: pemphigus-icd-dystrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: pemphigus-icd---secondary/output
  pemphigus-icd-malignant---secondary:
    run: pemphigus-icd-malignant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-dystrophy---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: pemphigus-icd-malignant---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
