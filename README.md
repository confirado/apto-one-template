<p align='center'><a align="center" href="https://apto.one/" target="_blank" rel="noopener noreferrer">
    <img width="250" src="https://www.confirado.de/files/images/confirado/logos/Apto.ONE/logo_apto_blau_gr%C3%BCn.png">
</a></p>

## Apto.ONE is build up of the following components:

- Backend (PHP + Symfony)
- Administration Frontend (AngularJS, AngularJS Material)
- End-User Frontend (Angular 14+)

You can find our Documentation here: https://docs.apto.one

## Local Setup

Note: To setup this project using this method, you need to have the following installed:

- PHP 7.4
- MariaDB 10.6 or MySql 5.7
- node.js
- npm
- Apache 2
- Composer

Follow the instructions below to setup the project:

1. Clone the root repository "apto-project-template"
```
git clone https://github.com/confirado/apto-one-template.git
```

2. Enter the project directory
```
cd apto-one-template
```

3. Run the install script
```
./apto-install-local.sh apto-one-template
```

4. Install npm packages
```
npm install
npm install --prefix _client-deprecated_
```
5. Run local npm scripts
```
npm run local-frontend
npm run local-backend --prefix _client-deprecated_ 
```

## Docker Setup

Note: To setup this project using Docker, you need to have the following installed:

- Docker
- Docker Compose

Follow the instructions below to setup the project:

1. Clone the root repository "apto-project-template"
```
git clone https://github.com/confirado/apto-one-template.git
```

2. Enter the project directory
```
cd apto-one-template
```

3. Run the Docker install script
```
bin/install/docker.sh
```

4. Browse Apto.ONE
```
Frontend: 
http://localhost:8080

Administration: 
http://localhost:8080/backend

User: superadmin
Password: 12345678
```
