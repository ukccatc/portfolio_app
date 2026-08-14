class Skill {
  final String name;
  final String category; // Backend, Frontend, DevOps, Other
  final bool isLegacy;

  const Skill({
    required this.name,
    required this.category,
    this.isLegacy = false,
  });
}

class Experience {
  final String company;
  final String role;
  final String period;
  final String description;
  final List<String> techStack;

  const Experience({
    required this.company,
    required this.role,
    required this.period,
    required this.description,
    required this.techStack,
  });
}

class Project {
  final String title;
  final String description;
  final String role;
  final List<String> techStack;
  final String? link;
  final String? imageAsset;

  const Project({
    required this.title,
    required this.description,
    required this.role,
    required this.techStack,
    this.link,
    this.imageAsset,
  });
}

class Education {
  final String school;
  final String degree;
  final String period;
  final String description;

  const Education({
    required this.school,
    required this.degree,
    required this.period,
    required this.description,
  });
}
