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
    // Backend
    Skill(name: "PHP", category: "Backend"),
    Skill(name: "Yii2", category: "Backend"),
    Skill(name: "WordPress", category: "Backend"),
    Skill(name: "Drupal", category: "Backend"),
    Skill(name: "MySQL", category: "Backend"),
    Skill(name: "Redis", category: "Backend"),
    Skill(name: "Sphinx", category: "Backend"),

    // Frontend
    Skill(name: "HTML5", category: "Frontend"),
    Skill(name: "CSS3", category: "Frontend"),
    Skill(name: "JavaScript", category: "Frontend"),
    Skill(name: "jQuery", category: "Frontend", isLegacy: true),
    Skill(name: "Bootstrap", category: "Frontend"),
    Skill(name: "Flutter", category: "Frontend"), // Added since we are using it
    // DevOps/Tools
    Skill(name: "Git", category: "DevOps"),
    Skill(name: "Docker", category: "DevOps"),
    Skill(name: "Vagrant", category: "DevOps"),
    Skill(name: "Composer", category: "DevOps"),
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
      title: "Corporate site for Uksatse",
      description:
          "Customization and development of the corporate website using WordPress.",
      role: "Developer",
      techStack: ["WordPress", "PHP", "CSS"],
    ),
    Project(
      title: "Travel Platform",
      description:
          "A large-scale travel project similar to TripAdvisor. Focused on backend logic, privacy, and API integration.",
      role: "Backend Lead",
      techStack: ["PHP", "Yii2", "MySQL", "API"],
    ),
    Project(
      title: "Cheesedom",
      description:
          "Delivery website for craft cheese. Built from scratch without plugins.",
      role: "Full Stack Developer",
      techStack: ["HTML", "CSS", "JS", "PHP", "MySQL"],
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
