export const MovementPage = async ({ params }) => {
  const director = (await params).movementSlug;
  return <div>Movement [name]</div>;
};
