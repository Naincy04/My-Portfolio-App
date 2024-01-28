class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Dice roller app',
    'The Dice Roller app in Flutter provides users with a simple and engaging way to simulate rolling a six-sided die. The app features an intuitive user interface, displaying a central area where users can see the current rolled dice face. Users can initiate the dice roll by tapping a dedicated button, triggering a random number generation between 1 and 6, simulating the roll of a physical die.',
    'assets/images/coffee.png',
    'https://github.com/Naincy04/dice-roller-app',
  ),
  Project(
    'Quiz App',
    'The Quiz App in Flutter offers an interactive and educational platform for users to engage with a variety of quizzes on diverse topics. The app boasts a user-friendly interface, providing an enjoyable experience for both casual learners and quiz enthusiasts. Users can choose from a range of quiz categories, answer questions, and receive instant feedback on their performance. With features such as scoring, time tracking, and progress tracking, the app encourages users to enhance their knowledge and challenge themselves. The visually appealing design, coupled with smooth animations and transitions, ensures an immersive and enjoyable quiz-taking experience. Whether used for self-assessment, learning new facts, or competitive play, the Flutter Quiz App is a versatile and engaging tool for knowledge exploration.',
    'assets/images/car.png',
    'https://github.com/Naincy04/quiz-app',
  ),
  Project(
    'To do app',
    'The To-Do App in Flutter is a powerful and intuitive task management tool designed to streamline users daily productivity. With a clean and user-friendly interface, the app enables users to create, organize, and prioritize tasks effortlessly. Users can add tasks, set due dates, and categorize items for easy identification. The app provides features like task completion tracking, allowing users to mark items as done, and intuitive gestures for efficient task management. With real-time syncing across devices, users can access their to-do lists seamlessly from anywhere. The Flutter To-Do App aims to enhance productivity and organization, making it an essential companion for individuals seeking an efficient way to manage their daily tasks and responsibilities',
    'assets/images/alarm.jpg',
    'https://github.com/Naincy04/to-do-app',
  ),
  Project(
      'Compliment Generator',
      'The Compliment Generator Task in Flutter is a delightful and uplifting application designed to spread positivity and brighten users days. With a charming and user-friendly interface, the app generates personalized compliments with just a tap. Users can enjoy a variety of compliments, ranging from encouraging messages to light-hearted affirmations. The application not only aims to boost users spirits but also provides an interactive and enjoyable experience. Whether used for self-motivation or to share compliments with friends, the Flutter Compliment Generator Task is a fun and heartwarming addition to daily routines, fostering a positive and affirming atmosphere.',
      'assets/images/cui.png',
      'https://github.com/Naincy04/compliment-generator-task'),
];
