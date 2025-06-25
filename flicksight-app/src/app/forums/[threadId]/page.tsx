export const Thread = async ({ params }) => {
  const thread = (await params).threadId;
  return <div>Thread [id]</div>;
};
