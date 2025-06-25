import { HeroUIProvider } from '@heroui/system';
import { ReactNode } from 'react';

type Props = {};

export const Providers = ({ children }: { children: ReactNode }) => {
  return <HeroUIProvider>{children}</HeroUIProvider>;
};
