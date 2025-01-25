import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_mostafij/src/data/models/project_structure/project_structure.dart';

final myProjectsProvider = Provider<List<ProjectStructure>>((ref) {
  return const <ProjectStructure>[
    ProjectStructure(
      projectName: "Jobpilot",
      shortDescription:
          "The ultimate mobile app revolutionizing the online employment landscape.",
      coverPic:
          "https://images.unsplash.com/photo-1707949576610-a373542c77df?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
      links: [
        (
          link:
              "https://play.google.com/store/apps/details?id=com.templatecookie.jobpilot&pcampaignid=web_share",
          store: ProjectPublishSpace.android,
        ),
        (
          link: "https://jobpilot.templatecookie.com/",
          store: ProjectPublishSpace.web,
        ),
      ],
      projectDetails:
          "Cillum consectetur ad sunt dolor nulla aliqua. Irure incididunt pariatur aute velit et proident. Fugiat voluptate tempor consectetur ipsum nostrud anim Lorem sit labore voluptate tempor nulla.",
      screenshots: [],
    ),
    ProjectStructure(
      projectName: "Adlisting",
      shortDescription:
          "Elevate your classified listing business and revolutionize your buying and selling.",
      coverPic:
          "https://images.unsplash.com/photo-1707968781621-db823bedc3d8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMHx8fGVufDB8fHx8fA%3D%3D",
      links: [
        (
          link:
              "https://play.google.com/store/apps/details?id=com.templatecookie.adlisting_mobile_app",
          store: ProjectPublishSpace.android,
        ),
        (
          link: "https://adlisting.templatecookie.com/",
          store: ProjectPublishSpace.web,
        ),
      ],
      projectDetails:
          "Amet fugiat magna nulla excepteur qui officia laborum labore id et amet do non. Adipisicing commodo veniam non esse in est occaecat. Lorem qui minim non sint velit laborum ad velit. Duis ipsum aliqua dolore magna excepteur laboris non cupidatat cupidatat cupidatat. Veniam commodo exercitation non commodo mollit elit deserunt enim ut id est dolor officia. Officia amet irure non nostrud sunt et veniam. Non aute consequat Lorem pariatur deserunt amet proident voluptate quis.",
      screenshots: [],
    ),
    ProjectStructure(
      shortDescription:
          "An industry changing supper app, to help you and support you with all your daily needs.",
      coverPic:
          "https://images.unsplash.com/photo-1707985664665-b09c7c876ed7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NHx8fGVufDB8fHx8fA%3D%3D",
      links: [
        (
          link:
              "https://play.google.com/store/apps/details?id=com.marhababd.customer",
          store: ProjectPublishSpace.android,
        ),
        (
          link: "https://apps.apple.com/us/app/marhaba-food-more/id6445893522",
          store: ProjectPublishSpace.iOs,
        ),
      ],
      projectDetails:
          "Qui non eu dolor ut officia mollit consectetur est. Proident est aute tempor magna proident cillum nulla qui. Sit nisi in nisi voluptate cillum velit. Consequat incididunt ullamco consectetur nulla officia ea pariatur anim aliquip sint ullamco sit laborum eiusmod. Amet voluptate eu laboris consequat in nulla ad quis deserunt qui voluptate. Consequat sint aliqua velit reprehenderit magna elit exercitation proident aliqua proident ex eu.",
      projectName: "Marhaba Customer",
      screenshots: [],
    ),
    ProjectStructure(
      shortDescription:
          "A unique QR scan system, for tracking entrance of authorized personals.",
      coverPic:
          "https://images.unsplash.com/photo-1708006252090-e5db494aa373?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5OHx8fGVufDB8fHx8fA%3D%3D",
      links: [
        (
          link:
              "https://play.google.com/store/apps/details?id=emasa.paip.com.etap",
          store: ProjectPublishSpace.android,
        ),
        (
          link: "https://apps.apple.com/my/app/emasa-tap/id1606404194",
          store: ProjectPublishSpace.iOs,
        ),
      ],
      projectDetails:
          "Pariatur cillum deserunt qui ipsum. Incididunt officia duis esse et sint ut. Aliquip irure cupidatat adipisicing nostrud velit anim velit do non minim nostrud ipsum.",
      projectName: "Emasa-Tap",
      screenshots: [],
    ),
    ProjectStructure(
      shortDescription:
          "Your daily cooking partner with preference based recipe and step by step guide.",
      coverPic:
          "https://images.unsplash.com/photo-1707912079134-becf5a3598e2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMDN8fHxlbnwwfHx8fHw%3D",
      links: [
        (
          link:
              "https://play.google.com/store/apps/details?id=com.mowe.socook&hl=en&gl=US",
          store: ProjectPublishSpace.android,
        ),
        (
          link: "https://socook.co.uk/",
          store: ProjectPublishSpace.web,
        ),
      ],
      projectDetails:
          "Exercitation velit quis irure reprehenderit non cupidatat. Fugiat velit commodo duis officia amet do nostrud consectetur et officia. Ad eiusmod velit ea quis id minim culpa.",
      projectName: "SoCook",
      screenshots: [],
    ),
  ];
});
