import React, { useEffect, useState } from 'react';

let counter = 0;

const Table = ({ tableNumber, caption, children }) => {
  const setTableNumber = useState(0);

  useEffect(() => {
    counter += 1;
    setTableNumber(counter);
  }, []);

  return (
    <figure>
      <figcaption>Table {tableNumber}: {caption}</figcaption>
      <table>{children}</table>
    </figure>
  );
};

export default Table;
