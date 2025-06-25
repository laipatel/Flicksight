export const DirectorPage = async ({ params }) => {
  const director = (await params).directorSlug;
  return <div>Director [name]</div>;
};
