type
BITMAP_FILE_HEADER=record
	typ:word;  {the type of file. Signature BMP = 'BM'= 424Dh}
	file_size:longint;  {This gives the bitmap size in bytes}
	reserved:longint;  {00000000h}
	offset:longint; {This specifies the number of bytes from the
                         starting of the bitmap to where the actual
			data part starts}
                   end;


BITMAP_INFORMATION_HEADER=record
	structure_size:longint; {This specifies in bytes the size of
                                the header. This must be equal to 40.}
	width:longint; {This specifies the width of bitmap in pixels}
	height:longint;{This specifies the height of bitmap in pixels}
	number_of_color_planes:word;{This specifies the number of color planes}
	bits_per_pixel:word;{This specifies the bits per pixel i.e. the total number of colors in the bitmap}
	compression:longint; {value will be 0.}
	image_size:longint; {the size of image in pixels i.e. width x height}
	horizontal_pixels_per_meter:longint;{This specifies the 
                                            horizontal resolution of 
                                            image as pixels per meter}
	vertical_pixels_per_meter:longint;{This specifies the vertical resolution
					  of image as pixels per meter }
	colors_used:longint;{This specifies the colors used in the
			    bitmap. For 4-bit image this value is 0}
	important_colors:longint; {This specifies the minimum number of
				  important colors in the bitmap}
                        end;



(*	Since the colors are read as EGA colors therefore the colors must be
	converted into their respective VGA colors and so that the colors
	could be displayed as they are present in the bitmap. This is because
	the colors in a bitmap are stored in the form of EGA color palette.

	NOTE: There is one color in Microsoft's(R) EGA palette which is different
	from the one present with the palette given with the EGAVGA driver so it
	will always be displayed as an alternate color. *)

function ega2vga(color:word):word;
{
	switch(color)
	{
		case 11:
			return(YELLOW);

		case 14:
			return(LIGHTCYAN);

		case 12:
			return(LIGHTBLUE);

		case 1:
			return(RED);

		case 9:
			return(LIGHTRED);

		case 3:
			return(BROWN);

		case 4:
			return(BLUE);

		case 6:
			return(CYAN);

		case 7:
			return(DARKGRAY);

		case 8:
			return(LIGHTGRAY);

	}
	return(color);
}



