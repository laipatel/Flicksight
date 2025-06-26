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
import { Link } from '@heroui/link';

type Props = {};

export const Header = (props: Props) => {
  return (
    <Navbar
      isBordered
      className='flex justify-start align-center bg-background'
    >
      <Link href='/'>
        <NavbarBrand className='max-w-fit mr-6'>
          <Image
            alt='Flicksight Combination Mark Logo'
            src='/images/logos/flicksight-combination-mark.svg'
            className='w-40'
          />
        </NavbarBrand>
      </Link>
      <NavbarContent className='gap-x-4 align-center'>
        <NavbarItem>
          <Link
            href='/films'
            color='foreground'
            size='lg'
            underline='hover'
            className='px-6 py-3'
          >
            Films
          </Link>
        </NavbarItem>
        <NavbarItem>
          <Link
            href='/directors'
            color='foreground'
            size='lg'
            underline='hover'
            className='px-6 py-3'
          >
            Directors
          </Link>
        </NavbarItem>
        <NavbarItem>
          <Link
            href='/movements'
            color='foreground'
            size='lg'
            underline='hover'
            className='px-6 py-3'
          >
            Movements
          </Link>
        </NavbarItem>
        <NavbarItem>
          <Link
            href='/forums'
            color='foreground'
            size='lg'
            underline='hover'
            className='px-6 py-3'
          >
            Forums
          </Link>
        </NavbarItem>
      </NavbarContent>
      <NavbarContent justify='end'>
        <NavbarItem>
          <Link
            href='/auth'
            color='primary'
            size='lg'
            className='px-6 py-3'
            isBlock
          >
            Sign Up
          </Link>
        </NavbarItem>
      </NavbarContent>
    </Navbar>
  );
};
