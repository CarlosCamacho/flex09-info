# ARTICLE

> Source: `dev/introl-c/Intro-C - Introl-C Compiler - Programs, Source, and Build Files.zip!DISK18.zip!DISK18.DSK!ARTICLE.TXT`  
> Method: FLEX disk extraction

The text below preserves the wording and formatter directives found in the historical source. OCR and media-decoding errors may remain.

more) == ERROR)
	{
	error("main buffer is full");
	return ERROR;
	}
	bufend=bufend+more;	/* expand buffer	*/
	}

	/*	move lines below the current line down	*/

	bufmovdn(bufp,bufpmax-1,length);
	bufpmax=bufpmax+length;
	return OK;
	}
