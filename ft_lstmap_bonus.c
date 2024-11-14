/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mez-zahi <mez-zahi@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/31 12:54:27 by mez-zahi          #+#    #+#             */
/*   Updated: 2024/11/08 14:26:35 by mez-zahi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_list;
	t_list	*cellule;

	if (!lst || !f || !del)
		return (NULL);
	new_list = NULL;
	cellule = NULL;
	while (lst)
	{
		cellule = ft_lstnew(f(lst->content));
		if (!cellule)
		{
			ft_lstclear(&new_list, del);
			return (NULL);
		}
		ft_lstadd_back(&new_list, cellule);
		lst = lst->next;
	}
	return (new_list);
}
