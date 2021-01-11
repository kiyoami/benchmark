<?php

define('N', 10000);
$start = microtime(true);

$n_points_in_circle = 0;
for ($x = -N; $x <= N + 1; $x++) {
    for ($y = -N; $y <= N + 1; $y++) {
        if ($x * $x + $y * $y < N * N) {
            $n_points_in_circle++;
        }
    }
}

$duration = microtime(true) - $start;

echo "{$n_points_in_circle} {$duration}s";