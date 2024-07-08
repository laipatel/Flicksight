import type { Metadata } from 'next';
import { AppRouterCacheProvider } from '@mui/material-nextjs/v14-appRouter';

export const metadata: Metadata = {
  title: 'Flicksight',
  description:
    'A web application that offers comprehensive film summaries and detailed analyses, aiming to enrich understanding of film and cinema.',
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>
        <AppRouterCacheProvider>{children}</AppRouterCacheProvider>
      </body>
    </html>
  );
}
