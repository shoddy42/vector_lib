/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vec_length.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/01/23 01:39:35 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 01:39:45 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/vector.h"

double	vec_length_squared(t_vec vec)
{
	return (sqr(vec[X]) + sqr(vec[Y]) + sqr(vec[Z]));
}

double	vec_length(t_vec vec)
{
	return (sqrt(vec_length_squared(vec)));
}
