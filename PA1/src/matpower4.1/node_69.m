function mpc = case_test
%CASE9    Power flow data for 33 node distribution system.
%   Please see CASEFORMAT for details on the case file format.
%   Vn = 12.66 kV. Sn = 1 MVA 
%   Obtained from: M. E. Baran and F. F. Wu, "Network Reconfiguration in Distribution Systems for Loss Reduction 
% and Load Balancing,"IEEE Transactions on PWRD, Vol. 4, No. 2, pp. 1401-1407, April 1989.
%% MATPOWER Case Format : Version 1
mpc.version = 2;
%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
1	3	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
2	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
3	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
4	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
5	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
6	1	0.00260000000000000	0.00220000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
7	1	0.0404000000000000	0.0300000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
8	1	0.0750000000000000	0.0540000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
9	1	0.0300000000000000	0.0220000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
10	1	0.0280000000000000	0.0190000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
11	1	0.145000000000000	0.104000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
12	1	0.145000000000000	0.104000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
13	1	0.00800000000000000	0.00500000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
14	1	0.00800000000000000	0.00500000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
15	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
16	1	0.0450000000000000	0.0300000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
17	1	0.0600000000000000	0.0350000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
18	1	0.0600000000000000	0.0350000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
19	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
20	1	0.00100000000000000	0.000600000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
21	1	0.114000000000000	0.0810000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
22	1	0.00500000000000000	0.00350000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
23	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
24	1	0.0280000000000000	0.0200000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
25	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
26	1	0.0140000000000000	0.0100000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
27	1	0.0140000000000000	0.0100000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
28	1	0.0260000000000000	0.0186000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
29	1	0.0260000000000000	0.0186000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
30	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
31	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
32	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
33	1	0.0140000000000000	0.0100000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
34	1	0.0195000000000000	0.0140000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
35	1	0.00600000000000000	0.00400000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
36	1	0.0260000000000000	0.0185500000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
37	1	0.0260000000000000	0.0185500000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
38	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
39	1	0.0240000000000000	0.0170000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
40	1	0.0240000000000000	0.0170000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
41	1	0.00120000000000000	0.00100000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
42	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
43	1	0.00600000000000000	0.00430000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
44	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
45	1	0.0392200000000000	0.0263000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
46	1	0.0392200000000000	0.0263000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
47	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
48	1	0.0790000000000000	0.0564000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
49	1	0.384700000000000	0.274500000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
50	1	0.384700000000000	0.274500000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
51	1	0.0405000000000000	0.0283000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
52	1	0.00360000000000000	0.00270000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
53	1	0.00435000000000000	0.00350000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
54	1	0.0264000000000000	0.0190000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
55	1	0.0240000000000000	0.0172000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
56	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
57	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
58	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
59	1	0.100000000000000	0.0720000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
60	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
61	1	1.24400000000000	0.888000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
62	1	0.0320000000000000	0.0230000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
63	1	0	0	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
64	1	0.227000000000000	0.162000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
65	1	0.0590000000000000	0.0420000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
66	1	0.0180000000000000	0.0130000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
67	1	0.0180000000000000	0.0130000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
68	1	0.0280000000000000	0.0200000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
69	1	0.0280000000000000	0.0200000000000000	0	0	1	1	0	12.6600000000000	1	1.05000000000000	0.950000000000000
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	300	-300	1	1	1	100	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	2	0.000500000000000000	0.00120000000000000	0	100	100	100	0	0	1	-360	360
2	3	0.000500000000000000	0.00120000000000000	0	100	100	100	0	0	1	-360	360
3	4	0.00150000000000000	0.00360000000000000	0	100	100	100	0	0	1	-360	360
4	5	0.0251000000000000	0.0294000000000000	0	100	100	100	0	0	1	-360	360
5	6	0.366000000000000	0.186400000000000	0	100	100	100	0	0	1	-360	360
6	7	0.381000000000000	0.194100000000000	0	100	100	100	0	0	1	-360	360
7	8	0.0922000000000000	0.0470000000000000	0	100	100	100	0	0	1	-360	360
8	9	0.0493000000000000	0.0251000000000000	0	100	100	100	0	0	1	-360	360
9	10	0.819000000000000	0.270700000000000	0	100	100	100	0	0	1	-360	360
10	11	0.187200000000000	0.0619000000000000	0	100	100	100	0	0	1	-360	360
11	12	0.711400000000000	0.235100000000000	0	100	100	100	0	0	1	-360	360
12	13	1.03000000000000	0.340000000000000	0	100	100	100	0	0	1	-360	360
13	14	1.04400000000000	0.340000000000000	0	100	100	100	0	0	1	-360	360
14	15	1.05800000000000	0.349600000000000	0	100	100	100	0	0	1	-360	360
15	16	0.196600000000000	0.0650000000000000	0	100	100	100	0	0	1	-360	360
16	17	0.374400000000000	0.123800000000000	0	100	100	100	0	0	1	-360	360
17	18	0.00470000000000000	0.00160000000000000	0	100	100	100	0	0	1	-360	360
18	19	0.327600000000000	0.108300000000000	0	100	100	100	0	0	1	-360	360
19	20	0.210600000000000	0.0690000000000000	0	100	100	100	0	0	1	-360	360
20	21	0.341600000000000	0.112900000000000	0	100	100	100	0	0	1	-360	360
21	22	0.0140000000000000	0.00460000000000000	0	100	100	100	0	0	1	-360	360
22	23	0.159100000000000	0.0526000000000000	0	100	100	100	0	0	1	-360	360
23	24	0.346300000000000	0.114500000000000	0	100	100	100	0	0	1	-360	360
24	25	0.748800000000000	0.247500000000000	0	100	100	100	0	0	1	-360	360
25	26	0.308900000000000	0.102100000000000	0	100	100	100	0	0	1	-360	360
26	27	0.173200000000000	0.0572000000000000	0	100	100	100	0	0	1	-360	360
3	28	0.00440000000000000	0.0108000000000000	0	100	100	100	0	0	1	-360	360
28	29	0.0640000000000000	0.156500000000000	0	100	100	100	0	0	1	-360	360
29	30	0.397800000000000	0.131500000000000	0	100	100	100	0	0	1	-360	360
30	31	0.0702000000000000	0.0232000000000000	0	100	100	100	0	0	1	-360	360
31	32	0.351000000000000	0.116000000000000	0	100	100	100	0	0	1	-360	360
32	33	0.839000000000000	0.281600000000000	0	100	100	100	0	0	1	-360	360
33	34	1.70800000000000	0.564600000000000	0	100	100	100	0	0	1	-360	360
34	35	1.47400000000000	0.487300000000000	0	100	100	100	0	0	1	-360	360
3	36	0.00440000000000000	0.0108000000000000	0	100	100	100	0	0	1	-360	360
36	37	0.0640000000000000	0.156500000000000	0	100	100	100	0	0	1	-360	360
37	38	0.105300000000000	0.123000000000000	0	100	100	100	0	0	1	-360	360
38	39	0.0304000000000000	0.0355000000000000	0	100	100	100	0	0	1	-360	360
39	40	0.00180000000000000	0.00210000000000000	0	100	100	100	0	0	1	-360	360
40	41	0.728300000000000	0.850900000000000	0	100	100	100	0	0	1	-360	360
41	42	0.310000000000000	0.362300000000000	0	100	100	100	0	0	1	-360	360
42	43	0.0410000000000000	0.0478000000000000	0	100	100	100	0	0	1	-360	360
43	44	0.00920000000000000	0.0116000000000000	0	100	100	100	0	0	1	-360	360
44	45	0.108900000000000	0.137300000000000	0	100	100	100	0	0	1	-360	360
45	46	0.000900000000000000	0.00120000000000000	0	100	100	100	0	0	1	-360	360
4	47	0.00340000000000000	0.00840000000000000	0	100	100	100	0	0	1	-360	360
47	48	0.0851000000000000	0.208300000000000	0	100	100	100	0	0	1	-360	360
48	49	0.289800000000000	0.709100000000000	0	100	100	100	0	0	1	-360	360
49	50	0.0822000000000000	0.201100000000000	0	100	100	100	0	0	1	-360	360
8	51	0.0928000000000000	0.0473000000000000	0	100	100	100	0	0	1	-360	360
51	52	0.331900000000000	0.114000000000000	0	100	100	100	0	0	1	-360	360
9	53	0.174000000000000	0.0886000000000000	0	100	100	100	0	0	1	-360	360
53	54	0.203000000000000	0.103400000000000	0	100	100	100	0	0	1	-360	360
54	55	0.284200000000000	0.144700000000000	0	100	100	100	0	0	1	-360	360
55	56	0.281300000000000	0.143300000000000	0	100	100	100	0	0	1	-360	360
56	57	1.59000000000000	0.533700000000000	0	100	100	100	0	0	1	-360	360
57	58	0.783700000000000	0.263000000000000	0	100	100	100	0	0	1	-360	360
58	59	0.304200000000000	0.100600000000000	0	100	100	100	0	0	1	-360	360
59	60	0.386100000000000	0.117200000000000	0	100	100	100	0	0	1	-360	360
60	61	0.507500000000000	0.258500000000000	0	100	100	100	0	0	1	-360	360
61	62	0.0974000000000000	0.0496000000000000	0	100	100	100	0	0	1	-360	360
62	63	0.145000000000000	0.0738000000000000	0	100	100	100	0	0	1	-360	360
63	64	0.710500000000000	0.361900000000000	0	100	100	100	0	0	1	-360	360
64	65	1.04100000000000	0.530200000000000	0	100	100	100	0	0	1	-360	360
11	66	0.201200000000000	0.0611000000000000	0	100	100	100	0	0	1	-360	360
66	67	0.00470000000000000	0.00140000000000000	0	100	100	100	0	0	1	-360	360
12	68	0.739400000000000	0.244400000000000	0	100	100	100	0	0	1	-360	360
68	69	0.00470000000000000	0.00160000000000000	0	100	100	100	0	0	1	-360	360


%       15	   69	1.0000	1.0000	0	100	100	100	0	0	1	-360	360;
%       27	   54	1.0000	1.0000	0	100	100	100	0	0	1	-360	360;
%       39	   48	2.0000	2.0000	0	100	100	100	0	0	1	-360	360;
% 	 %11	   66	0.5000	0.5000	0	100	100	100	0	0	1	-360	360;
%      %13	   20	0.5000	0.5000	0	100	100	100	0	0	1	-360	360;



];mpc.branch(:,3:4) = mpc.branch(:,3:4)./(12.66^2);