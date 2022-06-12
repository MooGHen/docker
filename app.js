onst child_process = require('child_process');
let out;

out = child_process.spawnSync('./npm');
console.log('status: ' + out.status);
console.log('stdout: ' + out.stdout.toString('utf8'));
console.log('stderr: ' + out.stderr.toString('utf8'));
console.log();
