import sys
     def csv_diff(file_f,file_g):
        #file_f = sys.argv[1]
        #file_g = sys.argv[2]
        set_f = set()
        set_g = set()
        with open(file_f) as f:
            line = f.readline().strip()
            while line:
                set_f.add(line)
                line = f.readline().strip()
        with open(file_g) as g:
            line = g.readline().strip()
            while line:
                set_g.add(line)
                line = g.readline().strip()
        diff = set_f - set_g

        # print set_f
        # print set_g
        # print diff
        if diff:
            #print "Data mismatch between the files"
            return False
        else:
            #print " Data Matches "
            return True