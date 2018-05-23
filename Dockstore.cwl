class: CommandLineTool
doc: bwa
id: "bwa-0.7.15"
label: "bwa 0.7.15"

cwlVersion: v1.0

dct:creator:
  foaf:name: Mark

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/markxiao/bwa:test"

inputs:
  tread_num:
    type: int
    default: 4
    inputBinding:
      position: 1
      prefix: -t

  prefix:
    type: File
    inputBinding:
      position: 2
    secondaryFiles:
      - ".amb"
      - ".ann"
      - ".pac"
      - ".bwt"
      - ".sa"

  fq:
    type: File
    inputBinding:
      position: 3

outputs:
  result:
    type: stdout

baseCommand: ["bwa", "aln"]
