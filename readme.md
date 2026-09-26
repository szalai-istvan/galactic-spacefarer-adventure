Task 1 – Spacefarer Data Model
Define a data model for the Spacefarer entity, including cosmic fields like stardust collection, wormhole
navigation skill, origin planet, and spacesuit color. Imagine relationships with intergalactic departments and
positions.

Task 2 – Cosmic Service Definition
Create a CAP service definition for the Galactic Spacefarer entity. Include CRUD operations, and make sure
that the service is protected from cosmic invaders.
Task 3 – Cosmic Event Handlers
Implement the following cosmic event handlers using the @Before and @After events in the service
definition when a new spacefaring candidate is created:
§ @Before event: Prepare the spacefaring candidate for their cosmic journey by validating and
enhancing their stardust collection and wormhole navigation skills.
§ @After event: After a successful launch, send a cosmic notification email to the newly created
spacefarer, congratulating them on starting their adventurous journey among the stars.
Task 4 – Galactic List Report Fiori Application
Create a List Report Fiori application that displays a list of all galactic spacefarers with their stardust
collection status and spacesuit color. Ensure that the application supports sorting, filtering, and pagination
across the SAP galaxy.
Task 5 – Galactic Object Page Fiori Application
Extend the Fiori application to include a Cosmic Object Page that provides detailed information about a
selected spacefarer. This page should allow users to edit cosmic details like stardust collection and
spacesuit color.
Additional information
§ Use the SAP SQLite star cluster as the database for local development.
§ In real-time, only authorized users should be able to access the application. Also, users from
Planet X must not get access to spacefarers’ data from Planet Y.
§ Check out the “SAP Fiori Tools - Application Modeler” VS Code extension as it might help you with
creating the UI of the application.
§ Host a GitHub repository to store and version control your Galactic Adventure Project.
Feel free to take advantage of your creativity with the Data Model and Service Definition for the Spacefarers.
Good luck on your Galactic Adventure! �

# Getting Started

Welcome to your new CAP project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`readme.md` | this getting started guide

## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start with your domain model, in a CDS file in `db/`

## Learn More

Learn more at <https://cap.cloud.sap>.
