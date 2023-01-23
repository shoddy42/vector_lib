/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   vec_dot.c                                          :+:    :+:            */
/*                                                     +:+                    */
/*   By: wkonings <wkonings@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2023/01/23 00:40:34 by wkonings      #+#    #+#                 */
/*   Updated: 2023/01/23 02:05:21 by wkonings      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../include/vector.h"

double	dot(t_vec a, t_vec b)
{
	return ((a[X] * b[X]) + (a[Y] * b[Y]) + (a[Z] * b[Z]));
}
