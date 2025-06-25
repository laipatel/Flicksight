export const FilmPage = async ({ params }) => {
  const film = (await params).filmSlug;
  return <div>Film [name]</div>;
};
