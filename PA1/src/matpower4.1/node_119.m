function mpc = node_119
% These data are collected from:
% D. Zhang, Z. Fu, and L. Zhang, �An improved TS algorithm for lossminimum
% reconfiguration in large-scale distribution systems,?Elect.
% Power Syst. Res., vol. 77, pp. 685?94, 2007.
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
1	3	0.000000	0.000000	0	0	1	1	0	11	1	1.05	0.95
2	1	0.133840	0.101140	0	0	1	1	0	11	1	1.05	0.95
3	1	0.016214	0.011292	0	0	1	1	0	11	1	1.05	0.95
4	1	0.034315	0.021845	0	0	1	1	0	11	1	1.05	0.95
5	1	0.073016	0.063602	0	0	1	1	0	11	1	1.05	0.95
6	1	0.144200	0.068604	0	0	1	1	0	11	1	1.05	0.95
7	1	0.104470	0.061725	0	0	1	1	0	11	1	1.05	0.95
8	1	0.028547	0.011503	0	0	1	1	0	11	1	1.05	0.95
9	1	0.087560	0.051073	0	0	1	1	0	11	1	1.05	0.95
10	1	0.198200	0.106770	0	0	1	1	0	11	1	1.05	0.95
11	1	0.146800	0.075995	0	0	1	1	0	11	1	1.05	0.95
12	1	0.026040	0.018687	0	0	1	1	0	11	1	1.05	0.95
13	1	0.052100	0.023220	0	0	1	1	0	11	1	1.05	0.95
14	1	0.141900	0.117500	0	0	1	1	0	11	1	1.05	0.95
15	1	0.021870	0.028790	0	0	1	1	0	11	1	1.05	0.95
16	1	0.033370	0.026450	0	0	1	1	0	11	1	1.05	0.95
17	1	0.032430	0.025230	0	0	1	1	0	11	1	1.05	0.95
18	1	0.020234	0.011906	0	0	1	1	0	11	1	1.05	0.95
19	1	0.156940	0.078523	0	0	1	1	0	11	1	1.05	0.95
20	1	0.546290	0.351400	0	0	1	1	0	11	1	1.05	0.95
21	1	0.180310	0.164200	0	0	1	1	0	11	1	1.05	0.95
22	1	0.093167	0.054594	0	0	1	1	0	11	1	1.05	0.95
23	1	0.085180	0.039650	0	0	1	1	0	11	1	1.05	0.95
24	1	0.168100	0.095178	0	0	1	1	0	11	1	1.05	0.95
25	1	0.125110	0.150220	0	0	1	1	0	11	1	1.05	0.95
26	1	0.016030	0.024620	0	0	1	1	0	11	1	1.05	0.95
27	1	0.026030	0.024620	0	0	1	1	0	11	1	1.05	0.95
28	1	0.594560	0.522620	0	0	1	1	0	11	1	1.05	0.95
29	1	0.120620	0.059117	0	0	1	1	0	11	1	1.05	0.95
30	1	0.102380	0.099554	0	0	1	1	0	11	1	1.05	0.95
31	1	0.513400	0.318500	0	0	1	1	0	11	1	1.05	0.95
32	1	0.475250	0.456140	0	0	1	1	0	11	1	1.05	0.95
33	1	0.151430	0.136790	0	0	1	1	0	11	1	1.05	0.95
34	1	0.205380	0.083302	0	0	1	1	0	11	1	1.05	0.95
35	1	0.131600	0.093082	0	0	1	1	0	11	1	1.05	0.95
36	1	0.448400	0.369790	0	0	1	1	0	11	1	1.05	0.95
37	1	0.440520	0.321640	0	0	1	1	0	11	1	1.05	0.95
38	1	0.112540	0.055134	0	0	1	1	0	11	1	1.05	0.95
39	1	0.053963	0.038998	0	0	1	1	0	11	1	1.05	0.95
40	1	0.393050	0.342600	0	0	1	1	0	11	1	1.05	0.95
41	1	0.326740	0.278560	0	0	1	1	0	11	1	1.05	0.95
42	1	0.536260	0.240240	0	0	1	1	0	11	1	1.05	0.95
43	1	0.076247	0.066562	0	0	1	1	0	11	1	1.05	0.95
44	1	0.053520	0.039760	0	0	1	1	0	11	1	1.05	0.95
45	1	0.040328	0.031964	0	0	1	1	0	11	1	1.05	0.95
46	1	0.039653	0.020758	0	0	1	1	0	11	1	1.05	0.95
47	1	0.066195	0.042361	0	0	1	1	0	11	1	1.05	0.95
48	1	0.073904	0.051653	0	0	1	1	0	11	1	1.05	0.95
49	1	0.114770	0.057965	0	0	1	1	0	11	1	1.05	0.95
50	1	0.918370	1.205100	0	0	1	1	0	11	1	1.05	0.95
51	1	0.210300	0.146660	0	0	1	1	0	11	1	1.05	0.95
52	1	0.066680	0.056608	0	0	1	1	0	11	1	1.05	0.95
53	1	0.042207	0.040184	0	0	1	1	0	11	1	1.05	0.95
54	1	0.433740	0.283410	0	0	1	1	0	11	1	1.05	0.95
55	1	0.062100	0.026860	0	0	1	1	0	11	1	1.05	0.95
56	1	0.092460	0.088380	0	0	1	1	0	11	1	1.05	0.95
57	1	0.085188	0.055436	0	0	1	1	0	11	1	1.05	0.95
58	1	0.345300	0.332400	0	0	1	1	0	11	1	1.05	0.95
59	1	0.022500	0.016830	0	0	1	1	0	11	1	1.05	0.95
60	1	0.080551	0.049156	0	0	1	1	0	11	1	1.05	0.95
61	1	0.095860	0.090758	0	0	1	1	0	11	1	1.05	0.95
62	1	0.062920	0.047700	0	0	1	1	0	11	1	1.05	0.95
63	1	0.478800	0.463740	0	0	1	1	0	11	1	1.05	0.95
64	1	0.120940	0.052006	0	0	1	1	0	11	1	1.05	0.95
65	1	0.139110	0.100340	0	0	1	1	0	11	1	1.05	0.95
66	1	0.391780	0.193500	0	0	1	1	0	11	1	1.05	0.95
67	1	0.027741	0.026713	0	0	1	1	0	11	1	1.05	0.95
68	1	0.052814	0.025257	0	0	1	1	0	11	1	1.05	0.95
69	1	0.066890	0.038713	0	0	1	1	0	11	1	1.05	0.95
70	1	0.467500	0.395140	0	0	1	1	0	11	1	1.05	0.95
71	1	0.594850	0.239740	0	0	1	1	0	11	1	1.05	0.95
72	1	0.132500	0.084363	0	0	1	1	0	11	1	1.05	0.95
73	1	0.052699	0.022482	0	0	1	1	0	11	1	1.05	0.95
74	1	0.869790	0.614775	0	0	1	1	0	11	1	1.05	0.95
75	1	0.031349	0.029817	0	0	1	1	0	11	1	1.05	0.95
76	1	0.192390	0.122430	0	0	1	1	0	11	1	1.05	0.95
77	1	0.065750	0.045370	0	0	1	1	0	11	1	1.05	0.95
78	1	0.238150	0.223220	0	0	1	1	0	11	1	1.05	0.95
79	1	0.294550	0.162470	0	0	1	1	0	11	1	1.05	0.95
80	1	0.485570	0.437920	0	0	1	1	0	11	1	1.05	0.95
81	1	0.243530	0.183030	0	0	1	1	0	11	1	1.05	0.95
82	1	0.243530	0.183030	0	0	1	1	0	11	1	1.05	0.95
83	1	0.134250	0.119290	0	0	1	1	0	11	1	1.05	0.95
84	1	0.022710	0.027960	0	0	1	1	0	11	1	1.05	0.95
85	1	0.049513	0.026515	0	0	1	1	0	11	1	1.05	0.95
86	1	0.383780	0.257160	0	0	1	1	0	11	1	1.05	0.95
87	1	0.049640	0.020600	0	0	1	1	0	11	1	1.05	0.95
88	1	0.022473	0.011806	0	0	1	1	0	11	1	1.05	0.95
89	1	0.062930	0.042960	0	0	1	1	0	11	1	1.05	0.95
90	1	0.030670	0.034930	0	0	1	1	0	11	1	1.05	0.95
91	1	0.062530	0.066790	0	0	1	1	0	11	1	1.05	0.95
92	1	0.114570	0.081748	0	0	1	1	0	11	1	1.05	0.95
93	1	0.081292	0.066526	0	0	1	1	0	11	1	1.05	0.95
94	1	0.031733	0.015960	0	0	1	1	0	11	1	1.05	0.95
95	1	0.033320	0.060480	0	0	1	1	0	11	1	1.05	0.95
96	1	0.531280	0.224850	0	0	1	1	0	11	1	1.05	0.95
97	1	0.507030	0.367420	0	0	1	1	0	11	1	1.05	0.95
98	1	0.026390	0.011700	0	0	1	1	0	11	1	1.05	0.95
99	1	0.045990	0.030392	0	0	1	1	0	11	1	1.05	0.95
100	1	0.100660	0.047572	0	0	1	1	0	11	1	1.05	0.95
101	1	0.456480	0.350300	0	0	1	1	0	11	1	1.05	0.95
102	1	0.522560	0.449290	0	0	1	1	0	11	1	1.05	0.95
103	1	0.408430	0.168460	0	0	1	1	0	11	1	1.05	0.95
104	1	0.141480	0.134250	0	0	1	1	0	11	1	1.05	0.95
105	1	0.104430	0.066024	0	0	1	1	0	11	1	1.05	0.95
106	1	0.096793	0.083647	0	0	1	1	0	11	1	1.05	0.95
107	1	0.493920	0.419340	0	0	1	1	0	11	1	1.05	0.95
108	1	0.225380	0.135880	0	0	1	1	0	11	1	1.05	0.95
109	1	0.509210	0.387210	0	0	1	1	0	11	1	1.05	0.95
110	1	0.188500	0.173460	0	0	1	1	0	11	1	1.05	0.95
111	1	0.918030	0.898550	0	0	1	1	0	11	1	1.05	0.95
112	1	0.305080	0.215370	0	0	1	1	0	11	1	1.05	0.95
113	1	0.054380	0.040970	0	0	1	1	0	11	1	1.05	0.95
114	1	0.211140	0.192900	0	0	1	1	0	11	1	1.05	0.95
115	1	0.067009	0.053336	0	0	1	1	0	11	1	1.05	0.95
116	1	0.162070	0.090321	0	0	1	1	0	11	1	1.05	0.95
117	1	0.048785	0.029156	0	0	1	1	0	11	1	1.05	0.95
118	1	0.033900	0.018980	0	0	1	1	0	11	1	1.05	0.95
];mpc.bus(:,3:4) = mpc.bus(:,3:4)./10;  
%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	20	20	100	-100	1 1 1	100	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	2	0.0002975	0.0001074	0	100	100	100	0	0	1	-360	360
2	3	0.0002727	0.0000983	0	100	100	100	0	0	1	-360	360
2	4	0.0003719	0.0001339	0	100	100	100	0	0	1	-360	360
4	5	0.0001240	0.0004463	0	100	100	100	0	0	1	-360	360
5	6	0.0001240	0.0004463	0	100	100	100	0	0	1	-360	360
6	7	0.0001240	0.0001033	0	100	100	100	0	0	1	-360	360
7	8	0.0001488	0.0001157	0	100	100	100	0	0	1	-360	360
8	9	0.0001736	0.0005207	0	100	100	100	0	0	1	-360	360
2	10	0.0013719	0.0011107	0	100	100	100	0	0	1	-360	360
10	11	0.0009256	0.0006521	0	100	100	100	0	0	1	-360	360
11	12	0.0015455	0.0025868	0	100	100	100	0	0	1	-360	360
12	13	0.0011736	0.0012496	0	100	100	100	0	0	1	-360	360
13	14	0.0014876	0.0009752	0	100	100	100	0	0	1	-360	360
14	15	0.0012397	0.0003719	0	100	100	100	0	0	1	-360	360
15	16	0.0013223	0.0014876	0	100	100	100	0	0	1	-360	360
16	17	0.0012975	0.0014132	0	100	100	100	0	0	1	-360	360
11	18	0.0018017	0.0023554	0	100	100	100	0	0	1	-360	360
18	19	0.0009752	0.0015289	0	100	100	100	0	0	1	-360	360
19	20	0.0013223	0.0016198	0	100	100	100	0	0	1	-360	360
20	21	0.0009917	0.0015620	0	100	100	100	0	0	1	-360	360
21	22	0.0009917	0.0006521	0	100	100	100	0	0	1	-360	360
22	23	0.0116529	0.0059752	0	100	100	100	0	0	1	-360	360
23	24	0.0024215	0.0011140	0	100	100	100	0	0	1	-360	360
24	25	0.0010992	0.0008595	0	100	100	100	0	0	1	-360	360
25	26	0.0014711	0.0011074	0	100	100	100	0	0	1	-360	360
26	27	0.0014711	0.0011074	0	100	100	100	0	0	1	-360	360
4	28	0.0001240	0.0002446	0	100	100	100	0	0	1	-360	360
28	29	0.0000992	0.0002281	0	100	100	100	0	0	1	-360	360
29	30	0.0009917	0.0022860	0	100	100	100	0	0	1	-360	360
30	31	0.0017355	0.0020083	0	100	100	100	0	0	1	-360	360
31	32	0.0009917	0.0004463	0	100	100	100	0	0	1	-360	360
32	33	0.0014711	0.0019339	0	100	100	100	0	0	1	-360	360
33	34	0.0014711	0.0019339	0	100	100	100	0	0	1	-360	360
34	35	0.0012727	0.0013388	0	100	100	100	0	0	1	-360	360
30	36	0.0015455	0.0021570	0	100	100	100	0	0	1	-360	360
36	37	0.0010992	0.0008182	0	100	100	100	0	0	1	-360	360
29	38	0.0027273	0.0016033	0	100	100	100	0	0	1	-360	360
38	39	0.0025620	0.0016033	0	100	100	100	0	0	1	-360	360
39	40	0.0010744	0.0016033	0	100	100	100	0	0	1	-360	360
40	41	0.0023140	0.0012397	0	100	100	100	0	0	1	-360	360
41	42	0.0097521	0.0070248	0	100	100	100	0	0	1	-360	360
42	43	0.0034711	0.0020132	0	100	100	100	0	0	1	-360	360
43	44	0.0022314	0.0008033	0	100	100	100	0	0	1	-360	360
44	45	0.0028017	0.0010091	0	100	100	100	0	0	1	-360	360
45	46	0.0022314	0.0014702	0	100	100	100	0	0	1	-360	360
35	47	0.0017355	0.0011430	0	100	100	100	0	0	1	-360	360
47	48	0.0009917	0.0006521	0	100	100	100	0	0	1	-360	360
48	49	0.0012397	0.0008157	0	100	100	100	0	0	1	-360	360
49	50	0.0012397	0.0008157	0	100	100	100	0	0	1	-360	360
50	51	0.0019835	0.0013066	0	100	100	100	0	0	1	-360	360
51	52	0.0009917	0.0006521	0	100	100	100	0	0	1	-360	360
52	53	0.0033471	0.0012050	0	100	100	100	0	0	1	-360	360
53	54	0.0033471	0.0012050	0	100	100	100	0	0	1	-360	360
29	55	0.0032314	0.0011653	0	100	100	100	0	0	1	-360	360
55	56	0.0033554	0.0012074	0	100	100	100	0	0	1	-360	360
56	57	0.0033554	0.0012074	0	100	100	100	0	0	1	-360	360
57	58	0.0058347	0.0045132	0	100	100	100	0	0	1	-360	360
58	59	0.0027934	0.0010066	0	100	100	100	0	0	1	-360	360
59	60	0.0027934	0.0010066	0	100	100	100	0	0	1	-360	360
60	61	0.0017107	0.0006174	0	100	100	100	0	0	1	-360	360
61	62	0.0020413	0.0073736	0	100	100	100	0	0	1	-360	360
1	63	0.0002314	0.0003455	0	100	100	100	0	0	1	-360	360
63	64	0.0009669	0.0016661	0	100	100	100	0	0	1	-360	360
64	65	0.0021074	0.0007587	0	100	100	100	0	0	1	-360	360
65	66	0.0017355	0.0006273	0	100	100	100	0	0	1	-360	360
66	67	0.0031653	0.0011405	0	100	100	100	0	0	1	-360	360
67	68	0.0041653	0.0027298	0	100	100	100	0	0	1	-360	360
68	69	0.0033554	0.0012074	0	100	100	100	0	0	1	-360	360
69	70	0.0079504	0.0062893	0	100	100	100	0	0	1	-360	360
70	71	0.0013636	0.0004959	0	100	100	100	0	0	1	-360	360
71	72	0.0025041	0.0009025	0	100	100	100	0	0	1	-360	360
72	73	0.0025041	0.0009025	0	100	100	100	0	0	1	-360	360
73	74	0.0017025	0.0011901	0	100	100	100	0	0	1	-360	360
74	75	0.0019256	0.0006942	0	100	100	100	0	0	1	-360	360
75	76	0.0048843	0.0014653	0	100	100	100	0	0	1	-360	360
76	77	0.0010413	0.0003744	0	100	100	100	0	0	1	-360	360
64	78	0.0046198	0.0030471	0	100	100	100	0	0	1	-360	360
78	79	0.0015372	0.0010140	0	100	100	100	0	0	1	-360	360
79	80	0.0015372	0.0010140	0	100	100	100	0	0	1	-360	360
80	81	0.0021488	0.0011488	0	100	100	100	0	0	1	-360	360
81	82	0.0012727	0.0012231	0	100	100	100	0	0	1	-360	360
82	83	0.0019008	0.0010579	0	100	100	100	0	0	1	-360	360
83	84	0.0020826	0.0008760	0	100	100	100	0	0	1	-360	360
84	85	0.0014876	0.0012231	0	100	100	100	0	0	1	-360	360
79	86	0.0013223	0.0015041	0	100	100	100	0	0	1	-360	360
86	87	0.0016529	0.0019008	0	100	100	100	0	0	1	-360	360
87	88	0.0013223	0.0032479	0	100	100	100	0	0	1	-360	360
65	89	0.0055289	0.0019934	0	100	100	100	0	0	1	-360	360
89	90	0.0021983	0.0010140	0	100	100	100	0	0	1	-360	360
90	91	0.0021983	0.0010140	0	100	100	100	0	0	1	-360	360
91	92	0.0021983	0.0010140	0	100	100	100	0	0	1	-360	360
92	93	0.0021983	0.0010140	0	100	100	100	0	0	1	-360	360
93	94	0.0019256	0.0009504	0	100	100	100	0	0	1	-360	360
94	95	0.0040992	0.0011405	0	100	100	100	0	0	1	-360	360
91	96	0.0016198	0.0014876	0	100	100	100	0	0	1	-360	360
96	97	0.0016198	0.0014876	0	100	100	100	0	0	1	-360	360
97	98	0.0015421	0.0010083	0	100	100	100	0	0	1	-360	360
98	99	0.0006165	0.0026281	0	100	100	100	0	0	1	-360	360
1	100	0.0005165	0.0002190	0	100	100	100	0	0	1	-360	360
100	101	0.0012405	0.0019339	0	100	100	100	0	0	1	-360	360
101	102	0.0011132	0.0007339	0	100	100	100	0	0	1	-360	360
102	103	0.0019066	0.0009942	0	100	100	100	0	0	1	-360	360
103	104	0.0036942	0.0013289	0	100	100	100	0	0	1	-360	360
104	105	0.0013488	0.0004860	0	100	100	100	0	0	1	-360	360
105	106	0.0027273	0.0008182	0	100	100	100	0	0	1	-360	360
106	107	0.0012893	0.0004636	0	100	100	100	0	0	1	-360	360
107	108	0.0031562	0.0011355	0	100	100	100	0	0	1	-360	360
108	109	0.0013438	0.0004835	0	100	100	100	0	0	1	-360	360
109	110	0.0031562	0.0011355	0	100	100	100	0	0	1	-360	360
110	111	0.0020207	0.0007264	0	100	100	100	0	0	1	-360	360
110	112	0.0017256	0.0006223	0	100	100	100	0	0	1	-360	360
112	113	0.0019017	0.0006843	0	100	100	100	0	0	1	-360	360
100	114	0.0050430	0.0018149	0	100	100	100	0	0	1	-360	360
114	115	0.0015421	0.0010496	0	100	100	100	0	0	1	-360	360
115	116	0.0030843	0.0020331	0	100	100	100	0	0	1	-360	360
116	117	0.0033471	0.0030331	0	100	100	100	0	0	1	-360	360
117	118	0.0040413	0.0036198	0	100	100	100	0	0	1	-360	360

