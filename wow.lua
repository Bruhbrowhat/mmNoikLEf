local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + ((i - 1) % #LUAOBFUSACTOR_KEY), 1 + ((i - 1) % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
do
	local v0 = tonumber;
	local v1 = string.byte;
	local v2 = string.char;
	local v3 = string.sub;
	local v4 = string.gsub;
	local v5 = string.rep;
	local v6 = table.concat;
	local v7 = table.insert;
	local v8 = math.ldexp;
	local v9 = getfenv or function()
		return _ENV;
	end;
	local v10 = setmetatable;
	local v11 = pcall;
	local v12 = select;
	local v13 = unpack or table.unpack;
	local v14 = tonumber;
	local function v15(v16, v17, ...)
		local v18 = 1;
		local v19;
		v16 = v4(v3(v16, 5), LUAOBFUSACTOR_DECRYPT_STR_0("\233\139", "\199\165\107\82\46\180\218"), function(v30)
			if (v1(v30, 2) == 79) then
				v19 = v0(v3(v30, 1, 1));
				return "";
			else
				local v65 = v2(v0(v30, 16));
				if v19 then
					local v76 = v5(v65, v19);
					v19 = nil;
					return v76;
				else
					return v65;
				end
			end
		end);
		local function v20(v31, v32, v33)
			if v33 then
				local v66 = 0 + 0;
				local v67;
				while true do
					if ((1176 - (499 + (2048 - 1371))) == v66) then
						v67 = (v31 / ((3 - 1) ^ (v32 - 1))) % ((1 + 1) ^ (((v33 - 1) - (v32 - (1282 - (496 + 785)))) + (2 - 1)));
						return v67 - (v67 % (848 - (681 + 166)));
					end
				end
			else
				local v68 = 0 + 0;
				local v69;
				while true do
					if (v68 == (0 + 0)) then
						v69 = (2 + 0) ^ (v32 - (4 - 3));
						return (((v31 % (v69 + v69)) >= v69) and (1646 - (79 + (2771 - (13 + 1192))))) or 0;
					end
				end
			end
		end
		local function v21()
			local v38 = v1(v16, v18, v18);
			v18 = v18 + 1;
			return v38;
		end
		local function v22()
			local v39, v40 = v1(v16, v18, v18 + (7 - 5));
			v18 = v18 + (5 - 3);
			return (v40 * (1 + 255)) + v39;
		end
		local function v23()
			local v41, v42, v43, v44 = v1(v16, v18, v18 + 3 + 0);
			v18 = v18 + 3 + 1;
			return (v44 * (214733 + 2612600 + 13949883)) + (v43 * (170908 - 105372)) + (v42 * (1408 - (767 + 385))) + v41;
		end
		local function v24()
			local v45 = v23();
			local v46 = v23();
			local v47 = 1 + 0;
			local v48 = (v20(v46, 1, (23 + 34) - 37) * ((1 + 1) ^ (758 - (666 + 60)))) + v45;
			local v49 = v20(v46, 21, 1128 - (102 + 995));
			local v50 = ((v20(v46, 23 + 9) == (1841 - (234 + 139 + 1467))) and -1) or 1;
			if (v49 == (0 - (0 - 0))) then
				if (v48 == (0 + 0)) then
					return v50 * (0 + 0);
				else
					v49 = 1;
					v47 = 0 + 0 + 0;
				end
			elseif (v49 == (524 + 1523)) then
				return ((v48 == (0 + 0)) and (v50 * ((3 - 2) / (0 + 0)))) or (v50 * NaN);
			end
			return v8(v50, v49 - (328 + 695)) * (v47 + (v48 / ((5 - 3) ^ (5 + 47))));
		end
		local function v25(v34)
			local v51 = 0;
			local v52;
			local v53;
			while true do
				if (v51 == (3 - 1)) then
					v53 = {};
					for v77 = 3 - 2, #v52 do
						v53[v77] = v2(v1(v3(v52, v77, v77)));
					end
					v51 = 3;
				end
				if (v51 == (978 - ((648 - (633 + 2)) + (2318 - 1354)))) then
					v52 = v3(v16, v18, (v18 + v34) - (1635 - (1084 + 550)));
					v18 = v18 + v34;
					v51 = 2;
				end
				if ((611 - (89 + 522)) == v51) then
					v52 = nil;
					if not v34 then
						v34 = v23();
						if (v34 == (0 + 0 + 0)) then
							return "";
						end
					end
					v51 = 836 - (367 + 468);
				end
				if (v51 == (2 + 1 + 0)) then
					return v6(v53);
				end
			end
		end
		local v26 = v23;
		local function v27(...)
			return {...}, v12("#", ...);
		end
		local function v28()
			local v54 = 0 - 0;
			local v55;
			local v56;
			local v57;
			local v58;
			local v59;
			local v60;
			local v61;
			while true do
				if (v54 == 3) then
					v61 = nil;
					while true do
						local v79 = 0;
						while true do
							if (v79 ~= (1 + 0)) then
							else
								if (2 ~= v55) then
								else
									local v101 = 0;
									local v102;
									while true do
										if ((183 - (33 + 150)) == v101) then
											v102 = 0;
											while true do
												if (v102 ~= (0 + 0)) then
												else
													local v119 = 965 - (390 + 575);
													while true do
														if (v119 == 1) then
															v102 = 1;
															break;
														end
														if (v119 ~= 0) then
														else
															for v143 = 576 - (554 + 21), v60 do
																local v144 = 0 + 0;
																local v145;
																local v146;
																while true do
																	if (v144 ~= 0) then
																	else
																		local v158 = 0 - 0;
																		while true do
																			if (v158 ~= (0 - 0)) then
																			else
																				v145 = v21();
																				v146 = nil;
																				v158 = 645 - (468 + 176);
																			end
																			if (v158 == (1 + 0)) then
																				v144 = 600 - (425 + 174);
																				break;
																			end
																		end
																	end
																	if (v144 == 1) then
																		if (v145 == (1 - 0)) then
																			v146 = v21() ~= 0;
																		elseif (v145 == 2) then
																			v146 = v24();
																		elseif (v145 == (643 - (450 + 190))) then
																			v146 = v25();
																		end
																		v61[v143] = v146;
																		break;
																	end
																end
															end
															v59[3] = v21();
															v119 = 1;
														end
													end
												end
												if (v102 ~= 1) then
												else
													for v120 = 1 - 0, v23() do
														local v121 = 0 + 0;
														local v122;
														local v123;
														local v124;
														while true do
															if (v121 ~= (2 - 1)) then
															else
																v124 = nil;
																while true do
																	if (v122 == 0) then
																		v123 = 0;
																		v124 = nil;
																		v122 = 2 - 1;
																	end
																	if (v122 ~= (1 + 0)) then
																	else
																		while true do
																			if (v123 == 0) then
																				v124 = v21();
																				if (v20(v124, 1, 1 + 0) == (0 - 0)) then
																					local v166 = 0;
																					local v167;
																					local v168;
																					local v169;
																					local v170;
																					local v171;
																					while true do
																						if (v166 ~= (1 - 0)) then
																						else
																							v169 = nil;
																							v170 = nil;
																							v166 = 2 - 0;
																						end
																						if (0 ~= v166) then
																						else
																							v167 = 0;
																							v168 = nil;
																							v166 = 1276 - (1126 + 149);
																						end
																						if ((2 + 0) == v166) then
																							v171 = nil;
																							while true do
																								if (v167 ~= (385 - (152 + 231))) then
																								else
																									while true do
																										if (v168 == (4 - 2)) then
																											local v180 = 0 - 0;
																											local v181;
																											while true do
																												if (v180 == 0) then
																													v181 = 214 - (129 + 85);
																													while true do
																														if (v181 ~= 1) then
																														else
																															v168 = 1219 - (263 + 953);
																															break;
																														end
																														if ((0 + 0) == v181) then
																															if (v20(v170, 1878 - (920 + 957), 1 + 0) ~= (3 - 2)) then
																															else
																																v171[7 - 5] = v61[v171[867 - (820 + 45)]];
																															end
																															if (v20(v170, 2, 1 + 1) == 1) then
																																v171[3] = v61[v171[3]];
																															end
																															v181 = 1 + 0;
																														end
																													end
																													break;
																												end
																											end
																										end
																										if (v168 == (1837 - (899 + 938))) then
																											local v182 = 1496 - (816 + 680);
																											local v183;
																											local v184;
																											while true do
																												if ((1832 - (948 + 884)) == v182) then
																													v183 = 0 - 0;
																													v184 = nil;
																													v182 = 4 - 3;
																												end
																												if (v182 ~= 1) then
																												else
																													while true do
																														if (v183 == 0) then
																															v184 = 0;
																															while true do
																																if (v184 == (1850 - (1218 + 631))) then
																																	v168 = 1285 - (689 + 595);
																																	break;
																																end
																																if (v184 ~= 0) then
																																else
																																	local v195 = 0;
																																	while true do
																																		if (v195 ~= 1) then
																																		else
																																			v184 = 1 + 0;
																																			break;
																																		end
																																		if (v195 == 0) then
																																			v169 = v20(v124, 2, 3);
																																			v170 = v20(v124, 4, 614 - (349 + 259));
																																			v195 = 1;
																																		end
																																	end
																																end
																															end
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end
																										if (v168 ~= (2 - 1)) then
																										else
																											local v185 = 0;
																											local v186;
																											while true do
																												if ((0 + 0) == v185) then
																													v186 = 0 + 0;
																													while true do
																														if ((1131 - (693 + 438)) == v186) then
																															v171 = {v22(),v22(),nil,nil};
																															if (v169 == (424 - (130 + 294))) then
																																local v194 = 0;
																																while true do
																																	if (v194 == 0) then
																																		v171[539 - (445 + 91)] = v22();
																																		v171[438 - (164 + 270)] = v22();
																																		break;
																																	end
																																end
																															elseif (v169 == (1 - 0)) then
																																v171[401 - (365 + 33)] = v23();
																															elseif (v169 == 2) then
																																v171[415 - (335 + 77)] = v23() - (2 ^ 16);
																															elseif (v169 == 3) then
																																local v200 = 0 - 0;
																																local v201;
																																while true do
																																	if (v200 ~= 0) then
																																	else
																																		v201 = 0 - 0;
																																		while true do
																																			if (v201 == 0) then
																																				v171[3] = v23() - (2 ^ 16);
																																				v171[14 - 10] = v22();
																																				break;
																																			end
																																		end
																																		break;
																																	end
																																end
																															end
																															v186 = 324 - (21 + 302);
																														end
																														if (v186 == 1) then
																															v168 = 2;
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end
																										if (v168 == 3) then
																											if (v20(v170, 1648 - (1348 + 297), 1 + 2) == 1) then
																												v171[3 + 1] = v61[v171[3 + 1]];
																											end
																											v56[v120] = v171;
																											break;
																										end
																									end
																									break;
																								end
																								if (v167 == (1879 - (335 + 1544))) then
																									v168 = 0;
																									v169 = nil;
																									v167 = 1;
																								end
																								if (v167 == (439 - (8 + 430))) then
																									local v179 = 447 - (115 + 332);
																									while true do
																										if (v179 ~= (0 + 0)) then
																										else
																											v170 = nil;
																											v171 = nil;
																											v179 = 1;
																										end
																										if (v179 == (783 - (248 + 534))) then
																											v167 = 2;
																											break;
																										end
																									end
																								end
																							end
																							break;
																						end
																					end
																				end
																				break;
																			end
																		end
																		break;
																	end
																end
																break;
															end
															if (v121 == 0) then
																local v147 = 0;
																while true do
																	if (v147 == (1114 - (825 + 289))) then
																		v122 = 0;
																		v123 = nil;
																		v147 = 1;
																	end
																	if (v147 == 1) then
																		v121 = 845 - (130 + 714);
																		break;
																	end
																end
															end
														end
													end
													v55 = 3;
													break;
												end
											end
											break;
										end
									end
								end
								if (v55 ~= 0) then
								else
									local v103 = 0 - 0;
									local v104;
									local v105;
									while true do
										if (v103 == (1 + 0)) then
											while true do
												if (v104 ~= 0) then
												else
													v105 = 0 - 0;
													while true do
														if (v105 == 0) then
															local v137 = 1606 - (566 + 1040);
															while true do
																if (v137 == 1) then
																	v105 = 1 - 0;
																	break;
																end
																if (v137 == (196 - (125 + 71))) then
																	v56 = {};
																	v57 = {};
																	v137 = 1 - 0;
																end
															end
														end
														if (v105 ~= 1) then
														else
															v58 = {};
															v55 = 1 + 0;
															break;
														end
													end
													break;
												end
											end
											break;
										end
										if (v103 ~= (0 - 0)) then
										else
											v104 = 1182 - (125 + 1057);
											v105 = nil;
											v103 = 1 + 0;
										end
									end
								end
								break;
							end
							if (v79 == (0 + 0)) then
								local v93 = 0;
								local v94;
								while true do
									if (v93 == 0) then
										v94 = 0;
										while true do
											if (v94 ~= (0 + 0)) then
											else
												local v106 = 181 - (103 + 78);
												while true do
													if (v106 ~= (1 - 0)) then
													else
														v94 = 1 + 0;
														break;
													end
													if ((0 + 0) == v106) then
														if (v55 == (2 - 1)) then
															local v138 = 0;
															local v139;
															while true do
																if (v138 == (0 + 0)) then
																	v139 = 0 + 0;
																	while true do
																		if (v139 == (0 + 0)) then
																			v59 = {v56,v57,nil,v58};
																			v60 = v23();
																			v139 = 1;
																		end
																		if (v139 == (2 - 1)) then
																			v61 = {};
																			v55 = 2;
																			break;
																		end
																	end
																	break;
																end
															end
														end
														if (v55 == 3) then
															local v140 = 364 - (317 + 47);
															while true do
																local v148 = 0 + 0;
																while true do
																	if (v148 ~= 0) then
																	else
																		if (v140 ~= 0) then
																		else
																			local v165 = 0;
																			while true do
																				if ((52 - (9 + 43)) == v165) then
																					local v172 = 260 - (140 + 120);
																					while true do
																						if (v172 ~= 1) then
																						else
																							v165 = 1;
																							break;
																						end
																						if (v172 == (0 - 0)) then
																							for v175 = 1, v23() do
																								v57[v175 - (1 + 0)] = v28();
																							end
																							for v177 = 1 - 0, v23() do
																								v58[v177] = v23();
																							end
																							v172 = 1;
																						end
																					end
																				end
																				if (v165 ~= (2 - 1)) then
																				else
																					v140 = 1;
																					break;
																				end
																			end
																		end
																		if (v140 ~= (1 - 0)) then
																		else
																			return v59;
																		end
																		break;
																	end
																end
															end
														end
														v106 = 2 - 1;
													end
												end
											end
											if (1 ~= v94) then
											else
												v79 = 1 + 0;
												break;
											end
										end
										break;
									end
								end
							end
						end
					end
					break;
				end
				if (v54 ~= (1049 - (22 + 1026))) then
				else
					local v75 = 0 + 0;
					while true do
						if (v75 ~= (1 - 0)) then
						else
							v54 = 2;
							break;
						end
						if (v75 ~= (0 + 0)) then
						else
							v57 = nil;
							v58 = nil;
							v75 = 1506 - (1104 + 401);
						end
					end
				end
				if (v54 == (4 - 2)) then
					v59 = nil;
					v60 = nil;
					v54 = 3;
				end
				if (v54 == 0) then
					v55 = 0 + 0;
					v56 = nil;
					v54 = 236 - (9 + 226);
				end
			end
		end
		local function v29(v35, v36, v37)
			local v62 = v35[1];
			local v63 = v35[2];
			local v64 = v35[3];
			return function(...)
				local v70 = 1;
				local v71 = -1;
				local v72 = {...};
				local v73 = v12("#", ...) - 1;
				local function v74()
					local v80 = v62;
					local v81 = v63;
					local v82 = v64;
					local v83 = v27;
					local v84 = {};
					local v85 = {};
					local v86 = {};
					for v91 = 0 - 0, v73 do
						if ((v91 >= v82) or ((4 + 4207) < 2016)) then
							v84[v91 - v82] = v72[v91 + (1484 - (435 + 1048))];
						else
							v86[v91] = v72[v91 + 1 + 0];
						end
					end
					local v87 = (v73 - v82) + 1;
					local v88;
					local v89;
					while true do
						local v92 = 0 - 0;
						while true do
							if (((2772 + 462) <= (5248 - (77 + 602))) and (v92 == (1 + 0))) then
								if ((v89 <= ((35 - 23) - 7)) or ((9560 - 7615) > (5695 - (926 + 801)))) then
									if ((v89 <= (2 + 0)) or ((8469 - 5143) <= (165 + 3092))) then
										if ((v89 <= (460 - (367 + 93))) or ((8165 - 4126) < (3788 - (935 + 1026)))) then
											v37[v88[3 - 0]] = v86[v88[2]];
										elseif ((v89 > (1 - 0)) or ((161 + 2474) >= ((10183 - 5380) - (7 + 7)))) then
											v86[v88[542 - (332 + 208)]][v88[1598 - (1012 + 583)]] = v88[7 - 3];
										else
											local v127 = 1830 - (1692 + 37 + 101);
											local v128;
											local v129;
											while true do
												if ((v127 == (0 - 0)) or (((908 + 957) - (409 + 80)) > (3988 - ((1437 - (582 + 512)) + 1457)))) then
													v128 = 0 + 0;
													v129 = nil;
													v127 = 1 + 0;
												end
												if ((v127 == (835 - (682 + 152))) or (4820 < (4926 - (993 + 234 + 621)))) then
													while true do
														if (((171 + 1788) < (5158 - (1202 + 5))) and (v128 == (0 + 0))) then
															v129 = v88[1521 - (1422 + 97)];
															v86[v129] = v86[v129](v13(v86, v129 + 1 + 0, v71));
															break;
														end
													end
													break;
												end
											end
										end
									elseif (((2176 - (640 + 364)) > (2187 - (909 + 563))) and (v89 <= (1 + 2))) then
										local v109 = 0;
										local v110;
										local v111;
										local v112;
										while true do
											if ((v109 == (2 - 1)) or (1291 > (100 + 4174))) then
												v112 = nil;
												while true do
													if ((v110 == (137 - ((1989 - (1914 + 35)) + 97))) or ((2942 - (6 + 627)) >= (338 + 4655))) then
														local v149 = (1581 - (950 + 631)) + 0;
														while true do
															if (((610 - (6 + 9)) <= (1909 - (117 + 1032))) and (v149 == (0 + 0))) then
																v111 = v88[1603 - (548 + 1053)];
																v112 = v86[v88[2 + (1 - 0)]];
																v149 = 2 - 1;
															end
															if (((3590 - (81 + 234 + 263)) <= (6065 - (383 + 1555))) and (v149 == 1)) then
																v110 = 1;
																break;
															end
														end
													end
													if (((1047 - 361) == 686) and (v110 == (1 + 0))) then
														v86[v111 + 1 + 0] = v112;
														v86[v111] = v112[v88[4]];
														break;
													end
												end
												break;
											end
											if (((4113 + 672) > (98 - 24)) and (v109 == (1114 - (645 + 469)))) then
												v110 = 693 - (491 + 202);
												v111 = nil;
												v109 = 1 - (0 + 0);
											end
										end
									elseif ((v89 > ((471 + 1112) - (7 + 498 + 1074))) or ((2648 + 433) >= 4685)) then
										v86[v88[339 - (290 + 47)]]();
									else
										v70 = v88[6 - 3];
									end
								elseif ((v89 <= (25 - 17)) or (((5763 - 3346) - (86 + 84)) > 4289)) then
									if (((695 + 1495) > (3207 - (1321 + 984))) and (v89 <= (3 + (1865 - (894 + 968))))) then
										local v113 = 0 - 0;
										local v114;
										local v115;
										local v116;
										local v117;
										local v118;
										while true do
											if ((v113 == 1) or ((13059 - 10265) < (2414 - 541))) then
												v116 = nil;
												v117 = nil;
												v113 = (784 - 497) - (40 + 245);
											end
											if ((v113 == 2) or ((1311 + 926) >= ((8900 + 523) - 7013))) then
												v118 = nil;
												while true do
													if (((2481 - (405 + 602 + 982)) == 492) and (v114 == (223 - (10 + 211)))) then
														for v155 = v115, v71 do
															local v156 = 0 - 0;
															local v157;
															while true do
																if (((5771 - 3008) >= (4304 - (808 + 941))) and (v156 == 0)) then
																	v157 = 1920 - (1383 + (1090 - (425 + 128)));
																	while true do
																		if (((4340 - (8088 - 6023)) > (1250 - 715)) and (v157 == ((772 - (174 + 598)) - 0))) then
																			v118 = v118 + 1 + 0;
																			v86[v155] = v116[v118];
																			break;
																		end
																	end
																	break;
																end
															end
														end
														break;
													end
													if (((108 + 1146) < (591 + 3808)) and (v114 == 1)) then
														local v153 = 0 + 0;
														while true do
															if (((2104 + 307) == 2411) and (v153 == 0)) then
																v71 = (v117 + v115) - ((4 - 1) - 2);
																v118 = 0;
																v153 = 89 - (7 + 81);
															end
															if ((v153 == (1 - 0)) or ((1953 - (28 + 294)) == (8269 - 5956))) then
																v114 = 5 - 3;
																break;
															end
														end
													end
													if ((((2548 - (241 + 1170)) - (864 + 273)) == v114) or ((3871 - (44 + 1744)) <= (3061 - 2021))) then
														local v154 = 0 + 0;
														while true do
															if ((v154 == (0 + 0)) or ((1995 - (130 + 519)) > 3943)) then
																v115 = v88[2];
																v116, v117 = v83(v86[v115](v13(v86, v115 + ((309 + 22) - (255 + (201 - 126))), v88[3])));
																v154 = 1 - 0;
															end
															if (((12630 - 8707) <= 4257) and (((1966 - (473 + 1492)) + 0) == v154)) then
																v114 = 1 + 0;
																break;
															end
														end
													end
												end
												break;
											end
											if ((3539 > 1616) and (v113 == (0 + 0))) then
												v114 = 1595 - (611 + 984);
												v115 = nil;
												v113 = 1 + 0;
											end
										end
									elseif ((v89 > 7) or ((883 - (181 + (1344 - (638 + 125)))) >= ((16154 - 11496) - 1365))) then
										v86[v88[1372 - (925 + 445)]] = v88[3] ~= 0;
									else
										v86[v88[2]] = v88[5 - (1 + 1)];
									end
								elseif ((v89 <= 10) or ((2907 - (674 + 91 + 54)) > (6733 - (1074 + 783)))) then
									if ((v89 == 9) or ((100 + 353) == (3551 - (181 + 32)))) then
										do
											return;
										end
									elseif ((v88[991 - (585 + 134 + 270)] == v86[v88[4]]) or ((14589 - 11390) < (1253 + (3704 - (406 + 1398))))) then
										v70 = v70 + (2 - 1);
									else
										v70 = v88[7 - 4];
									end
								elseif ((1179 <= (1446 + 2715)) and (v89 == ((29 + 5) - 23))) then
									v86[v88[3 - 1]] = v37[v88[3 + 0]];
								elseif (((3785 - (536 + 43)) > (1061 + 1307)) and (v86[v88[2 - 0]] == v88[7 - 3])) then
									v70 = v70 + (2 - 1);
								else
									v70 = v88[(903 - (412 + 389)) - ((1956 - (47 + 1865)) + 55)];
								end
								v70 = v70 + 1 + 0;
								break;
							end
							if ((3215 >= (118 + 202)) and (v92 == (1178 - ((684 - (217 + 85)) + (2573 - 1777))))) then
								v88 = v80[v70];
								v89 = v88[1];
								v92 = 4 - 3;
							end
						end
					end
				end
				A, B = v27(v11(v74));
				if not A[1] then
					local v90 = v35[4][v70] or "?";
					error(LUAOBFUSACTOR_DECRYPT_STR_0("\219\190\12\179\59\29\168\184\12\168\36\27\168\188\10\250\16", "\136\221\126\218\75\105") .. v90 .. LUAOBFUSACTOR_DECRYPT_STR_0("\108\42", "\49\16\152\46\214\105\48\231") .. A[2]);
				else
					return v13(A, 2, B);
				end
			end;
		end
		return v29(v28(), {}, v17)(...);
	end
	v15(LUAOBFUSACTOR_DECRYPT_STR_0("\141\171\30\102\220\248\215\29\119\221\241\214\106\8\221\241\212\96\113\162\241\212\20\119\222\135\212\97\119\169\242\171\98\119\219\130\210\20\113\220\247\208\100\126\219\132\210\101\112\222\247\215\101\117\223\142\210\103\113\168\241\215\98\117\222\142\212\98\114\171\245\211\98\116\220\241\215\29\119\221\245\215\101\114\218\242\211\102\113\171\247\160\103\116\219\242\211\96\113\212\246\212\101\115\217\132\210\99\113\169\247\209\98\116\220\248\215\29\119\221\244\208\100\127\218\249\214\98\113\219\247\162\101\117\223\241\211\103\112\222\247\221\100\2\219\246\214\98\113\171\246\209\101\117\223\241\211\97\113\222\246\214\100\126\218\241\211\102\117\220\241\214\101\8\221\241\208\98\119\222\241\220\97\8\221\241\209\103\112\222\247\209\101\117\219\132\210\99\113\169\247\209\98\116\221\132\215\29\119\221\246\212\96\8\219\244\211\96\112\217\247\165\100\114\219\130\210\20\113\174\242\214\96\8\222\241\215\107\119\222\241\211\97\8\221\241\209\101\113\216\247\214\102\127\223\142\210\20\113\175\241\215\101\126\222\142\212\98\113\213\243\171\101\115\218\241\211\97\116\172\243\171\96\1\219\245\210\107\112\222\247\215\100\1\218\243\210\102\117\168\247\215\100\1\219\133\214\20\113\220\246\212\100\126\223\135\211\101\113\216\247\214\100\127\223\142\210\20\113\175\246\215\96\1\222\240\215\98\116\212\242\212\96\8\222\248\215\106\116\222\242\210\97\116\223\142\215\103\116\220\242\208\97\116\222\247\215\106\116\220\242\212\96\1\216\242\209\103\112\216\247\167\103\115\222\245\211\97\113\169\246\214\102\114\218\247\209\107\113\213\242\221\101\127\219\128\208\19\115\216\246\165\103\114\219\246\209\19\115\174\244\210\96\3\216\246\210\102\114\219\245\208\96\8\219\244\210\17\113\175\247\209\103\118\216\243\215\99\112\221\245\220\100\126\216\247\210\19\115\218\247\210\102\3\223\133\210\96\115\222\242\212\101\112\222\243\209\96\115\169\242\215\102\127\217\247\210\22\113\172\242\215\103\117\217\132\215\98\114\171\247\166\100\6\218\245\210\22\113\216\241\214\100\8\221\241\212\106\115\221\241\215\98\114\222\142\212\98\114\217\247\209\101\127\218\245\215\97\119\222\240\215\97\8\221\241\208\97\113\213\247\209\100\116\219\131\210\107\113\168\247\211\96\119\216\242\210\97\112\223\247\221\101\119\218\245\211\97\116\162\243\161\98\116\221\244\215\29\119\221\244\208\100\114\218\249\211\102\116\217\241\215\99\116\222\142\212\98\114\222\246\208\100\118\218\243\211\102\113\212\247\161\100\112\223\241\209\97\113\222\246\214\100\126\218\241\211\102\112\222\242\171\96\2\221\243\210\29\119\221\240\212\102\119\221\242\212\103\116\162\241\212\103\115\219\244\211\106\112\217\242\213\98\116\220\241\215\29\119\221\244\215\100\116\218\243\210\107\112\221\246\208\96\119\217\130\210\20\113\220\247\208\100\114\219\245\215\29\117\168\241\215\98\114\222\142\212\98\114\217\247\209\101\127\218\245\215\96\119\222\240\214\97\8\221\241\209\101\113\220\247\221\101\115\219\248\210\23\113\218\243\212\100\113\219\135\211\96\117\221\244\215\100\116\218\243\210\107\112\221\246\208\98\116\221\128\215\29\119\221\247\167\100\1\219\240\210\102\112\222\246\208\101\117\219\248\210\23\113\218\241\215\98\115\222\142\212\98\113\218\247\213\100\3\219\244\212\97\119\218\242\171\98\119\217\249\214\29\112\217\246\212\102\112\219\244\211\102\119\222\245\162\97\8\221\241\210\106\117\162\246\208\101\119\218\242\215\19\117\162\243\162\101\117\219\240\211\101\117\168\247\211\100\126\218\245\210\106\112\216\247\214\101\114\218\242\210\103\112\223\247\215\100\1\219\132\211\102\113\216\247\161\101\115\223\132\210\97\113\171\247\160\96\1\217\128\211\103\112\222\246\208\100\118\219\132\210\20\112\217\247\220\100\114\218\243\210\102\113\169\247\209\96\1\218\241\210\103\112\217\246\215\100\126\219\133\211\106\117\162\242\214\96\1\219\133\210\99\113\212\247\161\96\1\218\241\210\103\112\217\246\215\100\126\219\133\210\101\112\216\247\221\96\8\218\242\214\23\113\174\246\209\100\118\221\241\214\107\116\162\241\212\99\117\221\246\215\29\119\221\241\213\97\8\221\241\214\100\119\174\242\171\98\119\221\249\212\98\119\220\241\212\98\117\221\241\214\29\119\217\242\171\98\119\221\249\212\98\119\220\243\171\98\119\221\249\212\98\119\220\241\212\98\118\222\142\212\98\118\223\243\171\98\119\221\240\212\98\119\222\242\171\98\119\220\243\212\16\119\221\241\213\98\119\221\245\215\29\119\221\242\212\98\117\221\241\212\99\119\221\241\209\98\119\221\247\212\98\118\223\241\211\97\8\221\241\212\101\116\162\241\212\96\113\221\130\215\29\119\221\241\162\98\119\221\240\212\98\119\220\241\212\96\8\221\245\215\29\119\221\241\162\98\119\221\240\212\98\118\223\241\211\98\119\221\240\212\98\119\212\242\171\98\119\220\243\214\29\119\221\241\213\98\119\221\249\215\29\119\221\240\214\98\112\221\241\212\99\119\221\241\166\97\8\221\241\213\96\117\162\241\212\98\118\221\241\212\19\116\162\241\212\99\117\221\246\215\29\119\221\241\214\97\8\221\241\212\23\119\172\241\212\98\4\221\241\213\100\119\221\241\213\97\8\221\241\214\29\119\217\242\171\98\119\220\247\212\98\119\220\241\212\99\117\221\131\212\98\119\220\241\212\98\115\222\142\212\98\116\221\241\214\98\119\221\240\212\98\119\169\241\212\98\2\221\241\213\96\119\175\241\212\98\118\221\241\212\102\116\162\241\212\97\119\221\243\212\98\119\220\241\212\98\1\221\241\213\98\119\221\240\214\98\112\222\142\212\98\118\220\242\171\98\119\223\247\212\17\116\162\241\212\99\3\221\241\212\99\119\221\241\211\98\119\223\142\212\102\116\162\241\212\99\3\221\241\212\99\119\221\240\214\98\5\221\241\212\99\119\221\241\208\97\8\221\241\215\98\119\223\241\212\98\118\221\241\213\96\119\221\240\215\98\119\220\243\212\16\119\221\241\213\98\119\221\245\215\29\119\221\242\212\98\117\221\241\212\99\119\221\240\208\98\119\220\244\212\98\118\223\241\211\97\8\221\241\212\17\116\162\241\212\96\113\221\130\215\29\119\221\241\213\98\119\221\240\212\98\118\220\241\212\96\8\221\245\215\29\119\221\241\213\98\119\221\240\212\98\118\223\241\166\98\119\221\240\212\98\118\219\242\171\98\119\220\243\212\16\119\221\241\214\98\119\220\246\215\29\119\221\243\212\98\116\221\241\212\96\119\221\241\214\98\119\220\249\212\98\118\223\241\211\98\119\221\245\212\98\118\212\245\171\98\119\221\247\212\98\119\223\241\212\98\115\217\142\212\98\119\220\241\212\98\118\222\142\212\98\119\223\243\171\98\119\221\244\212\98\119\220\241\212\98\118\221\241\212\99\119\221\243\171\98\115\222\142\212\98\117\213\241\212\98\118\221\241\214\29\119\217\242\171\98\119\221\240\212\98\119\220\243\171\98\119\221\248\215\29\119\221\241\213\101\8\221\241\214\107\116\162\241\212\98\117\222\142\212\98\119\217\242\171\98\119\221\245\215\29\119\221\241\209\97\8\221\241\212\103\116\162\241\212\98\113\222\142\212\98\119\219\242\171\98\119\221\246\215\29\119\221\241\221\97\8\221\241\212\107\116\162\241\212\98\6\222\142\212\98\119\172\242\171\98\119\221\131\215\29\119\221\241\166\97\8\221\241\212\17\116\162\241\212\98\2\222\142\212\98\119\168\242\171\98\119\221\135\215\29\119\221\241\162\97\8\221\241\213\98\116\162\241\212\99\119\222\142\212\98\118\220\242\171\98\119\220\242\215\29\119\221\240\215\97\8\221\241\213\102\116\162\241\212\99\115\222\142\212\98\118\216\242\171\98\119\220\244\215\29\119\221\240\210\97\8\221\241\213\106\116\162\241\212\99\127\222\142\212\98\118\212\242\171\98\119\220\248\215\29\119\221\240\221\97\8\221\241\213\107\116\162\241\212\99\126\222\142\212\98\118\212\242\171\98\119\220\248\215\29\119\221\240\165\97\8\221\241\213\16\116\162\241\212\99\3\222\142\212\98", "\193\228\82\71\237"), v9(), ...);
end