#import "../template/template.typ": *;
#show: template;
#init("喵喵")
#stack(
  spacing: 12pt,
  headline(
    name: "喵喵",
    pic_path: "../img/meow.png", // 替换为猫娘头像图片路径
  ),
  stack(
    spacing: -4pt,
    [
      #info(
        color: rgb(0, 0, 0),
        (
          icon: fa_phone,
          link: "tel:+1234567890",
          content: "+123 456 7890",
        ),
        (
          icon: fa_email,
          link: "meow@example.com",
          content: "meow@example.com",
        ),
      )
    ],
    [
      #info(
        color: rgb(0, 0, 0),
        (
          icon: fa_github,
          link: "https://github.com/MeowMeow",
          content: "github.com/MeowMeow",
        ),
        (
          icon: fa_home,
          link: "https://meow.example.com",
          content: "meow.example.com",
        ),
      )
    ],
  ),
)
#stack(
  spacing: partSpacing,
  part(
    partName: "教育经历",
    contentItems: (
      item(
        "喵喵大学·猫咪学院",
        "本科 | 喵咪行为学",
        "喵星顶级学府",
        "20XX.09 -- 20XX.06",
        subContent: (
          listLeadingString([*排名*: 喵星前列 #h(1em) *GPA*: 4.0/4.0 #h(1em) *语言*: 喵语精通]),
          labeledString(
            "主要课程",
            "高级蹭蹭技巧、激光笔追逐艺术、纸箱钻研学、毛线球操控大师",
          ),
        ),
      ),
    ),
  ),
  part(
    partName: "竞赛经历",
    contentItems: (
      item(
        "全球喵咪攀爬大赛",
        [(冠军)*金奖*],
        "高级组",
        "20XX.07",
      ),
      item(
        "国际喵咪卖萌大赛",
        [(冠军)*金奖*],
        "专业组",
        "20XX.06",
      ),
      item(
        "喵星纸箱钻研大赛",
        [(冠军)*金奖*],
        "",
        "20XX.05",
      ),
      v(-0.3em),
      fakeitalic("其他喵咪赛事若干"),
    ),
  ),
  part(
    partName:"科研经历",
    contentItems: (
      item(
        "喵喵大学·喵咪行为实验室",
        "研究员",
        "师从喵教授，研究高级蹭蹭行为对人类的影响，发表多篇喵界顶级论文。",
        "20XX.06 -- 至今",
      ),
      item(
        "喵星激光笔追逐研究中心",
        "实习研究员",
        "参与激光笔追逐路径优化研究，提出新型追逐算法，提升追逐效率。",
        "20XX.01 -- 20XX.06",
      ),
    ),
  ),
  part(
    partName:"项目经历",
    contentItems: (
      item(
        "《纸箱堡垒》",
        "项目负责人，主要完成人",
        "设计并建造多层纸箱堡垒，提升喵咪居住体验。",
        "20XX.11 -- 20XX.07",
        subContent: (
          listLeadingString(["使用高级纸箱折叠技巧，设计多功能居住空间，包括瞭望台、休息区、隐藏通道等。"]),
        ),
      ),
      item(
        "《毛线球大师》",
        "项目主要完成人",
        "开发毛线球操控技巧，提升喵咪娱乐体验。",
        "20XX.02 -- 20XX.06",
        subContent: (
          listLeadingString(["设计多种毛线球操控模式，包括空中接力、障碍穿越、精准打击等。"]),
        )
      ),
      fakeitalic("其他小型喵咪项目及demo"),
    )
  ),
  part(
    partName:"主要学生工作与所获奖项",
    contentItems: (
      item(
        "喵星最佳蹭蹭奖",
        "获奖喵咪",
        "",
        "20XX.10"
      ),
      item(
        "喵星最佳卖萌奖",
        "获奖喵咪",
        "",
        "20XX.11"
      ),
      item(
        "喵喵大学·喵咪学生会",
        "主席",
        "负责组织学生活动，协调学生事务，提升学生福利。",
        "20XX.09 -- 至今"
      ),
      item(
        "喵喵大学·喵咪社团联合会",
        "会长",
        "负责管理社团，组织社团活动，丰富校园生活。",
        "20XX.09 -- 20XX.09"
      ),
    )
  ),
  part(
    partName:"技能与兴趣",
    contentItems: (
      simpleLabeledString(
        "喵咪技能",
        "高级蹭蹭、激光笔追逐、纸箱钻研、毛线球操控、卖萌",
      ),
      simpleLabeledString(
        "个人兴趣",
        "探索未知领域，追求卓越，热爱喵咪事业，对人类行为学有浓厚兴趣。"
      )
    )
  ),
)
