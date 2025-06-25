import {
  Navbar,
  NavbarBrand,
  NavbarContent,
  NavbarItem,
  NavbarMenuToggle,
  NavbarMenu,
  NavbarMenuItem,
} from '@heroui/navbar';
import { Image } from '@heroui/image';
import { Button } from '@heroui/button';

type Props = {};

export const Header = (props: Props) => {
  return (
    <Navbar
      isBordered
      className='flex justify-start align-center bg-background'
    >
      <NavbarBrand className='w-40'>
        <Image
          alt='Flicksight Combination Mark Logo'
          src='/images/logos/flicksight-combination-mark.svg'
          className='w-40'
        />
      </NavbarBrand>
      <NavbarContent>
        <NavbarItem>
          <Button variant='light' size='lg'>
            Films
          </Button>
        </NavbarItem>
        <NavbarItem>
          <Button variant='light' size='lg'>
            Directors
          </Button>
        </NavbarItem>
        <NavbarItem>
          <Button variant='light' size='lg'>
            Movements
          </Button>
        </NavbarItem>
        <NavbarItem>
          <Button variant='light' size='lg'>
            Forums
          </Button>
        </NavbarItem>
      </NavbarContent>
    </Navbar>
  );
};
