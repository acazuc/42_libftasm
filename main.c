/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acazuc <acazuc@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/03/21 12:58:12 by acazuc            #+#    #+#             */
/*   Updated: 2016/03/21 13:53:19 by acazuc           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# include <fcntl.h>

void	ft_cat(int fd);

int		main(void)
{
	ft_cat(open("main.c", O_RDONLY));
}
