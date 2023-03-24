all: vuln1.c vuln2.c vuln3.c
	gcc -g -fno-stack-protector -z execstack -mpreferred-stack-boundary=2 -o vuln1 vuln1.c
	gcc -g -fno-stack-protector -mpreferred-stack-boundary=2 -o vuln2 vuln2.c
	gcc -g -fno-stack-protector -mpreferred-stack-boundary=2 -o vuln3 vuln3.c

clean:
	rm vuln1 vuln2 vuln3
