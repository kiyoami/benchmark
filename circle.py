import time

N = 10000
start = time.time()

n_points_in_circle = 0
for x in range(-N, N + 1):
    for y in range(-N, N + 1):
        if x ** 2 + y ** 2 < N ** 2:
            n_points_in_circle += 1

duration = time.time() - start

print("%d %fs" % (n_points_in_circle, duration))