@dir = "/home/rossdylan/srv/restup/"

worker_processes 2
working_directory @dir

timeout 30

pid "tmp/pids/unicorn.pid"

stderr_path "log/unicorn.stderr.log"
stdout_path "log/unicorn.stdout.log"
