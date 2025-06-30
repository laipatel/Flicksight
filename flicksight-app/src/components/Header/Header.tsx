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
    <Navbar isBordered className='bg-background' maxWidth='xl'>
      <Link href='/'>
        <NavbarBrand className='max-w-fit mr-6 justify-start'>
          <Image
            alt='Flicksight Combination Mark Logo'
            src='/images/logos/flicksight-combination-mark.svg'
            className='w-40'
          />
        </NavbarBrand>
      </Link>
      <NavbarContent className='gap-x-4' justify='start'>
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
          <Button
            href='/auth'
            color='primary'
            size='lg'
            variant='shadow'
            as={Link}
          >
            Sign Up
          </Button>
        </NavbarItem>
      </NavbarContent>
    </Navbar>
  );
};
