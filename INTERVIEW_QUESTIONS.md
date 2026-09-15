# Interview Preparation — Questions Recruiters Could Ask

## Profile / General

1. Why did you choose Rust and TypeScript as your primary languages?
2. What does "systems-minded engineer" mean to you?
3. How do you decide which technology stack to use for a new project?
4. What's the difference between building a mobile app with Flutter vs native Android?
5. Where do you see yourself in 3-5 years?

---

## Education

6. What was the most challenging course you took and why?
7. How did the Software Analysis and Testing course influence your development practices?
8. Did you work on any significant academic projects outside of coursework?
9. Why University of Minho? What made you choose LEI?
10. How do you apply what you learned in Computer Systems Security to your projects?
11. What was your final grade / GPA? (if asked)

---

## VencordMobile

12. What problem does VencordMobile solve that isn't already solved by other apps?
13. How does the Flutter-to-JS bridge work technically? Walk me through the postMessage flow.
14. What challenges did you face injecting JavaScript into a WebView on Android?
15. How do you handle state synchronization between Flutter and the injected web content?
16. Why did you choose esbuild over webpack or rollup for bundling?
17. How does the WakeLock implementation work during voice calls?
18. What happens when Discord updates their web app — does VencordMobile break?
19. How do you handle the hardware back button interception at the native level?
20. Have you considered publishing this on the Play Store? What are the legal/ToS implications?
21. How do you test a project that depends on a third-party web app (Discord)?
22. What's the architecture of the CI/CD pipeline? How does the APK signing work?

---

## Lister

23. Walk me through the RBAC system design. How do the 3 user tiers interact?
24. How did you implement segregated authentication? What does that mean technically?
25. What was the N+1 query problem you solved? How did you identify it?
26. How do materialized views work in PostgreSQL, and why did you choose them over caching?
27. What is query batching and how did you implement it?
28. How did you design the database schema for a marketplace with multiple user types?
29. What was the most difficult part of building the real-time analytics dashboard?
30. How did you handle session management securely across different user roles?
31. Why did you choose Express over Fastify or Hono for the backend?
32. How does the Docker deployment work? Do you use docker-compose?

---

## Zenyth IDE

33. What is a PTY and why do you need one for a terminal?
34. How does bidirectional streaming work between a WebSocket and a native OS process?
35. What is backpressure and why does it matter in the LLM proxy?
36. How did you achieve sub-100ms first-token latency with Ollama?
37. What is Tauri and how does it differ from Electron?
38. How does the Rust IPC bridge work between React and native APIs?
39. What challenges did you face porting a web editor to a desktop app?
40. Why did you build a custom proxy instead of using Ollama's built-in server?
41. How do you handle error recovery in the proxy when the LLM crashes?
42. What is the "zero data loss" guarantee you mention — how did you verify it?

---

## Open Source & Community

43. What contributions have you made to the Vencord ecosystem beyond your own project?
44. How do you approach contributing to someone else's open-source project?
45. Have you ever submitted a PR to a project you don't own? What was the experience?
46. What do you look for when reviewing code in open-source projects?
47. How do you document your projects for other developers?

---

## Technical Skills — Deep Dives

### Rust
48. What makes Rust suitable for systems programming compared to C or C++?
49. Explain ownership and borrowing. Can you give a real example from your projects?
50. What is a lifetime and when do you need to specify one?
51. How does error handling in Rust differ from try/catch in other languages?
52. Have you used async Rust? How does Tokio work?
53. What is FFI and have you used it to call C libraries from Rust?
54. How do you profile a Rust application for performance?
55. What's the difference between `String` and `&str`?

### TypeScript
56. What is the difference between `any` and `unknown` in TypeScript?
57. How do you use generics in TypeScript? Give an example from your projects.
58. What is a discriminated union and when would you use one?
59. How do you handle async/await error handling in TypeScript?
60. What's the difference between `interface` and `type`?

### C
61. What is a segfault and how do you debug one?
62. Explain the difference between stack and heap memory.
63. What is a buffer overflow and how do you prevent it?
64. How does manual memory management in C compare to Rust's ownership model?

### Python
65. What are list comprehensions and when would you use them?
66. How does Python's GIL affect multi-threaded programs?
67. Have you used type hints in Python? Why or why not?

### Dart / Flutter
68. What is reactive programming and how does Flutter use it?
69. How does Flutter's widget tree work?
70. What is the difference between `StatelessWidget` and `StatefulWidget`?
71. How do you manage state in a Flutter app? Have you used Provider, Riverpod, or Bloc?

---

## Frameworks & Tools

72. How does React's virtual DOM work?
73. What is the difference between SSR and CSR in React?
74. How does Tauri's IPC mechanism work under the hood?
75. What is esbuild and why is it faster than webpack?
76. How does Docker containerization work? What's the difference between a container and a VM?
77. What is a GitHub Action workflow? How did you set up your CI/CD?
78. What is Supabase and how does it compare to Firebase?

---

## Databases

79. What is the difference between SQL and NoSQL databases?
80. When would you use PostgreSQL over MongoDB?
81. What is an index and how does it improve query performance?
82. Explain the difference between INNER JOIN and LEFT JOIN.
83. What is a transaction and why is ACID important?
84. How do you design a schema for a multi-tenant application?

---

## DevOps & Infrastructure

85. What is CI/CD and why is it important?
86. How do you structure a GitHub Actions workflow for a multi-language project?
87. What is the difference between a build stage and a runtime stage in Docker?
88. How do you handle secrets in CI/CD pipelines?
89. What is VPS deployment and how does it differ from serverless?

---

## AI & LLMs

90. How do local LLMs (Ollama) differ from API-based LLMs (OpenAI)?
91. What is RAG (Retrieval-Augmented Generation) and have you used it?
92. What is agent engineering and how does it differ from traditional software?
93. How do you handle hallucination in LLM outputs?
94. What is quantization and why does it matter for local inference?
95. How do you evaluate LLM performance in your projects?

---

## Testing

96. What is property-based testing and how does it differ from unit testing?
97. How does Hypothesis generate test cases?
98. What is EvoSuite and how does it generate tests automatically?
99. How do you decide what to test in a project?
100. What is test-driven development (TDD) and do you practice it?

---

## Behavioral / Soft Skills

101. Tell me about a time you struggled with a technical problem. How did you solve it?
102. How do you prioritize when working on multiple projects?
103. How do you learn a new technology or framework?
104. Describe a time you had to explain a complex technical concept to someone.
105. How do you handle feedback on your code?
106. What's a project you're most proud of and why?
107. What's a mistake you made in a project and what did you learn from it?
108. How do you stay up to date with technology trends?
109. Do you prefer working alone or in a team? Why?
110. What开源 (open-source) projects do you follow or use regularly?

---

## Curveball / Culture Fit

111. If you could rebuild one of your projects from scratch, what would you change?
112. What's an opinion you have about software engineering that most people disagree with?
113. What's the most boring part of programming that you still do well?
114. If you had to pick one language to use for the rest of your career, which would it be?
115. What's a technology you've tried and decided NOT to use? Why?
116. How do you decide when a project is "done"?
117. What would your ideal day as a software engineer look like?
