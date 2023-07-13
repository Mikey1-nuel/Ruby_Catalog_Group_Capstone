<a name="readme-top"></a>

<div align="center">
  <h1><b>Catalog of Things📇</b></h3>
</div>

<h2>Ruby Group Capstone Project</h1>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Tools ](#tools-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [Authors](#authors)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

# 📖 Catalog of things<a name="about-project"></a>

Introducing The Catalog of Things Ruby, a cutting-edge Ruby web application designed to provide an immersive experience into the world of backend engineering with Ruby. This innovative project harnesses the power of Terminal, Databaes and JSON data structures.

The Catalog of Things Ruby App is a console-based application that allows users to manage and catalogue various items such as books, music albums, movies, and games. It provides functionalities to add items, list items by category or attribute, and perform actions such as archiving. The application follows a specific logic based on a UML class diagram and implements unit tests for all implemented methods. It features a user-friendly interface, data persistence through JSON files, and a corresponding database schema for efficient storage and retrieval of item data.

### How to build the "Catalog of Things " App

- 1. Use Ruby.
- 2. Learn how to apply S.O.L.I.D In OPP.
- 3. Use Rspec.
- 4. Use PostgreSQL.
- 5. Implementation of UML Diagrams

## 🛠 Walk through <a name="walk-through"></a>

<ul>
  <li>
    See the <a href="https://github.com/microverseinc/curriculum-ruby/blob/main/group-capstone/catalog_of_my_things.md">Project Requirement</a>
  </li>
  <li>
    See work through <a href="https://drive.google.com/file/d/1BTVBMFnLqs1d26gob5RajJ9KT050EnPR/view?usp=sharing">Video</a>
  </li>
</ul>

 
## 🛠 Built With <a name="built-with"></a>

**_feature-One_**

- Imeplementation of Basic Framework linters error free.
- Implementation of <a href="https://github.com/microverseinc/curriculum-tools-copy-projects">Kanban Board</a>
- Implementation of <a href="https://github.com/microverseinc/curriculum-transversal-skills/blob/main/git-github/articles/gitflow.md">Gitflow</a>

**_feature-two_**

- Implementation of <a href="https://rspec.info/">Testing dependencies</a>


### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client Side / UI</summary>
  <ul>
    <li><a href="">Terminal</a></li>
  </ul>
</details>

<details>
  <summary>Server Side / Back-End</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>


### Tools <a name="tools"></a>

  <details>
    <summary>Code Convention, Code Analysis</summary>
      <ul>
        <li><a href="https://rubocop.org/">Rubocop</a></li>
        <li><a href="https://rsepc.info/">Rspec</a></li>
      </ul>
  </details>
  
  <details>
    <summary>Version Control</summary>
      <ul>
        <li><a href="https://github.com/features/actions">Github Actions</a></li>
        <li><a href="https://git-scm.com/">Git</a></li>
      </ul>
  </details>
  
  <details>
    <summary>IDE, Desktop Apps, Other Tools</summary>
      <ul>
        <li><a href="https://code.visualstudio.com/">Visual Studio Code</a></li>
        <li><a href="https://desktop.github.com/">Github Desktop</a></li>
        <li><a href="https://git-scm.com/">Git Bash</a></li>
      </ul>
  </details>

## Key Features <a name="key-features"></a>

### Logic
 
 - Each class from the UML class diagram is implemented in a separate .rb file.

 - All associations and aggregations between classes are implemented.

 - Properties visible in the diagram are defined and set up in the constructor method.

 - Custom setter methods are created for 1-to-many relationship properties.

 - Required methods like add_item, can_be_archived?, and move_to_archive are implemented.

 - Custom can_be_archived? methods are implemented in child classes (Book, MusicAlbum, Movie, Game).

 - Unit tests are provided for all implemented methods.
   

### User Interface

  - Console-based user interface provided in the main.rb file.
    
  - Users can choose options, provide parameters, and quit the app.
    
  - Options include listing books, music albums, movies, and games, as well as genres, labels, authors, and sources.
    
  - Options to add a book, music album, movie, or game are available.
    
  - Data is preserved by saving collections in .json files.
    

### Database

- schema.sql file with tables analogical to the classes' structure in the app.
  
- All properties and associations from the parent Item class added as table columns in child classes' tables.
  
- Enables efficient storage and retrieval of item data.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- git version 2.38.x
- Ruby version  3.2.2
- IDE
- browser (chrome, firefox, edge, safari)

### Setup

Clone this repository to your desired folder:

```sh
  cd my folder
  git clone git@github.com:Mikey1-nuel/Ruby_Catalog_Group_Capstone.git
```

### Install

Install this project with:

```sh
  cd Ruby_Catalog_Group_Capston
  bundle install
```

### Usage

To run the project, execute the following command:

```sh
Ruby main.rb
```

### Run tests

To run tests, run the following command:
Run Github Actions Test

```sh
  rspec spec/
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Authors

👤 **Isabella Otoo**
- GitHub: [@githubhandle](https://github.com/Bellagirl-maker)
- Twitter: [@twitterhandle](https://twitter.com/isabella_otoo)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/isabella-otoo)

👤 **Mikey1-nuel**

- GitHub: [Githubhandle](https://github.com/Mikey1-nuel)
- Twitter: [Twitterhandle](https://twitter.com/Mikey_nuel)
- LinkedIn: [LinkedInhandle](https://www.linkedin.com/in/emmanuel-nwoye-5915141b8/)

👤 **Tom Daniel**

- GitHub: [@tomdan-ai](https://github.com/tomdan-ai)
- Twitter: [@TomUdoh1](https://twitter.com/TomUdoh1)
- LinkedIn: [tomdaniel](https://www.linkedin.com/in/tomudoh)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Addition of more Catalog.**

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Mikey1-nuel/Ruby_Catalog_Group_Capstone/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project give a star to this repository.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

We would like to thank the Microverse full-stack curriculum for the inspiration and guidance.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is under [MIT](https://github.com/tomdan-ai/Travalers-space-hub/blob/development/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
