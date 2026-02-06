#import "@preview/oxdraw:0.1.0": *

#set page(paper: "a4",margin: (x: 1.5cm, y: 1.5cm))
#set heading(numbering: "1.",)
#set par(justify:true)

#show heading: set block(above: 1.5em, below: 1em)
#show grid: set block(above: 2em, below: 2em)
#show raw.where(block: true): set block(above: 2em, below: 2em)

#show raw: set text(font: "Fira Code", size:1em)
#show outline.entry.where(level:1): set block(above: 1.5em)

#align(center)[
  #text(size: 18pt, weight: "bold")[Fundamentos do Desenvolvimento de Software Enterprise]
]

#v(1em)

#block(
  width: 100%,
)[
  Este documento apresenta os fundamentos essenciais do desenvolvimento de software em ambientes corporativos,
  explorando desde conceitos básicos até práticas avançadas de arquitetura. O conteúdo aborda a evolução natural.
]

#v(2em)

#outline(
 title: [Sumário]
)

#pagebreak()

= Evolução da Arquitetura: Monolito para Microserviços

*Fase 1: Arquitetura Monolítica*

Todos os módulos coexistem em uma única aplicação, compartilhando as mesmas bibliotecas e recursos.

#figure(
  box(
    width: 50%,
    oxdraw(```mermaid
    graph TB
        M1[Módulo 1]
        M2[Módulo 2]
        M3[Módulo 3]
        SL[Bibliotecas Compartilhadas]

        M1 --> SL
        M2 --> SL
        M3 --> SL
    ```)
  )
)

*Fase 2: Separação Modular*

Os módulos são agrupados em serviços distintos, cada um com suas próprias bibliotecas compartilhadas, mantendo coesão funcional.

#figure(
  box(
    width: 60%,
    oxdraw(```mermaid
    graph TB
        subgraph Service1["Serviço 1"]
            M1[Módulo 1]
            M2[Módulo 2]
            SL1[Libs Compartilhadas]

            M1 --> SL1
            M2 --> SL1
        end

        subgraph Service2["Serviço 2"]
            M3[Módulo 3]
            SL2[Libs Compartilhadas]

            M3 --> SL2
        end
    ```)
  )
)

*Fase 3: Microserviços*

Decomposição completa em serviços independentes e autônomos, com uma camada comum de bibliotecas compartilhadas para funcionalidades transversais.

#figure(
  box(
    width: 60%,
    oxdraw(```mermaid
    graph TB
        subgraph Service1["Serviço 1"]
            M1[Módulo 1]
            M2[Módulo 2]
        end

        Service3[Serviço 3]
        SL[Bibliotecas Compartilhadas]

        M1 --> SL
        M2 --> SL
        Service3 --> SL
    ```)
  )
)

#pagebreak()
