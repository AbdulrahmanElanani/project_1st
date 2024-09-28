import '../model/programming_course.dart';

List<ProgrammingCourse> programmingCourses = [
  ProgrammingCourse(
    id: 1,
    name: 'Introduction to Dart Programming',
    duration: 120,
    description:
        'Learn the basics of Dart programming language used for Flutter development.',
    link: 'https://example.com/dart-course',
    price: 200,
    outlines: [
      'Introduction to Dart',
      'Variables and Data Types',
      'Control Flow Statements',
      'Functions and Methods',
      'Object-Oriented Programming in Dart',
    ],
  ),
  ProgrammingCourse(
    id: 2,
    name: 'Mobile App Development with Flutter',
    duration: 180,
    description:
        'Comprehensive course on how to build mobile applications using Flutter.',
    link: 'https://example.com/flutter-course',
    price: 200,
    outlines: [
      'Introduction to Flutter',
      'Building UI with Widgets',
      'State Management',
      'Navigation and Routing',
      'Using APIs in Flutter',
    ],
  ),
  ProgrammingCourse(
    id: 3,
    name: 'Java Programming Basics',
    duration: 150,
    description:
        'Introduction to Java programming and its various applications.',
    link: 'https://example.com/java-course',
    price: 200,
    outlines: [
      'Introduction to Java',
      'Variables and Data Types',
      'Loops and Conditional Statements',
      'Object-Oriented Programming',
      'Exception Handling',
    ],
  ),
  ProgrammingCourse(
    id: 4,
    name: 'Android Development with Java',
    duration: 210,
    description:
        'Learn how to develop Android apps using Java programming language.',
    link: 'https://example.com/android-java-course',
    price: 200,
    outlines: [
      'Setting up Android Studio',
      'Building User Interfaces',
      'Handling User Input',
      'Networking and APIs',
      'Publishing Apps to Play Store',
    ],
  ),
  ProgrammingCourse(
    id: 5,
    name: 'Python Programming Fundamentals',
    duration: 140,
    description:
        'A comprehensive introduction to Python programming language and its use cases.',
    link: 'https://example.com/python-course',
    price: 200,
    outlines: [
      'Introduction to Python',
      'Control Flow',
      'Functions and Modules',
      'File Handling',
      'Object-Oriented Programming',
    ],
  ),
  ProgrammingCourse(
    id: 6,
    name: 'Advanced Python Programming',
    duration: 160,
    description:
        'Deep dive into advanced Python topics such as file handling, OOP, and data structures.',
    link: 'https://example.com/advanced-python-course',
    price: 200,
    outlines: [
      'Advanced Data Structures',
      'File Handling and I/O',
      'Decorators and Generators',
      'Object-Oriented Programming',
      'Error and Exception Handling',
    ],
  ),
  ProgrammingCourse(
    id: 7,
    name: 'React for Beginners',
    duration: 130,
    description: 'Get started with React to build modern web applications.',
    link: 'https://example.com/react-course',
    price: 200,
    outlines: [
      'Introduction to React',
      'JSX and Components',
      'State and Props',
      'React Hooks',
      'Handling Events',
    ],
  ),
  ProgrammingCourse(
    id: 8,
    name: 'Backend Development with Node.js',
    duration: 190,
    description:
        'Learn how to create server-side applications using Node.js and Express.js.',
    link: 'https://example.com/nodejs-course',
    price: 200,
    outlines: [
      'Introduction to Node.js',
      'Building APIs with Express.js',
      'Working with Databases',
      'Authentication and Authorization',
      'Deploying Node.js Apps',
    ],
  ),
  ProgrammingCourse(
    id: 9,
    name: 'Full Stack Development with MERN',
    duration: 240,
    description:
        'Become a full-stack developer by mastering MongoDB, Express, React, and Node.js.',
    link: 'https://example.com/mern-course',
    price: 200,
    outlines: [
      'Introduction to MERN Stack',
      'Building REST APIs with Express',
      'Frontend Development with React',
      'Working with MongoDB',
      'Deploying Full Stack Applications',
    ],
  ),
  ProgrammingCourse(
    id: 10,
    name: 'Introduction to Machine Learning with Python',
    duration: 200,
    description:
        'Learn the fundamentals of machine learning using Python and popular libraries like TensorFlow.',
    link: 'https://example.com/ml-python-course',
    price: 200,
    outlines: [
      'Introduction to Machine Learning',
      'Supervised vs Unsupervised Learning',
      'Building Models with Scikit-learn',
      'Neural Networks with TensorFlow',
      'Evaluating and Tuning Models',
    ],
  ),
  ProgrammingCourse(
    id: 11,
    name: 'Artificial Intelligence Basics',
    duration: 180,
    description:
        'Understand the basics of AI, its applications, and key concepts like neural networks and deep learning.',
    link: 'https://example.com/ai-course',
    price: 200,
    outlines: [
      'Introduction to Artificial Intelligence',
      'Machine Learning Concepts',
      'Neural Networks and Deep Learning',
      'AI Applications in Real-World',
      'Ethics in AI',
    ],
  ),
  ProgrammingCourse(
    id: 12,
    name: 'Data Science with Python',
    duration: 220,
    description:
        'Learn data science concepts, including data analysis, visualization, and machine learning with Python.',
    link: 'https://example.com/data-science-python-course',
    price: 200,
    outlines: [
      'Introduction to Data Science',
      'Data Analysis with Pandas',
      'Data Visualization with Matplotlib',
      'Machine Learning with Scikit-learn',
      'Deploying Data Science Projects',
    ],
  ),
  ProgrammingCourse(
    id: 13,
    name: 'Web Development with HTML, CSS, and JavaScript',
    duration: 110,
    description:
        'Learn to build responsive websites using HTML, CSS, and JavaScript.',
    link: 'https://example.com/web-dev-course',
    price: 200,
    outlines: [
      'Introduction to Web Development',
      'HTML Basics',
      'Styling with CSS',
      'JavaScript Fundamentals',
      'Responsive Design',
    ],
  ),
  ProgrammingCourse(
    id: 14,
    name: 'SQL for Beginners',
    duration: 100,
    description: 'Understand how to manage and query databases using SQL.',
    link: 'https://example.com/sql-course',
    price: 200,
    outlines: [
      'Introduction to Databases',
      'Writing SQL Queries',
      'Joins and Subqueries',
      'Database Management',
      'SQL Best Practices',
    ],
  ),
  ProgrammingCourse(
    id: 15,
    name: 'DevOps Foundations',
    duration: 170,
    description:
        'Learn the basics of DevOps practices and tools like Docker, Kubernetes, and CI/CD pipelines.',
    link: 'https://example.com/devops-course',
    price: 200,
    outlines: [
      'Introduction to DevOps',
      'Continuous Integration and Deployment',
      'Version Control with Git',
      'Containerization with Docker',
      'Kubernetes for Orchestration',
    ],
  ),
];