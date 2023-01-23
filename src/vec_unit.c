/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vec_unit.c                                         :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/01/23 01:40:14 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 02:26:23 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/vector.h"

t_vec	vec_unit(t_vec vec)
{
	return (vec / vec_length(vec));
}
