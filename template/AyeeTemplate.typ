#import "icons.typ": *;

#let regex-fakeitalic(reg-exp: ".+?", ang: -18.4deg, s) = {
  show regex(reg-exp): it => {
    box(skew(ax: ang, reflow: false, it))
  }
  s
}

#let fakeitalic(
  ang: -18.4deg,
  s,
) = regex-fakeitalic(
  reg-exp: "(?:\b[^\p{Script=Han}\p{Script=Hiragana}\p{Script=Katakana}\p{Script=Hangul}！-･〇-〰—]+?\b|[\p{Script=Han}\p{Script=Hiragana}\p{Script=Katakana}\p{Script=Hangul}])",
  ang: ang,
  s,
)

#let template(doc) = {
  set page(
    margin: (x: 0.9cm, y: 1.3cm),
    paper: "a4",
  )
  set text(
    size: 11pt,
    font: "Source Han Serif SC",
  )
  show link: text
  set par(justify: true)
  doc
}
#let init(name) = {
  set document(
    title: name + "'s Resume",
    author: name,
  )
}
#let headline(
  name: lorem(3),
  pic_path: "",
) = {
  set align(center)

  text(
    style: "normal",
    weight: "extrabold",
    size: 20pt,
  )[#name]
  if pic_path != "" {
    // insert picture
    place(
      top + right,
      dy: -2em,
      image(
        pic_path,
        height: 33mm,
      ),
    )
  }
  // v(1em)
  set align(left)
}
#let info(
  color: rgb(0, 0, 0),
  ..infos,
) = {
  set text(
    fill: color,
    // size: 10pt,
  )
  set align(center)
  infos
    .pos()
    .map(dir => {
      box(
        height: 1em,
        {
          if "icon" in dir {
            if (type(dir.icon) == str) {
              icon(dir.icon)
            } else {
              dir.icon
            }
          }
          h(0.15em)
          if "link" in dir {
            link(dir.link, dir.content)
          } else {
            dir.content
          }
        },
      )
    })
    .join(h(0.5em) + "·" + h(0.5em))
  v(0.5em)
}

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
}


#let itemSpacing = 0.52em //条目间间距
#let partChilineSpacing = 0.48em //部分标题与下划线间距
#let partSpacing = 0.9em //部分间间距
#let itempartSpacing = 0.9em

#let part(partName: none, contentItems: ()) = {
  stack(
    stack(
      spacing: partChilineSpacing,
      [== #partName],
      chiline(),
    ),
    spacing: itempartSpacing,
    stack(
      spacing: itemSpacing,
      ..contentItems,
    ),
  )
}

#let paragraphLeading = 0.3em //段落内行间距
#let paragraphSpacing = 0.3em //段落间间距
#let item(
  topLeftContent,
  topRightContent,
  bottomLeftContent,
  bottomRightContent,
  subContent: none,
) = {
  stack(
    spacing: paragraphSpacing,
    grid(
      columns: (1fr, auto),
      rows: (auto, auto),
      row-gutter: paragraphSpacing,

      [*#topLeftContent*],
      align(right, [#topRightContent]),
      par(bottomLeftContent, leading: paragraphSpacing),
      align(right, [#h(2.5em) #bottomRightContent]),
    ),
    if subContent != none {
      stack(
        spacing: paragraphSpacing,
        ..subContent,
      )
    }
    else{
        v(0em)
    }
  )
  
}

#let listLeadingString(content) = {
  list(par(content, leading: paragraphLeading, spacing: paragraphSpacing))
}
#let simpleLabeledString(label, content) = {
  par([*#label*:#content], leading: paragraphLeading, spacing: paragraphSpacing)
}
#let labeledString(label, content) = {
  list(par([*#label*:#content], leading: paragraphLeading, spacing: paragraphSpacing))
}
