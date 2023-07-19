/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ["./src/**/*.{html,js}"],
    theme: {
        fontFamily: {
            'sans': ['Inter', 'Arial', 'sans-serif'],
            'display': ['Gobold', 'Arial', 'sans-serif'],
        },
        extend: {
            colors: {
                'race-green': '#22CD67',
                'race-gray': '#202119',
                'race-blue': '#00CABF',
            }
        },
    },
    plugins: [
        require('@tailwindcss/forms'),
    ],
}
