# verilog-simple
Simple verilog gate level implementation

# Sum of Products (SOP)

S	=H'O'NR+H'ON'R'+H'ON'R+H'ONR'+H'ONR+HO'N'R'+HO'NR'+HO'NR+HON'R'+HON'R+HONR'+HONR </br>

# Minimized SOP

S	=R(H'O'N+H'ON'+H'ON+HO'N+HON'+HON) + R'(H'ON'+H'ON+HO'N'+HO'N+HON'+HON) -> distr.</br>
	=R(ON'(H+H')+O'N(H+H')+ON(H+H'))+R'(ON(H+H')+ON'(H+H')+HO'(N+N')) -> distr.</br>
	=R(ON'1+O'N1+ON1)+R'(ON1+ON'1+HO'1) -> complement</br>
	=R(ON'+O'N+ON)+R'(ON+ON'+HO') -> identity</br>
	=R(N(O+O')+ON')+R'(O(N+N')+HO') -> distr.</br>
	=R(N1+ON')+R'(O1+HO') -> complement</br>
	=R(N+ON')+R'(O+HO')  -> identity</br>
	=R(N+O)+R'(O+H) -> theorem 9</br>
	=RN + RO+ R'O + R'H -> distr</br>
	=O(R+R') + RN + R'H -> distr</br>
	=O1 + RN + R'H -> complement</br>
	=O + RN + R'H -> identity</br>

# Product of Sums (POS)

S	=(H+O+N+R)(H+O+N+R')(H+O+N'+R)(H'+O+N+R')

# Minimized POS

S	=(H+O+R+NN')(O+N+R'+HH')  -> distr</br>
	=(H+O+R+0)(O+N+R'+0) -> complement</br>
	=(H+O+R)(O+N+R')   -> null elements</br>
