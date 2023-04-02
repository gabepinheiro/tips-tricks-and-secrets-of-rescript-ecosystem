import React from "react";

// <Cube cubeness={false} />
// <Cube cubeness={true} />
// <Cube cubeness={1.0} />

export const Cube = ({ cubeness }) => {
  const circleShape =
    typeof cubeness === "boolean" && cubeness === false ? (
      <circle
        cx="50"
        cy="50"
        r="40"
        stroke="black"
        stroke-width="3"
        fill="red"
      />
    ) : null;

  const cubeShape =
    typeof cubeness === "number" ||
    (typeof cubeness === "boolean" && cubeness === true) ? (
      <rect
        width={cubeness === true ? 100 : 100 * cubeness}
        height={cubeness === true ? 100 : 100 * cubeness}
        stroke="black"
        stroke-width="3"
        fill="red"
      />
    ) : null;

  return (
    <svg height="100" width="100">
      {circleShape}
      {cubeShape}
    </svg>
  );
};
