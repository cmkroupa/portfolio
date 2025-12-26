# Seed data for Cameron Kroupa's Portfolio

# Clear existing data
puts "Clearing existing data..."
Course.destroy_all
Degree.destroy_all
Project.destroy_all
Experience.destroy_all
Skill.destroy_all
Profile.destroy_all

# Profile info
puts "Seeding profile..."
Profile.create!(
  name: "Cameron Kroupa",
  story: "I'm a third-year Computer Science and Math student at the University of Western, with a strong focus on low-level systems, artificial intelligence, and software security. Beyond my studies, I've enjoyed playing chess since I was 3 which gives me a unique perspective for strategical thinking through problems. I'm driven by a desire to learn and tackle complex challenges, always looking for opportunities to deepen my understanding and practical skills.",
  gpa: "3.9",
  year_started: 2023,
  interests: [
    { title: "Frontend", emoji: "🎨", description: "NextJS — specialized in building modern, high-performance web applications.", mention: "Rails views" },
    { title: "Backend", emoji: "⚙️", description: "Ruby on Rails — building scalable and robust server-side logic.", mention: "Django" },
    { title: "Low Level", emoji: "💻", description: "C++ — designing and optimizing high-performance systems.", mention: "Java" },
    { title: "Artificial Intelligence", emoji: "🤖", description: "Python — creating smart systems that can learn, adapt, and solve real-world problems." }
  ]
)
# frontend, backend, low-level system, ci/cd, databases, Security, AWS
puts "Seeding skills..."
skills = [
  # Frontend
  { title: "React", tag: "Frontend" },
  { title: "NextJS", tag: "Frontend" },
  { title: "TypeScript", tag: "Frontend" },
  { title: "Tailwind CSS", tag: "Frontend" },

  # Backend
  { title: "Ruby on Rails", tag: "Backend" },
  { title: "Node.js", tag: "Backend" },
  { title: "Python", tag: "Backend" },

  # Low-level Systems
  { title: "C++", tag: "Low-level Systems" },
  { title: "C", tag: "Low-level Systems" },
  { title: "Rust", tag: "Low-level Systems" },
  { title: "Java", tag: "Low-level Systems" },

  # CI/CD
  { title: "Git", tag: "CI/CD" },
  { title: "Docker", tag: "CI/CD" },
  { title: "Gitea", tag: "CI/CD" },

  # Databases
  { title: "PostgreSQL", tag: "Databases" },
  { title: "SQL", tag: "Databases" },
  { title: "MongoDB", tag: "Databases" },

  # Security
  { title: "Software Security", tag: "Security" },
  { title: "Cloudflare", tag: "Security" },

  # AWS
  { title: "AWS S3", tag: "AWS" },
  { title: "AWS EC2", tag: "AWS" }
]
skills.each { |s| Skill.create!(s) }

# Experience
puts "Seeding experience..."
experiences = [
  {
    title: "Design Software Engineer",
    organization: "Evertz",
    location: "Burlington, ON",
    start: Date.parse("2025-05-01"),
    end: Date.parse("2025-09-01"),
    url: "https://evertz.com",
    description: "Worked on the DreamCatcher video recording/playout system. Utilized C/C++ 23, Boost, and FFmpeg for high-performance video processing. Developed LTTNG tracing scripts for performance analysis, streamlined serialization/deserialization processes, and built a custom SDP parser."
  },
  {
    title: "Salesforce Developer",
    organization: "United Services Group",
    location: "Brampton, ON",
    start: Date.parse("2024-05-01"),
    end: Date.parse("2024-09-01"),
    url: "https://unitedservicesgroup.ca",
    description: "Developed division overview dashboards with a focus on data modeling and attention to detail. Built a real-time analytics dashboard for Senior Managers to provide daily concise overview analytics."
  },
  {
    title: "Backend Salesforce Developer",
    organization: "United Services Group",
    location: "Brampton, ON",
    start: Date.parse("2023-05-01"),
    end: Date.parse("2023-09-01"),
    url: "https://unitedservicesgroup.ca",
    description: "Leveraged technical expertise in Salesforce development to establish and streamline data entry processes. Built a real-time checklist for managers to use for quality control."
  }
]
experiences.each { |e| Experience.create!(e) }

# Projects
puts "Seeding projects..."
projects = [
  {
    title: "Gitea",
    description: "An open-source git cloud, self-hosted on a private server.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "Vaultwarden",
    description: "An open-source password manager, self-hosted for maximum security.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "Caddy",
    description: "A modern web server with automatic HTTPS and easy configuration.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "Tailscale",
    description: "A mesh VPN based on WireGuard, used for secure networking across devices.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "Virtual Pet Game",
    description: "A term-long project involving requirements gathering, UML diagrams, and UI mockups, culminating in a 2-week coding phase.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "LatticeTalk",
    description: "A JavaScript application implementing lattice-based encryption (post-quantum security) for a peer-to-peer messaging system.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "GoFundUs",
    description: "(Hack Western Prize Winner) A decentralized fundraising platform where withdrawals require approval from a majority of donators via receipt verification.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "C Scripted Calendar App",
    description: "A feature-rich calendar in C that manages reminders and accurately aligns dates based on the month.",
    url: "https://github.com/cmkroupa"
  },
  {
    title: "Maze Solver",
    description: "A DFS-based solver that navigates hallways to find the exit while managing 'coin usage' under a predefined limit.",
    url: "https://github.com/cmkroupa"
  }
]
projects.each { |p| Project.create!(p) }

# Education
puts "Seeding education..."
degree = Degree.create!(
  title: "Honours Specialization in Computer Science & Major in Data Science",
  description: "Western University | CS provides a strong foundation in all aspects of computer science; DS focuses on AI and cybersecurity applications.",
  graduation: Date.parse("2028-05-01")
)

courses = [
  { title: "Computer Organization & Architecture", description: "Internal representation of data types and architectural components using Assembly." },
  { title: "Data Structures & Algorithms", description: "Comprehensive study of core data structures and algorithm analysis." },
  { title: "Unix & C", description: "Operating system concepts and low-level programming." },
  { title: "Software Engineering", description: "Principles of professional software development and design patterns." },
  { title: "Artificial Intelligence", description: "Foundational concepts in machine learning and AI." },
  { title: "Calculus II", description: "Integration techniques, Taylor series, and differential equations." },
  { title: "Applied Logic", description: "Foundations of logical reasoning and its applications in computing." },
  { title: "Linear Algebra II", description: "Advanced matrix theory and vector spaces." }
]
courses.each { |c| degree.courses.create!(c) }

puts "Seed completed!"
