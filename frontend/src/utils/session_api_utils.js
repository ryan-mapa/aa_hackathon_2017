import axios from 'axios';

export const login = (user) => (
  axios.post('http://localhost:3000/api/session', {user})
);
//
// export const logout = () => (
//   axios.delete('http://localhost:3000/api/session', {})
// );
