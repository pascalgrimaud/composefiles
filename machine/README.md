# machine

Build the image:
```
docker-compose build
```

Start the 3 containers:
```
docker-compose up -d
```

Create your ssh key, if it's not done:
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Add your SSH public key to container, with jhipster/jhipster:
```
cat ~/.ssh/id_rsa.pub | ssh -p 22001 jhipster@localhost 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh -p 22002 jhipster@localhost 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh -p 22003 jhipster@localhost 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'
```
Connect to container:
```
ssh -p 22001 jhipster@localhost
ssh -p 22002 jhipster@localhost
ssh -p 22003 jhipster@localhost
```
