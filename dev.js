const { spawn } = require('child_process');
const path = require('path');
const os = require('os');

let localIp = '127.0.0.1';
const nets = os.networkInterfaces();
for (const name of Object.keys(nets)) {
  for (const net of nets[name]) {
    if (net.family === 'IPv4' && !net.internal) {
      localIp = net.address;
      break;
    }
  }
}

console.log('='.repeat(64));
console.log('  🚀 Splitwise Calculator Pro is running!');
console.log(`  📱 Open on your Phone (Same Wi-Fi): http://${localIp}:5000`);
console.log(`  💻 Open on your PC Browser:         http://localhost:5000`);
console.log(`  ⚡ Vite Hot Reload Dev Server:       http://${localIp}:5173`);
console.log('='.repeat(64));

const server = spawn('npm', ['run', 'dev'], {
  cwd: path.resolve(__dirname, 'server'),
  stdio: 'inherit',
  shell: true
});

const client = spawn('npm', ['run', 'dev'], {
  cwd: path.resolve(__dirname, 'client'),
  stdio: 'inherit',
  shell: true
});

const cleanup = () => {
  try { server.kill(); } catch {}
  try { client.kill(); } catch {}
  process.exit(0);
};

process.on('SIGINT', cleanup);
process.on('SIGTERM', cleanup);