//********************************************************************************************
procedure displaytransparent (x,y:integer;trans:word;file_name:string)
{
	FILE *bitmap_file;
	bitmap_header:BITMAP_FILE_HEADER ;
	bitmap_information:BITMAP_INFORMATION_HEADER ;
	screen_x,screen_y:integer;
	unsigned int check=0;
	unsigned char color,pixel_color,correction,type;

	if((bitmap_file=fopen(file_name,"rb"))==NULL) /* Opening bitmap file in
												read-only mode */
		return(FILE_READING_ERROR);

	/* Reading the bitmap file header */
	if(fread(&bitmap_header,sizeof(BITMAP_FILE_HEADER),1,bitmap_file)!=1)
		return(FILE_HEADER_READING_ERROR);

	/* Reading the bitmap information header */
	if(fread(&bitmap_information,sizeof(BITMAP_INFORMATION_HEADER),1,bitmap_file)!=1)
		return(INFO_HEADER_READING_ERROR);

	if((bitmap_header.type[0]!='B')||(bitmap_header.type[1]!='M'))
									/* Checking whether the file is a bitmap
									file i.e. checking if it is BM(BitMap) */
	{
		fclose(bitmap_file);
		return(BM_FILE_ERROR);
	}

	if(bitmap_information.compression!=0) 	/* Checking whether there is a
											RLE compression or not because
											this code does not support RLE
											compression */
	{
		fclose(bitmap_file);
		return(COMPRESSION_ERROR);
	}

	fseek(bitmap_file,bitmap_header.offset,SEEK_SET);
	/* Setting the file pointer to the offset part, where the actual data of
		the bitmap starts */


	if(bitmap_information.bits_per_pixel==1) /* Checking whether the bitamp is
												a 1-bit(monochrome) bitamp */
	{

		/* This is an error correction so that images of different resolution
		can be displayed. This correction has to be checked for every bitmap */
		correction=bitmap_information.width%32;
		if(correction!=0)
			correction=32-correction;

		/* Now there is one more issue that the bitmap must be read from the
			left bottom to right top so we are going to do exactly that. */
		for(screen_y=y+bitmap_information.height-1;screen_y>y-1;screen_y--)
		{
			for(screen_x=x;screen_x<x+bitmap_information.width+correction;screen_x++)
			{

				/* The data in the bitamp is stored in such a way theat each
				pixel will give its color value.

				Reading one byte of color data.

				NOTE: One byte of color data will contain eight bits of color
				values and these values must be displayed individually */
				pixel_color=fgetc(bitmap_file);

				if(++check<=bitmap_information.width)
					/* Displaying the first color data */
					if(monochrome2vga(pixel_color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(pixel_color>>7));

				screen_x++;

				if(++check<=bitmap_information.width)
				{
					/* Displaying the second color data */
					color=pixel_color<<1;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

				screen_x++;

				if(++check<=bitmap_information.width)

				{
					/* Displaying the third color data */
					color=pixel_color<<2;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

				screen_x++;

				if(++check<=bitmap_information.width)
				{
					/* Displaying the forth color data */
					color=pixel_color<<3;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

				screen_x++;

				if(++check<=bitmap_information.width)
				{
					/* Displaying the fifth color data */
					color=pixel_color<<4;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

				screen_x++;

				if(++check<=bitmap_information.width)
				{
					/* Displaying the sixth color data */
					color=pixel_color<<5;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

				screen_x++;

				if(++check<=bitmap_information.width)
				{
					/* Displaying the seventh color data */
					color=pixel_color<<6;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

				screen_x++;

				if(++check<=bitmap_information.width)
				{
					/* Displaying the eighth color data */
					color=pixel_color<<7;
					if(monochrome2vga(color>>7)!=trans)
					putpixel(screen_x,screen_y,monochrome2vga(color>>7));
				}

			}
			check=0;
		}
		type=1;
	}
	else
		if(bitmap_information.bits_per_pixel==4)  /* Checking whether the
												bitmap is a 4-bit(16 color)
												bitmap file */
		{

			correction=bitmap_information.width%8;
			if(correction!=0)
				correction=8-correction;

			/* Reading the bitmap from left bottom to right top */
			for(screen_y=y+bitmap_information.height-1;screen_y>y-1;screen_y--)
			{
				for(screen_x=x;screen_x<x+bitmap_information.width+correction;screen_x++)
				{
					/*	The data of the bitmap is stored in such a way
						that each pixel will give its color.

						NOTE: Since in the bitmap each color data is written
						in the form of a nibble(half of a byte) and we are
						reading the data in the form of a byte therefore the
						function will read exactly two color data and we are
						are going to have to get the two color data and use it
						seperatly to display each pixel.


						Reading one byte of color data. */
					pixel_color=fgetc(bitmap_file);

					if(++check<=bitmap_information.width)

						/* Displaying the first color data */
						if(ega2vga(pixel_color>>4)!=trans)
						putpixel(screen_x,screen_y,ega2vga(pixel_color>>4));

					screen_x++;

					if(++check<=bitmap_information.width)
					{
						/* Displaying the second color data */
						color=pixel_color<<4;
						if(ega2vga(color>>4)!=trans)
						putpixel(screen_x,screen_y,ega2vga(color>>4));
					}
				}
				check=0;
			}
			type=4;
		}
		else

		/* If the bitmap is not a 1-bit or a 4-bit image then an error message
		will be displayed */
		{
			fclose(bitmap_file);
			return(BITS_PER_PIXEL_ERROR);
		}

	/* Closing the bitmap file */
	fclose(bitmap_file);
	return(type);
}


/* End of macro defination __BITMAP_H */
#endif