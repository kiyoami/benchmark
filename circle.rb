N = 10000
start_time = Time.now

n_points_in_circle = 0
(-N..N+1).each {|x|
    (-N..N+1).each {|y|
        n_points_in_circle+=1 if x**2+y**2 < N**2
    }
}

duration = Time.now - start_time

print "#{n_points_in_circle} #{duration}s"
