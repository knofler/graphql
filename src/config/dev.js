// export const config = {
//   secrets: {
//     jwt: 'learneverything'
//   },
//   dbUrl: 'mongodb://localhost:27017/api-design'
// }


export const config = {
  mongoURL: process.env.MONGO_URL || 'mongodb://localhost:27017/api-design',
  // port: process.env.PORT || 8000,
  secrets: {
    jwt: process.env.JWT_SECRET || 'learneverything',
    jwtExp: '100d',
  },
};

export default config;