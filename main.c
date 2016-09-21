/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/03/21 12:58:12 by acazuc            #+#    #+#             */
/*   Updated: 2016/03/21 17:09:34 by acazuc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <stdio.h>
# include <fcntl.h>

char	*ft_strdup(char *str);

int		main(void)
{
	char *str = "mdr";
	printf("%s\n", str);
	printf("%x\n", ft_strdup("oui"));
	printf("%s\n", ft_strdup(str));
}
