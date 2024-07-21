import type { Metadata } from 'next';
import './globals.css';
import { NextUIProvider } from '@nextui-org/react';

export const metadata: Metadata = {
  title: 'Flicksight',
  description:
    'Flicksight is a web application providing in-depth film summaries, analyses, and discussions.',
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang='en'>
      <body>
        <NextUIProvider>
          <main className='dark text-foreground bg-background'>{children}</main>
        </NextUIProvider>
      </body>
    </html>
  );
}
