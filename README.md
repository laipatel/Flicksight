
# Flicksight

Flicksight is a modern web application designed to provide in-depth film summaries, analyses, and discussions. It aims to help users understand various facets of films, from plot and themes to character arcs and directorial styles. This platform is designed for all film fans including casual moviegoers and hardcore film enthusiasts.

## Features

- **Film Summaries and Analyses**: Detailed breakdowns of films, including plot summaries, themes, motifs, character arcs, and technical aspects.
- **Director Pages**: Profiles of directors with their filmography and analysis of their directorial styles.
- **Discussion Forums**: Nested threads with a voting system for user engagement.
- **User Profiles**: Customizable user profiles displaying activity, bookmarks, and ratings.

## Technology Stack

- **Frontend**: Next.js with TypeScript
- **Backend**: Node.js with Prisma ORM
- **Database**: PostgreSQL
- **Styling**: Material UI
- **Authentication**: Lucia

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Node.js
- Docker

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/flicksight.git
    cd flicksight
    ```

2. Set up the environment variables:
    ```plaintext
    POSTGRES_USER=flicksight_admin
    POSTGRES_PASSWORD=securepassword
    POSTGRES_DB=flicksight
    LUCIA_SECRET=your_secret_key
    NODE_ENV=development
    ```

3. Add the `.env` file to `.gitignore` to keep it secure:
    ```plaintext
    .env
    ```

4. Start PostgreSQL using Docker:
    ```bash
    docker-compose up -d
    ```

5. Install dependencies:
    ```bash
    npm install
    ```

6. Run Prisma migrations to set up the database schema:
    ```bash
    npx prisma migrate dev --name init
    ```

7. Generate the Prisma client:
    ```bash
    npx prisma generate
    ```

8. Start the development server:
    ```bash
    npm run dev
    ```

## Usage

Once the development server is running, you can access the application at `http://localhost:3000`. From there, you can explore film summaries, director pages, and participate in discussions.

## Contributing

We welcome contributions to Flicksight! Follow these steps to contribute:

1. Fork the repository.
2. Create a new branch for your feature or bugfix:
    ```bash
    git checkout -b feature-name
    ```
3. Make your changes and commit them with a descriptive message:
    ```bash
    git commit -m "Add feature-name: description"
    ```
4. Push your changes to your forked repository:
    ```bash
    git push origin feature-name
    ```
5. Create a pull request with a description of your changes.

## License

Flicksight is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for more details.

## Acknowledgements

We would like to thank all the contributors and the open-source community for their valuable input and support.

