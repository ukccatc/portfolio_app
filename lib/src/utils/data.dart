import '../models/models.dart';

class Data {
  static const String name = "Oleg Rostovtsev";
  static const String role = "Software Developer / Flutter & Web";
  static const String goal =
      "Experienced developer seeking a team/project in web development. Passionate about building efficient, scalable, and user-friendly applications.";
  static const String location = "Odessa, Ukraine";
  static const String email = "ukccatc@gmail.com";
  static const String phone = "+380 66 287 40 81";
  static const String linkedIn =
      "https://www.linkedin.com/in/oleg-rostovtsev";
  static const String github = "https://github.com/ukccatc";
  static const String cvFileName = "Oleh_Rostovtsev_CV.pdf";

  static Uri get cvUri => Uri.base.resolve(cvFileName);

  static const List<Skill> skills = [
    // Mobile & Web first so this category renders at the top
    Skill(name: "Flutter", category: "Mobile & Web"),
    Skill(name: "Dart", category: "Mobile & Web"),
    Skill(name: "Firebase", category: "Mobile & Web"),
    Skill(name: "Next.js", category: "Mobile & Web"),
    Skill(name: "React", category: "Mobile & Web"),
    Skill(name: "TypeScript", category: "Mobile & Web"),
    Skill(name: "HTML5", category: "Mobile & Web"),
    Skill(name: "CSS3", category: "Mobile & Web"),
    Skill(name: "JavaScript", category: "Mobile & Web"),
    Skill(name: "Tailwind CSS", category: "Mobile & Web"),
    Skill(name: "jQuery", category: "Mobile & Web", isLegacy: true),
    Skill(name: "Bootstrap", category: "Mobile & Web", isLegacy: true),

    Skill(name: "REST APIs", category: "Backend"),
    Skill(name: "Python", category: "Backend"),
    Skill(name: "FastAPI", category: "Backend"),
    Skill(name: "Supabase", category: "Backend"),
    Skill(name: "MySQL", category: "Backend"),
    Skill(name: "Pimcore", category: "Backend"),
    Skill(name: "PHP", category: "Backend", isLegacy: true),
    Skill(name: "Yii2", category: "Backend", isLegacy: true),
    Skill(name: "Symfony", category: "Backend", isLegacy: true),
    Skill(name: "WordPress", category: "Backend", isLegacy: true),
    Skill(name: "Drupal", category: "Backend", isLegacy: true),

    Skill(name: "Git", category: "DevOps"),
    Skill(name: "Docker", category: "DevOps"),
    Skill(name: "GitHub Actions", category: "DevOps"),
    Skill(name: "Azure DevOps", category: "DevOps"),
    Skill(name: "Google Cloud", category: "DevOps"),
    Skill(name: "Vagrant", category: "DevOps", isLegacy: true),
  ];

  static const List<Experience> experience = [
    Experience(
      company: "Uksatse.ua",
      role: "PHP Developer",
      period: "Feb 2016 - Present",
      description:
          "Development and maintenance of the corporate website on WordPress. Technical support, content management, implementation of private user statistics, and website redesign.",
      techStack: ["PHP", "WordPress", "MySQL", "HTML", "CSS", "JS"],
    ),
    Experience(
      company: "Freelance",
      role: "Full Stack Developer",
      period: "Feb 2017 - Present",
      description:
          "Worked on various projects via Upwork and Kabanchik. Projects ranged from small tasks to a large travel platform (TripAdvisor analog). Responsibilities included backend architecture, data privacy, and API development.",
      techStack: ["PHP", "Yii2", "MySQL", "API", "Architecture"],
    ),
  ];

  static const List<Project> projects = [
    Project(
      title: "Himalayan Sound",
      description:
          "E-commerce for authentic Himalayan singing bowls: catalog, cart, gallery, and a multilingual storefront.",
      role: "Full Stack Developer",
      techStack: ["Next.js", "React", "TypeScript", "Supabase", "Tailwind CSS"],
      link: "https://himalayan-sound.com",
      imageAsset: "assets/projects/himalayan-sound.png",
    ),
    Project(
      title: "OPAD",
      description:
          "Flutter web portal for the Odessa regional air traffic controllers' union: articles, documents, and personal statistics.",
      role: "Flutter Developer",
      techStack: ["Flutter", "Dart", "MySQL"],
      link: "https://opad.com.ua",
      imageAsset: "assets/projects/opad.png",
    ),
    Project(
      title: "Imgscrap",
      description:
          "Batch OCR from images with Excel export. Open the live app to try it in the browser.",
      role: "Flutter Developer",
      techStack: ["Flutter", "Firebase", "OCR"],
      link: "https://imgscrap.web.app",
      imageAsset: "assets/projects/imgscrap.png",
    ),
    Project(
      title: "Brackets and Symbols",
      description:
          "Searchable glossary of programming brackets, operators, and symbol names. Copy any symbol in one click.",
      role: "Developer",
      techStack: ["HTML", "CSS", "JavaScript"],
      link: "https://ukccatc.github.io/brackets-and-symbols/",
      imageAsset: "assets/projects/brackets-and-symbols.png",
    ),
    Project(
      title: "NLBL Converter",
      description:
          "Convert NiceLabel and ZebraDesigner .nlbl files to PNG in the browser. Preview, edit, and download labels.",
      role: "Developer",
      techStack: ["Python", "FastAPI", "Docker", "Google Cloud"],
      link: "https://nlbl-preview-in7ecrzuxq-ew.a.run.app/login",
      imageAsset: "assets/projects/nlbl.png",
    ),
  ];

  static const List<Education> education = [
    Education(
      school: "IT Step Academy",
      degree: "Web Development",
      period: "2015 - 2016",
      description:
          "Covered HTML5/CSS3, JS/jQuery, PHP/MySQL, Drupal, Unix, SEO.",
    ),
    Education(
      school: "Loftblog",
      degree: "PHP MVC Course",
      period: "Course",
      description: "Deep dive into MVC patterns and PHP development.",
    ),
    Education(
      school: "Yii2 Course",
      degree: "Advanced Backend",
      period: "Course",
      description:
          "Mastered Vagrant, Docker, Composer, Yii2, Redis, and Sphinx.",
    ),
  ];

  static const String aboutText =
      "Programming is not just my job, but my main hobby. I enjoy solving complex problems and learning new technologies. In my free time, I stay active with gym and running, and I'm also interested in learning languages. I pride myself on being proactive, responsible, and a self-learner.";
}
