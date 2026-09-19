# SplitVerse AI ?

> **The World''s Most Advanced AI-Powered Expense Splitting & Automated Domestic Economy Platform.**  
> Designed with Apple-level polish, fintech glassmorphism, Google Gemini AI intelligence, voice automation, and multi-UPI settlement.

[![React](https://img.shields.io/badge/React-19.2-61dafb?logo=react&logoColor=black)](https://react.dev/)
[![Vite](https://img.shields.io/badge/Vite-8.2-646CFF?logo=vite&logoColor=white)](https://vitejs.dev/)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-4.3-38bdf8?logo=tailwindcss&logoColor=white)](https://tailwindcss.com/)
[![Node.js](https://img.shields.io/badge/Node.js-20+-339933?logo=node.js&logoColor=white)](https://nodejs.org/)
[![Express](https://img.shields.io/badge/Express-4.21-000000?logo=express&logoColor=white)](https://expressjs.com/)
[![SQLite](https://img.shields.io/badge/Database-SQLite3-003B57?logo=sqlite&logoColor=white)](https://www.sqlite.org/)
[![Google Gemini](https://img.shields.io/badge/AI-Google_Gemini-8E75B2?logo=google&logoColor=white)](https://ai.google.dev/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

## ?? Key Features

### ?? 1. Email OTP Two-Factor Authentication
- **Secure Email Verification**: Upon entering credentials, a 6-digit cryptographic OTP is sent to the user''s registered email address.
- **Dual-Mode Delivery**:
  - **Real SMTP Delivery**: Seamlessly sends real emails via Nodemailer when configured with Gmail, Outlook, Brevo, or SendGrid in server/.env.
  - **Live In-App Preview**: When SMTP is not configured, an interactive email preview card displays the incoming code with a **1-Click Autofill OTP** button for friction-free local testing.
- **Security Guard**: 60-second resend cooldown timer, 10-minute code expiry, and brute-force attempt limits (maximum 5 attempts).

### ?? 2. Eight Premium Themes
Switch instantly between 8 hyper-polished visual identities:
1. **Cyberpunk Neon**: High-contrast dark cyberpunk with glowing cyan & purple neon borders.
2. **AMOLED Pure Black**: 100% true black for OLED displays with sharp white typography.
3. **Glassmorphism**: Apple-inspired translucent blurred panels and frosted backdrops.
4. **Luxury Gold**: Premium royal black and metallic gold luxury accents.
5. **BMW Blue**: Precision automotive deep navy and vibrant Bavarian blue.
6. **Automobile / Speed Racing**: Carbon-fiber dark accents with racing-red speed gauges.
7. **Minimal White**: Ultra-clean, distraction-free daylight fintech aesthetic.
8. **Emerald Fintech**: Contemporary investment banking green and obsidian theme.

### ??? 3. Multi-Voice AI Assistant (4 Regional Accents)
- **Voice-to-Text Mic Input**: Speak your expenses, questions, or group queries in natural conversational voice.
- **Audio Speech Playback**: Assistant replies back aloud using synthesized voice speech alongside structured markdown.
- **Voice Variety Selector**: Switch between 4 natural Indian English and regional accent styles on the fly.

### ?? 4. Maid & Cook Domestic Staff Payroll Hub
- **30-Day Attendance Matrix**: Daily attendance tracking (? Present, ? Absent, ½ Half-Day) with 1-click status toggles.
- **Mathematical Deduction Engine**: Automatically calculates exact per-day wage deductions based on absences and half-days.
- **Automated Flatmate Expense Split**: Computes each roommate''s exact monthly share and creates a shared group expense with 1 click.
- **Dynamic UPI Payment**: Generates a dynamic QR code for the worker''s UPI VPA with the net calculated salary pre-filled.
- **Printable Salary Slip**: Formal domestic payroll voucher with employer details, attendance breakdown, and print/PDF formatting.

### ?? 5. 3D Spending Universe & Analytics
- **Orbital Planetary Categories**: Categories orbit like planets where size reflects spending volume.
- **Money Flow Animation**: Visual vectors showing cash travelling between group members.
- **Friendship Graph**: Identifies who spends together most and who shares meals most often.

### ??? 6. Smart Shopping & Grocery Radar
- **Address Auto-Detection**: Automatically detects and manages flat delivery addresses for quick delivery.
- **Price Comparison Arbitrage**: Compare prices between major Indian quick-commerce platforms.
- **Itemized Professional Invoicing**: Scans or builds structured receipts with tax, discounts, and line-item splits.

### ?? 7. Multi-UPI ID Wallet
- Add multiple UPI VPAs (@okhdfcbank, @okaxis, @paytm, @ybl, @upi).
- Select your **Primary UPI ID** for automatic payout routing.
- Choose which UPI ID or QR code to credit when creating or settling expenses.

### ?? 8. Greedy Debt Minimization (Splitwise Simplification)
- Graph-based debt simplification algorithm reduces transitive debts.
- Minimizes the total number of transactions in any group to at most \(N - 1\).

---

## ?? Quick Start Guide

### Option A: 1-Click Launchers (Windows)
1. **Double-click setup.bat** (installs all frontend and backend dependencies).
2. **Double-click start.bat** (launches both frontend and backend in dedicated windows).
3. Open **[http://localhost:5000](http://localhost:5000)** in your browser!

---

### Option B: Manual Setup

#### 1. Clone the repository
`ash
git clone https://github.com/your-username/splitverse-ai.git
cd splitverse-ai
`

#### 2. Backend Setup
`ash
cd server
npm install
copy .env.example .env
npm run dev
`

#### 3. Frontend Setup
`ash
cd ../client
npm install
npm run dev
`
Open **http://localhost:5173** (Vite Dev Server) or **http://localhost:5000** (Full-Stack Unified Server).

---

## ?? Environment Configuration (server/.env)

`env
PORT=5000
JWT_SECRET=splitverse_jwt_secret_super_secure_key_2026

# Google Gemini API Key for AI features
GEMINI_API_KEY=your_gemini_api_key_here

# Optional: Real SMTP email delivery (Gmail / Outlook / Brevo / SendGrid)
# If omitted, SplitVerse AI uses seamless live in-app email preview!
# SMTP_HOST=smtp.gmail.com
# SMTP_PORT=587
# SMTP_USER=your_email@gmail.com
# SMTP_PASS=your_app_password
# SMTP_FROM= SplitVerse AI <your_email@gmail.com>
`

---

## ?? Mobile Wi-Fi Testing
SplitVerse AI runs on your mobile phone on the same Wi-Fi network:
1. Run start.bat.
2. Notice your local IP address in the console: e.g. http://192.168.1.X:5000.
3. Open that URL on your phone''s browser (Safari, Chrome) for the complete native-like mobile app experience.

---

## ?? Project Architecture

`
splitverse-ai/
+-- client/                     # Vite + React 19 Frontend
¦   +-- src/
¦   ¦   +-- components/         # Modals, Navbars, Voice Assistant, Calculator
¦   ¦   +-- context/            # AuthContext, ThemeContext, VoiceContext
¦   ¦   +-- pages/              # Login, Dashboard, MaidPayroll, SpendingUniverse
¦   ¦   +-- services/           # API client, Gemini AI client
¦   +-- package.json
+-- server/                     # Node.js + Express Backend
¦   +-- src/
¦   ¦   +-- config/             # SQLite DB schemas & migrations
¦   ¦   +-- controllers/        # Auth (Email OTP), Groups, Expenses, OCR
¦   ¦   +-- middleware/         # JWT Auth, Rate Limiter
¦   ¦   +-- routes/             # RESTful API endpoints
¦   ¦   +-- services/           # Nodemailer Email Service, AI Detective
¦   +-- package.json
+-- setup.bat                   # 1-Click dependency installer
+-- start.bat                   # 1-Click full-stack runner
+-- README.md                   # Documentation
`

---

## ?? License
This project is licensed under the **MIT License**.
