/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./public/index.html", "./src/**/*.{js,jsx}"],
  theme: {
    extend: {
      colors: {
       primary: "#A6ACAF",
        secondary: "#797D7F",
        color1: "#F39C12",
        color2: "#000",
      },
      fontFamily: {
        inter: ["'Inter'", "sans-serif"],
        poppins: ["Poppins"],
      },
    },
  },
  plugins: [],
};
