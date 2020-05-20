## Configuration

Setup localhost

```text
cat > hosts <<EOF
localhost ansible_connection=local ansible_python_interpreter=/usr/bin/python3
EOF
make ping
make dry-run
make
```

Setup remote hosts

```text
cat > hosts <<EOF
172.16.0.1 ansible_python_interpreter=/usr/bin/python3
EOF
make ping
make dry-run
make
```
