all:

test:
	XML_CATALOG_FILES="`pwd`/sgml-lib/catalog.xml" LIBC_FATAL_STDERR_=1 MALLOC_CHECK_=3 perl find_ascii_quotes.pl index.html
