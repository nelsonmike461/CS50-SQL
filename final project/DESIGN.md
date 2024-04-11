# Design Document

By NELSON MICHAEL

Video overview: <URL https://youtu.be/hdOqXQzhMPo>

## Scope

The primary purpose of your database is to store and manage data about various aspects of music. This includes detailed information about artists, albums, tracks, genres, and media types. The database is designed to accommodate all artists, albums, tracks, genres, and media types that are added to it, providing a comprehensive repository of music-related data.

However, it’s important to note that the scope of the database is currently limited to these entities. It does not include data about concerts, record labels, or other aspects of the music industry. While these are significant elements of the music world, they fall outside the current scope of this database.

## Functional Requirements

The database is designed with several key functional requirements in mind. A user should be able to add new artists, albums, and tracks to the database. This allows for the continuous expansion and updating of the database as new music is released and new artists emerge.

In addition to this, the database should provide the functionality to find albums by a given artist, tracks in a given album, and tracks of a given genre. This enables users to navigate the database and find the specific information they are looking for.

However, it’s worth noting that the database does not currently support updating or deleting entities. Furthermore, it does not provide the functionality to find tracks by a given artist or in a given media type. These are potential areas for future development and enhancement of the database.

## Representation

### Entities

The database represents artists, albums, tracks, genres, and media types as distinct entities. Each entity has attributes appropriate to its type. For example, artists have a ‘name’ attribute, while albums have a ‘title’ attribute. The types and constraints for these attributes have been carefully chosen to ensure that the data is stored accurately and efficiently.

### Relationships

The database also represents the relationships between these entities. Each album is associated with one artist, and each track is associated with one album, one genre, and one media type. These relationships are represented by foreign keys in the albums and tracks tables, linking the entities together in a meaningful way.

## Optimizations

To enhance the performance of the database, indexes have been created on the ‘name’ attribute of each entity. This optimization speeds up searches, making the database more responsive to user queries. This is particularly beneficial for large databases, where search speed can significantly impact user experience.

## Limitations

While the database design serves its intended purpose well, there are some limitations. For instance, the design might not represent relationships between artists, such as collaborations or band memberships, very well. This is due to the current structure of the database, which associates each album with only one artist.

Additionally, the database does not support updating or deleting entities, or finding tracks by a given artist or in a given media type. These are functionalities that could be useful in certain scenarios, and their absence is a limitation of the current design.

These limitations could potentially be addressed in future versions of the database, expanding its capabilities and making it even more useful for managing and exploring music-related data.
