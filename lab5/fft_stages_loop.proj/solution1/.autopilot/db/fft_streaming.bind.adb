<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>fft_streaming</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>X_R_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>X_R.V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>1024</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>X_I_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>X_I.V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>1024</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>OUT_R_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>OUT_R.V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>1024</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>OUT_I_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>OUT_I.V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>1024</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>32</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>31</id>
						<name>Stage_R_0_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>C:\COMP4601\ch5-files</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[0].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>65</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>32</id>
						<name>Stage_R_1_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[1].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>66</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>33</id>
						<name>Stage_R_2_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[2].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>67</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>34</id>
						<name>Stage_R_3_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[3].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>68</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>35</id>
						<name>Stage_R_4_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[4].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>69</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>36</id>
						<name>Stage_R_5_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[5].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>70</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>37</id>
						<name>Stage_R_6_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[6].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>71</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>38</id>
						<name>Stage_R_7_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[7].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>72</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>39</id>
						<name>Stage_R_8_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[8].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>73</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_14">
				<Value>
					<Obj>
						<type>0</type>
						<id>40</id>
						<name>Stage_R_9_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_R[9].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>74</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_15">
				<Value>
					<Obj>
						<type>0</type>
						<id>41</id>
						<name>Stage_I_0_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[0].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>75</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_16">
				<Value>
					<Obj>
						<type>0</type>
						<id>42</id>
						<name>Stage_I_1_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[1].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>76</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_17">
				<Value>
					<Obj>
						<type>0</type>
						<id>43</id>
						<name>Stage_I_2_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[2].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>77</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>44</id>
						<name>Stage_I_3_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[3].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>78</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>45</id>
						<name>Stage_I_4_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[4].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>79</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>15</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>46</id>
						<name>Stage_I_5_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[5].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>80</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>16</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>47</id>
						<name>Stage_I_6_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[6].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>81</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>17</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>48</id>
						<name>Stage_I_7_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[7].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>82</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>18</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>49</id>
						<name>Stage_I_8_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[8].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>83</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>19</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>50</id>
						<name>Stage_I_9_V</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>71</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>71</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>Stage_I[9].V</originalName>
						<rtlName></rtlName>
						<coreName>RAM</coreName>
					</Obj>
					<bitwidth>22</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>84</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>20</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>51</id>
						<name>_ln75</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>75</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>75</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>86</item>
					<item>87</item>
					<item>88</item>
					<item>89</item>
					<item>90</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>21</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>52</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>92</item>
					<item>93</item>
					<item>94</item>
					<item>95</item>
					<item>96</item>
					<item>201</item>
					<item>202</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>22</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>53</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>98</item>
					<item>99</item>
					<item>100</item>
					<item>101</item>
					<item>102</item>
					<item>151</item>
					<item>152</item>
					<item>200</item>
					<item>203</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>23</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>54</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>104</item>
					<item>105</item>
					<item>106</item>
					<item>107</item>
					<item>108</item>
					<item>153</item>
					<item>154</item>
					<item>199</item>
					<item>204</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>24</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>55</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>110</item>
					<item>111</item>
					<item>112</item>
					<item>113</item>
					<item>114</item>
					<item>155</item>
					<item>156</item>
					<item>198</item>
					<item>205</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>25</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>56</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>116</item>
					<item>117</item>
					<item>118</item>
					<item>119</item>
					<item>120</item>
					<item>157</item>
					<item>158</item>
					<item>197</item>
					<item>206</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>26</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>122</item>
					<item>123</item>
					<item>124</item>
					<item>125</item>
					<item>126</item>
					<item>159</item>
					<item>160</item>
					<item>196</item>
					<item>207</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>27</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_32">
				<Value>
					<Obj>
						<type>0</type>
						<id>58</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>128</item>
					<item>129</item>
					<item>130</item>
					<item>131</item>
					<item>132</item>
					<item>161</item>
					<item>162</item>
					<item>195</item>
					<item>208</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>28</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_33">
				<Value>
					<Obj>
						<type>0</type>
						<id>59</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>134</item>
					<item>135</item>
					<item>136</item>
					<item>137</item>
					<item>138</item>
					<item>163</item>
					<item>164</item>
					<item>194</item>
					<item>209</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>29</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_34">
				<Value>
					<Obj>
						<type>0</type>
						<id>60</id>
						<name>_ln79</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>79</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>79</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>140</item>
					<item>141</item>
					<item>142</item>
					<item>143</item>
					<item>144</item>
					<item>165</item>
					<item>166</item>
					<item>193</item>
					<item>210</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>30</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_35">
				<Value>
					<Obj>
						<type>0</type>
						<id>61</id>
						<name>_ln81</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>81</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>81</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>9</count>
					<item_version>0</item_version>
					<item>146</item>
					<item>147</item>
					<item>148</item>
					<item>149</item>
					<item>150</item>
					<item>167</item>
					<item>168</item>
					<item>192</item>
					<item>211</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>31</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_36">
				<Value>
					<Obj>
						<type>0</type>
						<id>62</id>
						<name>_ln82</name>
						<fileName>fft_stages_loop.cpp</fileName>
						<fileDirectory>C:\COMP4601\ch5-files</fileDirectory>
						<lineNumber>82</lineNumber>
						<contextFuncName>fft_streaming</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\COMP4601\ch5-files</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_stages_loop.cpp</first>
											<second>fft_streaming</second>
										</first>
										<second>82</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>32</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>12</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_37">
				<Value>
					<Obj>
						<type>2</type>
						<id>64</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_38">
				<Value>
					<Obj>
						<type>2</type>
						<id>85</id>
						<name>bit_reverse25</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:bit_reverse25&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_39">
				<Value>
					<Obj>
						<type>2</type>
						<id>91</id>
						<name>fft_stage_126</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.126&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_40">
				<Value>
					<Obj>
						<type>2</type>
						<id>97</id>
						<name>fft_stage_127</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.127&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_41">
				<Value>
					<Obj>
						<type>2</type>
						<id>103</id>
						<name>fft_stage_128</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.128&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_42">
				<Value>
					<Obj>
						<type>2</type>
						<id>109</id>
						<name>fft_stage_129</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.129&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_43">
				<Value>
					<Obj>
						<type>2</type>
						<id>115</id>
						<name>fft_stage_130</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.130&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_44">
				<Value>
					<Obj>
						<type>2</type>
						<id>121</id>
						<name>fft_stage_131</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.131&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_45">
				<Value>
					<Obj>
						<type>2</type>
						<id>127</id>
						<name>fft_stage_132</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.132&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_46">
				<Value>
					<Obj>
						<type>2</type>
						<id>133</id>
						<name>fft_stage_133</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.133&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_47">
				<Value>
					<Obj>
						<type>2</type>
						<id>139</id>
						<name>fft_stage_134</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage.134&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_48">
				<Value>
					<Obj>
						<type>2</type>
						<id>145</id>
						<name>fft_stage35</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft_stage35&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_49">
				<Obj>
					<type>3</type>
					<id>63</id>
					<name>fft_streaming</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>32</count>
					<item_version>0</item_version>
					<item>31</item>
					<item>32</item>
					<item>33</item>
					<item>34</item>
					<item>35</item>
					<item>36</item>
					<item>37</item>
					<item>38</item>
					<item>39</item>
					<item>40</item>
					<item>41</item>
					<item>42</item>
					<item>43</item>
					<item>44</item>
					<item>45</item>
					<item>46</item>
					<item>47</item>
					<item>48</item>
					<item>49</item>
					<item>50</item>
					<item>51</item>
					<item>52</item>
					<item>53</item>
					<item>54</item>
					<item>55</item>
					<item>56</item>
					<item>57</item>
					<item>58</item>
					<item>59</item>
					<item>60</item>
					<item>61</item>
					<item>62</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>113</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_50">
				<id>65</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>31</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>66</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>32</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>67</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>33</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>68</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>34</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>69</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>35</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>70</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>36</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>71</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>37</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>72</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>38</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>73</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>39</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>74</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>40</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>75</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>41</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>76</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>42</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>77</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>43</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>78</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>44</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>79</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>45</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>80</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>46</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>81</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>47</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>82</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>48</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>83</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>49</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>84</id>
				<edge_type>1</edge_type>
				<source_obj>64</source_obj>
				<sink_obj>50</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>86</id>
				<edge_type>1</edge_type>
				<source_obj>85</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>87</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>88</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>89</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>90</id>
				<edge_type>1</edge_type>
				<source_obj>41</source_obj>
				<sink_obj>51</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>92</id>
				<edge_type>1</edge_type>
				<source_obj>91</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>93</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>94</id>
				<edge_type>1</edge_type>
				<source_obj>41</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>95</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>96</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>98</id>
				<edge_type>1</edge_type>
				<source_obj>97</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>99</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>100</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>101</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>102</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>104</id>
				<edge_type>1</edge_type>
				<source_obj>103</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>105</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>106</id>
				<edge_type>1</edge_type>
				<source_obj>43</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>107</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>108</id>
				<edge_type>1</edge_type>
				<source_obj>44</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>110</id>
				<edge_type>1</edge_type>
				<source_obj>109</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>111</id>
				<edge_type>1</edge_type>
				<source_obj>34</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>112</id>
				<edge_type>1</edge_type>
				<source_obj>44</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>113</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>114</id>
				<edge_type>1</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>116</id>
				<edge_type>1</edge_type>
				<source_obj>115</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>117</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>118</id>
				<edge_type>1</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>121</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>36</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>126</id>
				<edge_type>1</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>127</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>130</id>
				<edge_type>1</edge_type>
				<source_obj>47</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>131</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>134</id>
				<edge_type>1</edge_type>
				<source_obj>133</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>135</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>137</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>140</id>
				<edge_type>1</edge_type>
				<source_obj>139</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>141</id>
				<edge_type>1</edge_type>
				<source_obj>39</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>142</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>143</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_119">
				<id>144</id>
				<edge_type>1</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_120">
				<id>146</id>
				<edge_type>1</edge_type>
				<source_obj>145</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_121">
				<id>147</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_122">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_123">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_124">
				<id>150</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_125">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_126">
				<id>152</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_127">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_128">
				<id>154</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_129">
				<id>155</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_130">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_131">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_132">
				<id>158</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_133">
				<id>159</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_134">
				<id>160</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_135">
				<id>161</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_136">
				<id>162</id>
				<edge_type>1</edge_type>
				<source_obj>18</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_137">
				<id>163</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_138">
				<id>164</id>
				<edge_type>1</edge_type>
				<source_obj>20</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_139">
				<id>165</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_140">
				<id>166</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_141">
				<id>167</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_142">
				<id>168</id>
				<edge_type>1</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_143">
				<id>192</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_144">
				<id>193</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_145">
				<id>194</id>
				<edge_type>4</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_146">
				<id>195</id>
				<edge_type>4</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_147">
				<id>196</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_148">
				<id>197</id>
				<edge_type>4</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_149">
				<id>198</id>
				<edge_type>4</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_150">
				<id>199</id>
				<edge_type>4</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_151">
				<id>200</id>
				<edge_type>4</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_152">
				<id>201</id>
				<edge_type>4</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_153">
				<id>202</id>
				<edge_type>4</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_154">
				<id>203</id>
				<edge_type>4</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_155">
				<id>204</id>
				<edge_type>4</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_156">
				<id>205</id>
				<edge_type>4</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_157">
				<id>206</id>
				<edge_type>4</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_158">
				<id>207</id>
				<edge_type>4</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_159">
				<id>208</id>
				<edge_type>4</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_160">
				<id>209</id>
				<edge_type>4</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>59</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_161">
				<id>210</id>
				<edge_type>4</edge_type>
				<source_obj>59</source_obj>
				<sink_obj>60</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_162">
				<id>211</id>
				<edge_type>4</edge_type>
				<source_obj>60</source_obj>
				<sink_obj>61</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_163">
			<mId>1</mId>
			<mTag>fft_streaming</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>7208</mMinLatency>
			<mMaxLatency>8232</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_164">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>11</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_165">
						<type>0</type>
						<name>bit_reverse25_U0</name>
						<ssdmobj_id>51</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>4</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_166">
								<port class_id="29" tracking_level="1" version="0" object_id="_167">
									<name>X_R_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_168">
									<type>0</type>
									<name>bit_reverse25_U0</name>
									<ssdmobj_id>51</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_169">
								<port class_id_reference="29" object_id="_170">
									<name>X_I_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
							<item class_id_reference="28" object_id="_171">
								<port class_id_reference="29" object_id="_172">
									<name>OUT_R_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
							<item class_id_reference="28" object_id="_173">
								<port class_id_reference="29" object_id="_174">
									<name>OUT_I_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_168"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_175">
						<type>0</type>
						<name>fft_stage_126_U0</name>
						<ssdmobj_id>52</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_176">
								<port class_id_reference="29" object_id="_177">
									<name>X_R_0_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_178">
									<type>0</type>
									<name>fft_stage_126_U0</name>
									<ssdmobj_id>52</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_179">
								<port class_id_reference="29" object_id="_180">
									<name>X_I_0_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_178"></inst>
							</item>
							<item class_id_reference="28" object_id="_181">
								<port class_id_reference="29" object_id="_182">
									<name>Out_R_1_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_178"></inst>
							</item>
							<item class_id_reference="28" object_id="_183">
								<port class_id_reference="29" object_id="_184">
									<name>Out_I_1_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_178"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_185">
						<type>0</type>
						<name>fft_stage_127_U0</name>
						<ssdmobj_id>53</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_186">
								<port class_id_reference="29" object_id="_187">
									<name>X_R_1_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_188">
									<type>0</type>
									<name>fft_stage_127_U0</name>
									<ssdmobj_id>53</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_189">
								<port class_id_reference="29" object_id="_190">
									<name>X_I_1_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="28" object_id="_191">
								<port class_id_reference="29" object_id="_192">
									<name>Out_R_2_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="28" object_id="_193">
								<port class_id_reference="29" object_id="_194">
									<name>Out_I_2_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="28" object_id="_195">
								<port class_id_reference="29" object_id="_196">
									<name>W_real_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_188"></inst>
							</item>
							<item class_id_reference="28" object_id="_197">
								<port class_id_reference="29" object_id="_198">
									<name>W_imag_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_188"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_199">
						<type>0</type>
						<name>fft_stage_128_U0</name>
						<ssdmobj_id>54</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_200">
								<port class_id_reference="29" object_id="_201">
									<name>X_R_2_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_202">
									<type>0</type>
									<name>fft_stage_128_U0</name>
									<ssdmobj_id>54</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_203">
								<port class_id_reference="29" object_id="_204">
									<name>X_I_2_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_202"></inst>
							</item>
							<item class_id_reference="28" object_id="_205">
								<port class_id_reference="29" object_id="_206">
									<name>Out_R_3_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_202"></inst>
							</item>
							<item class_id_reference="28" object_id="_207">
								<port class_id_reference="29" object_id="_208">
									<name>Out_I_3_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_202"></inst>
							</item>
							<item class_id_reference="28" object_id="_209">
								<port class_id_reference="29" object_id="_210">
									<name>W_real_V55</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_202"></inst>
							</item>
							<item class_id_reference="28" object_id="_211">
								<port class_id_reference="29" object_id="_212">
									<name>W_imag_V47</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_202"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_213">
						<type>0</type>
						<name>fft_stage_129_U0</name>
						<ssdmobj_id>55</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_214">
								<port class_id_reference="29" object_id="_215">
									<name>X_R_3_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_216">
									<type>0</type>
									<name>fft_stage_129_U0</name>
									<ssdmobj_id>55</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_217">
								<port class_id_reference="29" object_id="_218">
									<name>X_I_3_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
							<item class_id_reference="28" object_id="_219">
								<port class_id_reference="29" object_id="_220">
									<name>Out_R_4_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
							<item class_id_reference="28" object_id="_221">
								<port class_id_reference="29" object_id="_222">
									<name>Out_I_4_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
							<item class_id_reference="28" object_id="_223">
								<port class_id_reference="29" object_id="_224">
									<name>W_real_V56</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
							<item class_id_reference="28" object_id="_225">
								<port class_id_reference="29" object_id="_226">
									<name>W_imag_V48</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_216"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_227">
						<type>0</type>
						<name>fft_stage_130_U0</name>
						<ssdmobj_id>56</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_228">
								<port class_id_reference="29" object_id="_229">
									<name>X_R_4_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_230">
									<type>0</type>
									<name>fft_stage_130_U0</name>
									<ssdmobj_id>56</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_231">
								<port class_id_reference="29" object_id="_232">
									<name>X_I_4_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
							<item class_id_reference="28" object_id="_233">
								<port class_id_reference="29" object_id="_234">
									<name>Out_R_5_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
							<item class_id_reference="28" object_id="_235">
								<port class_id_reference="29" object_id="_236">
									<name>Out_I_5_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
							<item class_id_reference="28" object_id="_237">
								<port class_id_reference="29" object_id="_238">
									<name>W_real_V57</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
							<item class_id_reference="28" object_id="_239">
								<port class_id_reference="29" object_id="_240">
									<name>W_imag_V49</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_230"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_241">
						<type>0</type>
						<name>fft_stage_131_U0</name>
						<ssdmobj_id>57</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_242">
								<port class_id_reference="29" object_id="_243">
									<name>X_R_5_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_244">
									<type>0</type>
									<name>fft_stage_131_U0</name>
									<ssdmobj_id>57</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_245">
								<port class_id_reference="29" object_id="_246">
									<name>X_I_5_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_244"></inst>
							</item>
							<item class_id_reference="28" object_id="_247">
								<port class_id_reference="29" object_id="_248">
									<name>Out_R_6_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_244"></inst>
							</item>
							<item class_id_reference="28" object_id="_249">
								<port class_id_reference="29" object_id="_250">
									<name>Out_I_6_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_244"></inst>
							</item>
							<item class_id_reference="28" object_id="_251">
								<port class_id_reference="29" object_id="_252">
									<name>W_real_V58</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_244"></inst>
							</item>
							<item class_id_reference="28" object_id="_253">
								<port class_id_reference="29" object_id="_254">
									<name>W_imag_V50</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_244"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_255">
						<type>0</type>
						<name>fft_stage_132_U0</name>
						<ssdmobj_id>58</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_256">
								<port class_id_reference="29" object_id="_257">
									<name>X_R_6_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_258">
									<type>0</type>
									<name>fft_stage_132_U0</name>
									<ssdmobj_id>58</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_259">
								<port class_id_reference="29" object_id="_260">
									<name>X_I_6_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_258"></inst>
							</item>
							<item class_id_reference="28" object_id="_261">
								<port class_id_reference="29" object_id="_262">
									<name>Out_R_7_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_258"></inst>
							</item>
							<item class_id_reference="28" object_id="_263">
								<port class_id_reference="29" object_id="_264">
									<name>Out_I_7_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_258"></inst>
							</item>
							<item class_id_reference="28" object_id="_265">
								<port class_id_reference="29" object_id="_266">
									<name>W_real_V59</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_258"></inst>
							</item>
							<item class_id_reference="28" object_id="_267">
								<port class_id_reference="29" object_id="_268">
									<name>W_imag_V51</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_258"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_269">
						<type>0</type>
						<name>fft_stage_133_U0</name>
						<ssdmobj_id>59</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_270">
								<port class_id_reference="29" object_id="_271">
									<name>X_R_7_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_272">
									<type>0</type>
									<name>fft_stage_133_U0</name>
									<ssdmobj_id>59</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_273">
								<port class_id_reference="29" object_id="_274">
									<name>X_I_7_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_272"></inst>
							</item>
							<item class_id_reference="28" object_id="_275">
								<port class_id_reference="29" object_id="_276">
									<name>Out_R_8_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_272"></inst>
							</item>
							<item class_id_reference="28" object_id="_277">
								<port class_id_reference="29" object_id="_278">
									<name>Out_I_8_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_272"></inst>
							</item>
							<item class_id_reference="28" object_id="_279">
								<port class_id_reference="29" object_id="_280">
									<name>W_real_V60</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_272"></inst>
							</item>
							<item class_id_reference="28" object_id="_281">
								<port class_id_reference="29" object_id="_282">
									<name>W_imag_V52</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_272"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_283">
						<type>0</type>
						<name>fft_stage_134_U0</name>
						<ssdmobj_id>60</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_284">
								<port class_id_reference="29" object_id="_285">
									<name>X_R_8_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_286">
									<type>0</type>
									<name>fft_stage_134_U0</name>
									<ssdmobj_id>60</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_287">
								<port class_id_reference="29" object_id="_288">
									<name>X_I_8_V</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_286"></inst>
							</item>
							<item class_id_reference="28" object_id="_289">
								<port class_id_reference="29" object_id="_290">
									<name>Out_R_9_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_286"></inst>
							</item>
							<item class_id_reference="28" object_id="_291">
								<port class_id_reference="29" object_id="_292">
									<name>Out_I_9_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_286"></inst>
							</item>
							<item class_id_reference="28" object_id="_293">
								<port class_id_reference="29" object_id="_294">
									<name>W_real_V61</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_286"></inst>
							</item>
							<item class_id_reference="28" object_id="_295">
								<port class_id_reference="29" object_id="_296">
									<name>W_imag_V53</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_286"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_297">
						<type>0</type>
						<name>fft_stage35_U0</name>
						<ssdmobj_id>61</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_298">
								<port class_id_reference="29" object_id="_299">
									<name>X_R_V9</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_300">
									<type>0</type>
									<name>fft_stage35_U0</name>
									<ssdmobj_id>61</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_301">
								<port class_id_reference="29" object_id="_302">
									<name>X_I_V18</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_300"></inst>
							</item>
							<item class_id_reference="28" object_id="_303">
								<port class_id_reference="29" object_id="_304">
									<name>Out_R_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_300"></inst>
							</item>
							<item class_id_reference="28" object_id="_305">
								<port class_id_reference="29" object_id="_306">
									<name>Out_I_V</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_300"></inst>
							</item>
							<item class_id_reference="28" object_id="_307">
								<port class_id_reference="29" object_id="_308">
									<name>W_real_V62</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_300"></inst>
							</item>
							<item class_id_reference="28" object_id="_309">
								<port class_id_reference="29" object_id="_310">
									<name>W_imag_V54</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_300"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>20</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_311">
						<type>1</type>
						<name>Stage_R_0_V</name>
						<ssdmobj_id>31</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_312">
							<port class_id_reference="29" object_id="_313">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_168"></inst>
						</source>
						<sink class_id_reference="28" object_id="_314">
							<port class_id_reference="29" object_id="_315">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_178"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_316">
						<type>1</type>
						<name>Stage_I_0_V</name>
						<ssdmobj_id>41</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_317">
							<port class_id_reference="29" object_id="_318">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_168"></inst>
						</source>
						<sink class_id_reference="28" object_id="_319">
							<port class_id_reference="29" object_id="_320">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_178"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_321">
						<type>1</type>
						<name>Stage_R_1_V</name>
						<ssdmobj_id>32</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_322">
							<port class_id_reference="29" object_id="_323">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_178"></inst>
						</source>
						<sink class_id_reference="28" object_id="_324">
							<port class_id_reference="29" object_id="_325">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_188"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_326">
						<type>1</type>
						<name>Stage_I_1_V</name>
						<ssdmobj_id>42</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_327">
							<port class_id_reference="29" object_id="_328">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_178"></inst>
						</source>
						<sink class_id_reference="28" object_id="_329">
							<port class_id_reference="29" object_id="_330">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_188"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_331">
						<type>1</type>
						<name>Stage_R_2_V</name>
						<ssdmobj_id>33</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_332">
							<port class_id_reference="29" object_id="_333">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_188"></inst>
						</source>
						<sink class_id_reference="28" object_id="_334">
							<port class_id_reference="29" object_id="_335">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_202"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_336">
						<type>1</type>
						<name>Stage_I_2_V</name>
						<ssdmobj_id>43</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_337">
							<port class_id_reference="29" object_id="_338">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_188"></inst>
						</source>
						<sink class_id_reference="28" object_id="_339">
							<port class_id_reference="29" object_id="_340">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_202"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_341">
						<type>1</type>
						<name>Stage_R_3_V</name>
						<ssdmobj_id>34</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_342">
							<port class_id_reference="29" object_id="_343">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_202"></inst>
						</source>
						<sink class_id_reference="28" object_id="_344">
							<port class_id_reference="29" object_id="_345">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_346">
						<type>1</type>
						<name>Stage_I_3_V</name>
						<ssdmobj_id>44</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_347">
							<port class_id_reference="29" object_id="_348">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_202"></inst>
						</source>
						<sink class_id_reference="28" object_id="_349">
							<port class_id_reference="29" object_id="_350">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_351">
						<type>1</type>
						<name>Stage_R_4_V</name>
						<ssdmobj_id>35</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_352">
							<port class_id_reference="29" object_id="_353">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</source>
						<sink class_id_reference="28" object_id="_354">
							<port class_id_reference="29" object_id="_355">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_230"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_356">
						<type>1</type>
						<name>Stage_I_4_V</name>
						<ssdmobj_id>45</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_357">
							<port class_id_reference="29" object_id="_358">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_216"></inst>
						</source>
						<sink class_id_reference="28" object_id="_359">
							<port class_id_reference="29" object_id="_360">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_230"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_361">
						<type>1</type>
						<name>Stage_R_5_V</name>
						<ssdmobj_id>36</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_362">
							<port class_id_reference="29" object_id="_363">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_230"></inst>
						</source>
						<sink class_id_reference="28" object_id="_364">
							<port class_id_reference="29" object_id="_365">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_244"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_366">
						<type>1</type>
						<name>Stage_I_5_V</name>
						<ssdmobj_id>46</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_367">
							<port class_id_reference="29" object_id="_368">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_230"></inst>
						</source>
						<sink class_id_reference="28" object_id="_369">
							<port class_id_reference="29" object_id="_370">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_244"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_371">
						<type>1</type>
						<name>Stage_R_6_V</name>
						<ssdmobj_id>37</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_372">
							<port class_id_reference="29" object_id="_373">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_244"></inst>
						</source>
						<sink class_id_reference="28" object_id="_374">
							<port class_id_reference="29" object_id="_375">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_258"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_376">
						<type>1</type>
						<name>Stage_I_6_V</name>
						<ssdmobj_id>47</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_377">
							<port class_id_reference="29" object_id="_378">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_244"></inst>
						</source>
						<sink class_id_reference="28" object_id="_379">
							<port class_id_reference="29" object_id="_380">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_258"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_381">
						<type>1</type>
						<name>Stage_R_7_V</name>
						<ssdmobj_id>38</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_382">
							<port class_id_reference="29" object_id="_383">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_258"></inst>
						</source>
						<sink class_id_reference="28" object_id="_384">
							<port class_id_reference="29" object_id="_385">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_272"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_386">
						<type>1</type>
						<name>Stage_I_7_V</name>
						<ssdmobj_id>48</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_387">
							<port class_id_reference="29" object_id="_388">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_258"></inst>
						</source>
						<sink class_id_reference="28" object_id="_389">
							<port class_id_reference="29" object_id="_390">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_272"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_391">
						<type>1</type>
						<name>Stage_R_8_V</name>
						<ssdmobj_id>39</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_392">
							<port class_id_reference="29" object_id="_393">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_272"></inst>
						</source>
						<sink class_id_reference="28" object_id="_394">
							<port class_id_reference="29" object_id="_395">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_286"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_396">
						<type>1</type>
						<name>Stage_I_8_V</name>
						<ssdmobj_id>49</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_397">
							<port class_id_reference="29" object_id="_398">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_272"></inst>
						</source>
						<sink class_id_reference="28" object_id="_399">
							<port class_id_reference="29" object_id="_400">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_286"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_401">
						<type>1</type>
						<name>Stage_R_9_V</name>
						<ssdmobj_id>40</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_402">
							<port class_id_reference="29" object_id="_403">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_286"></inst>
						</source>
						<sink class_id_reference="28" object_id="_404">
							<port class_id_reference="29" object_id="_405">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_300"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_406">
						<type>1</type>
						<name>Stage_I_9_V</name>
						<ssdmobj_id>50</ssdmobj_id>
						<ctype>1</ctype>
						<depth>0</depth>
						<bitwidth>0</bitwidth>
						<source class_id_reference="28" object_id="_407">
							<port class_id_reference="29" object_id="_408">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_286"></inst>
						</source>
						<sink class_id_reference="28" object_id="_409">
							<port class_id_reference="29" object_id="_410">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_300"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="34" tracking_level="1" version="0" object_id="_411">
		<states class_id="35" tracking_level="0" version="0">
			<count>22</count>
			<item_version>0</item_version>
			<item class_id="36" tracking_level="1" version="0" object_id="_412">
				<id>1</id>
				<operations class_id="37" tracking_level="0" version="0">
					<count>21</count>
					<item_version>0</item_version>
					<item class_id="38" tracking_level="1" version="0" object_id="_413">
						<id>31</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_414">
						<id>32</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_415">
						<id>33</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_416">
						<id>34</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_417">
						<id>35</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_418">
						<id>36</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_419">
						<id>37</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_420">
						<id>38</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_421">
						<id>39</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_422">
						<id>40</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_423">
						<id>41</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_424">
						<id>42</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_425">
						<id>43</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_426">
						<id>44</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_427">
						<id>45</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_428">
						<id>46</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_429">
						<id>47</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_430">
						<id>48</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_431">
						<id>49</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_432">
						<id>50</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_433">
						<id>51</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_434">
				<id>2</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_435">
						<id>51</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_436">
				<id>3</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_437">
						<id>52</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_438">
				<id>4</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_439">
						<id>52</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_440">
				<id>5</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_441">
						<id>53</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_442">
				<id>6</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_443">
						<id>53</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_444">
				<id>7</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_445">
						<id>54</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_446">
				<id>8</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_447">
						<id>54</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_448">
				<id>9</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_449">
						<id>55</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_450">
				<id>10</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_451">
						<id>55</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_452">
				<id>11</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_453">
						<id>56</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_454">
				<id>12</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_455">
						<id>56</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_456">
				<id>13</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_457">
						<id>57</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_458">
				<id>14</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_459">
						<id>57</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_460">
				<id>15</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_461">
						<id>58</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_462">
				<id>16</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_463">
						<id>58</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_464">
				<id>17</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_465">
						<id>59</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_466">
				<id>18</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_467">
						<id>59</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_468">
				<id>19</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_469">
						<id>60</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_470">
				<id>20</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_471">
						<id>60</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_472">
				<id>21</id>
				<operations>
					<count>1</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_473">
						<id>61</id>
						<stage>2</stage>
						<latency>2</latency>
					</item>
				</operations>
			</item>
			<item class_id_reference="36" object_id="_474">
				<id>22</id>
				<operations>
					<count>8</count>
					<item_version>0</item_version>
					<item class_id_reference="38" object_id="_475">
						<id>25</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_476">
						<id>26</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_477">
						<id>27</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_478">
						<id>28</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_479">
						<id>29</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_480">
						<id>30</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
					<item class_id_reference="38" object_id="_481">
						<id>61</id>
						<stage>1</stage>
						<latency>2</latency>
					</item>
					<item class_id_reference="38" object_id="_482">
						<id>62</id>
						<stage>1</stage>
						<latency>1</latency>
					</item>
				</operations>
			</item>
		</states>
		<transitions class_id="39" tracking_level="0" version="0">
			<count>21</count>
			<item_version>0</item_version>
			<item class_id="40" tracking_level="1" version="0" object_id="_483">
				<inState>1</inState>
				<outState>2</outState>
				<condition class_id="41" tracking_level="0" version="0">
					<id>-1</id>
					<sop class_id="42" tracking_level="0" version="0">
						<count>1</count>
						<item_version>0</item_version>
						<item class_id="43" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_484">
				<inState>2</inState>
				<outState>3</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_485">
				<inState>3</inState>
				<outState>4</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_486">
				<inState>4</inState>
				<outState>5</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_487">
				<inState>5</inState>
				<outState>6</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_488">
				<inState>6</inState>
				<outState>7</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_489">
				<inState>7</inState>
				<outState>8</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_490">
				<inState>8</inState>
				<outState>9</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_491">
				<inState>9</inState>
				<outState>10</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_492">
				<inState>10</inState>
				<outState>11</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_493">
				<inState>11</inState>
				<outState>12</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_494">
				<inState>12</inState>
				<outState>13</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_495">
				<inState>13</inState>
				<outState>14</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_496">
				<inState>14</inState>
				<outState>15</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_497">
				<inState>15</inState>
				<outState>16</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_498">
				<inState>16</inState>
				<outState>17</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_499">
				<inState>17</inState>
				<outState>18</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_500">
				<inState>18</inState>
				<outState>19</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_501">
				<inState>19</inState>
				<outState>20</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_502">
				<inState>20</inState>
				<outState>21</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
			<item class_id_reference="40" object_id="_503">
				<inState>21</inState>
				<outState>22</outState>
				<condition>
					<id>-1</id>
					<sop>
						<count>1</count>
						<item_version>0</item_version>
						<item>
							<count>0</count>
							<item_version>0</item_version>
						</item>
					</sop>
				</condition>
			</item>
		</transitions>
	</fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="45" tracking_level="0" version="0">
		<count>32</count>
		<item_version>0</item_version>
		<item class_id="46" tracking_level="0" version="0">
			<first>31</first>
			<second class_id="47" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>32</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>33</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>34</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>35</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>36</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>37</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>38</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>39</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>40</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>41</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>42</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>43</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>44</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>45</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>46</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>47</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>48</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>49</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>50</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>51</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>52</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>53</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>55</first>
			<second>
				<first>8</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>10</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>12</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>14</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>59</first>
			<second>
				<first>16</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>60</first>
			<second>
				<first>18</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>61</first>
			<second>
				<first>20</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>62</first>
			<second>
				<first>21</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="48" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="49" tracking_level="0" version="0">
			<first>63</first>
			<second class_id="50" tracking_level="0" version="0">
				<first>0</first>
				<second>21</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="51" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="52" tracking_level="1" version="0" object_id="_504">
			<region_name>fft_streaming</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>63</item>
			</basic_blocks>
			<nodes>
				<count>38</count>
				<item_version>0</item_version>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
				<item>29</item>
				<item>30</item>
				<item>31</item>
				<item>32</item>
				<item>33</item>
				<item>34</item>
				<item>35</item>
				<item>36</item>
				<item>37</item>
				<item>38</item>
				<item>39</item>
				<item>40</item>
				<item>41</item>
				<item>42</item>
				<item>43</item>
				<item>44</item>
				<item>45</item>
				<item>46</item>
				<item>47</item>
				<item>48</item>
				<item>49</item>
				<item>50</item>
				<item>51</item>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="53" tracking_level="0" version="0">
		<count>31</count>
		<item_version>0</item_version>
		<item class_id="54" tracking_level="0" version="0">
			<first>82</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>31</item>
			</second>
		</item>
		<item>
			<first>86</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>90</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>33</item>
			</second>
		</item>
		<item>
			<first>94</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>98</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>102</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>36</item>
			</second>
		</item>
		<item>
			<first>106</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>110</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>38</item>
			</second>
		</item>
		<item>
			<first>114</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>39</item>
			</second>
		</item>
		<item>
			<first>118</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>40</item>
			</second>
		</item>
		<item>
			<first>122</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>41</item>
			</second>
		</item>
		<item>
			<first>126</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>42</item>
			</second>
		</item>
		<item>
			<first>130</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>43</item>
			</second>
		</item>
		<item>
			<first>134</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>44</item>
			</second>
		</item>
		<item>
			<first>138</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>45</item>
			</second>
		</item>
		<item>
			<first>142</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>46</item>
			</second>
		</item>
		<item>
			<first>146</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>47</item>
			</second>
		</item>
		<item>
			<first>150</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>154</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>158</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>50</item>
			</second>
		</item>
		<item>
			<first>162</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>174</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>57</item>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>186</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>53</item>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>198</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>55</item>
				<item>55</item>
			</second>
		</item>
		<item>
			<first>210</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>54</item>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>222</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>58</item>
				<item>58</item>
			</second>
		</item>
		<item>
			<first>234</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>59</item>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>246</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>60</item>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>258</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>61</item>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>272</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>52</item>
				<item>52</item>
			</second>
		</item>
		<item>
			<first>280</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>51</item>
				<item>51</item>
			</second>
		</item>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="56" tracking_level="0" version="0">
		<count>20</count>
		<item_version>0</item_version>
		<item class_id="57" tracking_level="0" version="0">
			<first>Stage_I_0_V_alloca_fu_122</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>41</item>
			</second>
		</item>
		<item>
			<first>Stage_I_1_V_alloca_fu_126</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>42</item>
			</second>
		</item>
		<item>
			<first>Stage_I_2_V_alloca_fu_130</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>43</item>
			</second>
		</item>
		<item>
			<first>Stage_I_3_V_alloca_fu_134</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>44</item>
			</second>
		</item>
		<item>
			<first>Stage_I_4_V_alloca_fu_138</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>45</item>
			</second>
		</item>
		<item>
			<first>Stage_I_5_V_alloca_fu_142</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>46</item>
			</second>
		</item>
		<item>
			<first>Stage_I_6_V_alloca_fu_146</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>47</item>
			</second>
		</item>
		<item>
			<first>Stage_I_7_V_alloca_fu_150</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>48</item>
			</second>
		</item>
		<item>
			<first>Stage_I_8_V_alloca_fu_154</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>49</item>
			</second>
		</item>
		<item>
			<first>Stage_I_9_V_alloca_fu_158</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>50</item>
			</second>
		</item>
		<item>
			<first>Stage_R_0_V_alloca_fu_82</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>31</item>
			</second>
		</item>
		<item>
			<first>Stage_R_1_V_alloca_fu_86</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>32</item>
			</second>
		</item>
		<item>
			<first>Stage_R_2_V_alloca_fu_90</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>33</item>
			</second>
		</item>
		<item>
			<first>Stage_R_3_V_alloca_fu_94</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>34</item>
			</second>
		</item>
		<item>
			<first>Stage_R_4_V_alloca_fu_98</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>35</item>
			</second>
		</item>
		<item>
			<first>Stage_R_5_V_alloca_fu_102</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>36</item>
			</second>
		</item>
		<item>
			<first>Stage_R_6_V_alloca_fu_106</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>37</item>
			</second>
		</item>
		<item>
			<first>Stage_R_7_V_alloca_fu_110</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>38</item>
			</second>
		</item>
		<item>
			<first>Stage_R_8_V_alloca_fu_114</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>39</item>
			</second>
		</item>
		<item>
			<first>Stage_R_9_V_alloca_fu_118</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>40</item>
			</second>
		</item>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>11</count>
		<item_version>0</item_version>
		<item>
			<first>grp_bit_reverse25_fu_280</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>51</item>
				<item>51</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage35_fu_258</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>61</item>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_126_fu_272</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>52</item>
				<item>52</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_127_fu_186</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>53</item>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_128_fu_210</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>54</item>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_129_fu_198</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>55</item>
				<item>55</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_130_fu_162</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>56</item>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_131_fu_174</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>57</item>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_132_fu_222</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>58</item>
				<item>58</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_133_fu_234</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>59</item>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>grp_fft_stage_134_fu_246</first>
			<second>
				<count>2</count>
				<item_version>0</item_version>
				<item>60</item>
				<item>60</item>
			</second>
		</item>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="58" tracking_level="0" version="0">
		<count>18</count>
		<item_version>0</item_version>
		<item class_id="59" tracking_level="0" version="0">
			<first class_id="60" tracking_level="0" version="0">
				<first>W_imag_V</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V47</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V48</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>55</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V49</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V50</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V51</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>58</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V52</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V53</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_imag_V54</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>61</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>53</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V55</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>54</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V56</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>55</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V57</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>56</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V58</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>57</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V59</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>58</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V60</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>59</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V61</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>60</item>
			</second>
		</item>
		<item>
			<first>
				<first>W_real_V62</first>
				<second>100</second>
			</first>
			<second>
				<count>1</count>
				<item_version>0</item_version>
				<item>61</item>
			</second>
		</item>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="61" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="62" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="63" tracking_level="0" version="0">
			<first>1</first>
			<second>RAM</second>
		</item>
		<item>
			<first>2</first>
			<second>RAM</second>
		</item>
		<item>
			<first>3</first>
			<second>RAM</second>
		</item>
		<item>
			<first>4</first>
			<second>RAM</second>
		</item>
	</port2core>
	<node2core>
		<count>20</count>
		<item_version>0</item_version>
		<item>
			<first>31</first>
			<second>RAM</second>
		</item>
		<item>
			<first>32</first>
			<second>RAM</second>
		</item>
		<item>
			<first>33</first>
			<second>RAM</second>
		</item>
		<item>
			<first>34</first>
			<second>RAM</second>
		</item>
		<item>
			<first>35</first>
			<second>RAM</second>
		</item>
		<item>
			<first>36</first>
			<second>RAM</second>
		</item>
		<item>
			<first>37</first>
			<second>RAM</second>
		</item>
		<item>
			<first>38</first>
			<second>RAM</second>
		</item>
		<item>
			<first>39</first>
			<second>RAM</second>
		</item>
		<item>
			<first>40</first>
			<second>RAM</second>
		</item>
		<item>
			<first>41</first>
			<second>RAM</second>
		</item>
		<item>
			<first>42</first>
			<second>RAM</second>
		</item>
		<item>
			<first>43</first>
			<second>RAM</second>
		</item>
		<item>
			<first>44</first>
			<second>RAM</second>
		</item>
		<item>
			<first>45</first>
			<second>RAM</second>
		</item>
		<item>
			<first>46</first>
			<second>RAM</second>
		</item>
		<item>
			<first>47</first>
			<second>RAM</second>
		</item>
		<item>
			<first>48</first>
			<second>RAM</second>
		</item>
		<item>
			<first>49</first>
			<second>RAM</second>
		</item>
		<item>
			<first>50</first>
			<second>RAM</second>
		</item>
	</node2core>
</syndb>
</boost_serialization>

