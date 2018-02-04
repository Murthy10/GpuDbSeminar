import pygal

'''
Query	MapD cold	MapD warm	Postgres 9.6 cold	Postgres 9.6 warm	Postgres 10 cold	Postgres 10 warm
1	203	41	51031	8318	51254	8856
2	456	223	56713	13766	54547	11818
3	742	412	167725	110866	150368	87748
4	1431	840	195999	158339	169925	110240
5	663	25	974	1	483	418
6	5756	149	57356	15346	56113	12968
7	119	86	85488	44576	81477	34537
8	315	115	88437	45927	82393	35443
9	243	131	56728	15463	54953	13267

line_chart = pygal.Bar(print_values=True, print_values_position='top')
line_chart.title = 'Query 1'
line_chart.x_labels = ['cold', 'warm', 'cold', 'warm', 'cold', 'warm']
line_chart.add('MapD', [203, 41, None, None, None, None])
line_chart.add('Postgres 9.6', [None, None, 51031, 8318, None, None])
line_chart.add('Postgres 10', [None, None, None, None, 51254, 8856])
# line_chart.add('', [203, 41, 51031, 8318, 51254, 8856])
line_chart.render_to_png('query_1.png')
'''

def chart_print(title, mapd, postgres_9_6, postgres_10, file_name):
    line_chart = pygal.Bar(print_values=True, print_values_position='top', y_title='milliseconds')
    #line_chart.title = title
    line_chart.x_labels = ['cold', 'warm', 'cold', 'warm', 'cold', 'warm']
    line_chart.add('MapD CE 3.0', mapd)
    line_chart.add('PostgreSQL 9.6', postgres_9_6)
    line_chart.add('PostgreSQL 10', postgres_10)
    line_chart.render_to_png(file_name)


chart_print('Query 1', [203, 41, None, None, None, None], [None, None, 51031, 8318, None, None], [None, None, None, None, 51254, 8856], 'query_1.png')

chart_print('Query 2', [456, 223, None, None, None, None], [None, None, 56713, 13766, None, None], [None, None, None, None, 54547, 11818], 'query_2.png')

chart_print('Query 3', [742, 412, None, None, None, None], [None, None, 167725, 110866, None, None], [None, None, None, None, 150368, 87748], 'query_3.png')

chart_print('Query 4', [1431, 840, None, None, None, None], [None, None, 195999, 158339, None, None], [None, None, None, None, 169925, 110240], 'query_4.png')

chart_print('Query 5', [663, 25, None, None, None, None], [None, None, 974, 1, None, None], [None, None, None, None, 483, 418], 'query_5.png')

chart_print('Query 6', [5756, 149, None, None, None, None], [None, None, 57356, 15346, None, None], [None, None, None, None, 56113, 12968], 'query_6.png')

chart_print('Query 7', [119, 86, None, None, None, None], [None, None, 85488, 44576, None, None], [None, None, None, None, 81477, 34537], 'query_7.png')

chart_print('Query 8', [315, 115, None, None, None, None], [None, None, 85488, 45927, None, None], [None, None, None, None, 82393, 35443], 'query_8.png')

chart_print('Query 9', [243, 131, None, None, None, None], [None, None, 56728, 15463, None, None], [None, None, None, None, 54953, 13267], 'query_9.png')