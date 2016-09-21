void	ft_cat(int fd);
char	*ft_strdup(char *str);

#include <stdio.h>
# include <fcntl.h>

#include <unistd.h>
int main()
{
	char *str = "xD";
	printf("testing..\n");
	char *ret = ft_strdup(str);
	write(1, "tested\n", 7);
	printf("%lu\n", (unsigned long)ret);
	fflush(stdout);
	printf("%s\n", ret);
	/*int fd = open("test.c", O_RDONLY);
	if (!fd)
		return (0);
	ft_cat(6);*/
	return (0);
}
