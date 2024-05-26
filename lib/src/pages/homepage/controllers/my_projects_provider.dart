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
      projectDetails: "",
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
      projectDetails: "",
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
      projectDetails: "",
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
      projectDetails: "",
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
      projectDetails: "",
      projectName: "SoCook",
      screenshots: [],
    ),
    ProjectStructure(
      shortDescription: "",
      coverPic:
          "https://images.unsplash.com/photo-1706530664711-ad4704cd27f1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMjh8fHxlbnwwfHx8fHw%3D",
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
      projectDetails: "",
      projectName: "Project Name",
      screenshots: [],
    ),
  ];
});
