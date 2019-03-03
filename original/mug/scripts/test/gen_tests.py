def create_test(idx, criteria):
    with open('tc{}.sh'.format(idx), 'w') as f:
        f.write('#!/bin/bash\n')
        f.write('cd $1\n')
        f.write('mkdir -p trajectory\n')
        f.write('grep "{}" outputs/* > trajectory/tj{}\n'.format(criteria, idx))
        f.write(
            'cmp --silent $DM_HOME/output/original/mug/oracle/tj{0} trajectory/tj{0}'.format(idx))


criteria_list = []

with open('criteria') as f:
    criteria_list = map(str.rstrip, f.readlines())

idx = 0

for criteria in criteria_list:
    idx += 1
    create_test(idx, criteria)
