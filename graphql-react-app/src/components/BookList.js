import React from 'react';
import { useQuery, gql } from '@apollo/client';
import GradientText from './gradient_text/GradientText';
import "./BookList.css";

const GET_ALL_BOOKS = gql`
  query GetAllBooks {
    allBooks {
      id
      title
      authors
      genre
      publicationYear
      synopsis
    }
  }
`;

function BookTable() {
  const { loading, error, data } = useQuery(GET_ALL_BOOKS);

  if (loading) return <p>Loading</p>;
  if (error) return <p>Error</p>;

  return (
    <div>
      <h1>
      <GradientText
        colors={["#65DEF1", "#A8DCD1", "#DCE2C8", "#F96900", "#F17F29"]}
        animationSpeed={3}
      >
        Add Random Title Here
      </GradientText>
      </h1>
      <table>
        <thead>
          <tr>
            <th>Title</th>
            <th>Authors</th>
            <th>Genre</th>
            <th>Publication Year</th>
          </tr>
        </thead>
        <tbody>
          {data.allBooks.map((book) => (
            <tr key={book.id}>
              <td>{book.title}</td>
              <td>{book.authors}</td>
              <td>{book.genre}</td>
              <td>{book.publicationYear}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default BookTable;
