import axios from 'axios';

export const fetchStudentTasks = (studentId) => (
  axios.get('http://localhost:3000/api/tasks', {studentId})
);