'use client';

import { HeroUIProvider } from '@heroui/system';
import { ThemeProvider } from 'next-themes';
import { ReactNode } from 'react';
import { useRouter } from 'next/navigation';

declare module '@react-types/shared' {
  interface RouterConfig {
    routerOptions: NonNullable<
      Parameters<ReturnType<typeof useRouter>['push']>[1]
    >;
  }
}

type Props = {};

export const Providers = ({ children }: { children: ReactNode }) => {
  const router = useRouter();
  return (
    <HeroUIProvider navigate={router.push}>
      <ThemeProvider attribute='class' defaultTheme='dark'>
        {children}
      </ThemeProvider>
    </HeroUIProvider>
  );
};