% 46	27	0.0043455	0.0024174	0	100	100	100	0	0	1	-360	360
% 17	27	0.0043455	0.0024099	0	100	100	100	0	0	1	-360	360
% 8	    24    0.0035306	0.0012719	0	100	100	100	0	0	1	-360	360
% 54	43	0.0039669	0.0014281	0	100	100	100	0	0	1	-360	360
% 62	49	0.0029752	0.0010711	0	100	100	100	0	0	1	-360	360
% 37	62	0.0047107	0.0047273	0	100	100	100	0	0	1	-360	360
% 9	40	0.0043802	0.0027669	0	100	100	100	0	0	1	-360	360
% 58	96	0.0032702	0.0011777	0	100	100	100	0	0	1	-360	360
% 73	91	0.0056198	0.0053554	0	100	100	100	0	0	1	-360	360
% 88	75	0.0033570	0.0012099	0	100	100	100	0	0	1	-360	360
% 99	77	0.0038231	0.0013835	0	100	100	100	0	0	1	-360	360
% 108	83	0.0053802	0.0019339	0	100	100	100	0	0	1	-360	360
% 105	86	0.0067149	0.0024174	0	100	100	100	0	0	1	-360	360
% 110	118	0.0058587	0.0021099	0	100	100	100	0	0	1	-360	360
% 25	35	0.0041322	0.0041322	0	100	100	100	0	0	1	-360	360
];
