const n = 10000;
const start = Date.now();

let n_points_in_circle = 0;
for (let x = -n; x <= n+1; x++) {
    for (let y = -n; y <= n+1; y++) {
        if (x * x + y * y < n * n) {
            n_points_in_circle++;
        }
    }
}

const duration = Date.now() - start;

console.log('%d %fms', n_points_in_circle, duration);
