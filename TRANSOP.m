function varargout = TRANSOP(varargin)
%TRANSOP M-file for TRANSOP.fig
%      TRANSOP, by itself, creates a new TRANSOP or raises the existing
%      singleton*.
%
%      H = TRANSOP returns the handle to a new TRANSOP or the handle to
%      the existing singleton*.
%
%      TRANSOP('Property','Value',...) creates a new TRANSOP using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to TRANSOP_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TRANSOP('CALLBACK') and TRANSOP('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TRANSOP.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TRANSOP

% Last Modified by GUIDE v2.5 26-Nov-2015 02:47:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TRANSOP_OpeningFcn, ...
                   'gui_OutputFcn',  @TRANSOP_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TRANSOP is made visible.
function TRANSOP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for TRANSOP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TRANSOP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TRANSOP_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Update.
function Update_Callback(hObject, eventdata, handles)
% hObject    handle to Update (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Theta1=str2double(get(handles.Theta1,'string'));
Axis1 =(get(handles.Axis1,'value'));
if Axis1==1
R1= [1 0 0 ; 0 cosd(Theta1) -sind(Theta1); 0 sind(Theta1) cosd(Theta1)];
elseif Axis1==2
    R1 = [cosd(Theta1) 0 -sind(Theta1); 0 1 0; sind(Theta1) 0 cosd(Theta1)];
elseif Axis1==3
     R1 = [cosd(Theta1) -sind(Theta1) 0; sind(Theta1) cosd(Theta1) 0; 0 0 1];
end

Theta2=str2double(get(handles.Theta2,'string'));
Axis2 =(get(handles.Axis2,'value'));
if Axis2==1
R2= [1 0 0 ; 0 cosd(Theta2) -sind(Theta2); 0 sind(Theta2) cosd(Theta2)];
elseif Axis2==2
    R2 = [cosd(Theta2) 0 -sind(Theta2); 0 1 0; sind(Theta2) 0 cosd(Theta2)];
elseif Axis2==3
     R2 = [cosd(Theta2) -sind(Theta2) 0; sind(Theta2) cosd(Theta2) 0; 0 0 1];
end

Theta3=str2double(get(handles.Theta3,'string'));
Axis3 =(get(handles.Axis3,'value'));
if Axis3==1
R3= [1 0 0 ; 0 cosd(Theta3) -sind(Theta3); 0 sind(Theta3) cosd(Theta3)];
elseif Axis3==2
    R3 = [cosd(Theta3) 0 -sind(Theta3); 0 1 0; sind(Theta3) 0 cosd(Theta3)];
elseif Axis3==3
     R3 = [cosd(Theta3) -sind(Theta3) 0; sind(Theta3) cosd(Theta3) 0; 0 0 1];
end


     R=R3*R2*R1;
     
 
 PX=str2double(get(handles.PX,'string'));
 PY=str2double(get(handles.PY,'string'));
 PZ=str2double(get(handles.PZ,'string'));
 
 BX=str2double(get(handles.BX,'string'));
 BY=str2double(get(handles.BY,'string'));
 BZ=str2double(get(handles.BZ,'string'));
 
 POS=[PX;PY;PZ];
 BOS=[BX;BY;BZ;1];
 T=[R POS;[0 0 0] 1];
 PA=T*BOS;
 set(handles.RotMat,'string',num2str(PA(1:3,1)));
 
 %%%%% GRAPH %%%%%%%%%%%%
 cla reset;
 p=[0;0;0];
R0=eye(3,3);
hold on

axis_start = p;
c='b';
for i=1:3
    axis_end(:,i) = axis_start + R0(:,i);
end
axes(handles.Graph);
plot3(p(1), p(2), p(3), 'o','Color',c);

axis_c = ['r', 'g', 'b'];
for i = 1:3
    plot3([axis_start(1) axis_end(1,i)],...
        [axis_start(2) axis_end(2,i)],...
        [axis_start(3) axis_end(3,i)],'--', 'Color', axis_c(i));
end
hold off
axis equal
line([0,BX],[0,BY],[0,BZ],'Color','c');
line([0,PA(1,1)],[0,PA(2,1)],[0,PA(3,1)],'Color','k');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






% --- Executes on selection change in Frame.
function Frame_Callback(hObject, eventdata, handles)
% hObject    handle to Frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Frame contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Frame


% --- Executes during object creation, after setting all properties.
function Frame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Axis1.
function Axis1_Callback(hObject, eventdata, handles)
% hObject    handle to Axis1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Axis1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Axis1


% --- Executes during object creation, after setting all properties.
function Axis1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Axis1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta1_Callback(hObject, eventdata, handles)
% hObject    handle to Theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta1 as text
%        str2double(get(hObject,'String')) returns contents of Theta1 as a double


% --- Executes during object creation, after setting all properties.
function Theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Axis2.
function Axis2_Callback(hObject, eventdata, handles)
% hObject    handle to Axis2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Axis2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Axis2


% --- Executes during object creation, after setting all properties.
function Axis2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Axis2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta2_Callback(hObject, eventdata, handles)
% hObject    handle to Theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta2 as text
%        str2double(get(hObject,'String')) returns contents of Theta2 as a double


% --- Executes during object creation, after setting all properties.
function Theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Axis3.
function Axis3_Callback(hObject, eventdata, handles)
% hObject    handle to Axis3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Axis3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Axis3


% --- Executes during object creation, after setting all properties.
function Axis3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Axis3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta3_Callback(hObject, eventdata, handles)
% hObject    handle to Theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta3 as text
%        str2double(get(hObject,'String')) returns contents of Theta3 as a double


% --- Executes during object creation, after setting all properties.
function Theta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PX_Callback(hObject, eventdata, handles)
% hObject    handle to PX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PX as text
%        str2double(get(hObject,'String')) returns contents of PX as a double


% --- Executes during object creation, after setting all properties.
function PX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PY_Callback(hObject, eventdata, handles)
% hObject    handle to PY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PY as text
%        str2double(get(hObject,'String')) returns contents of PY as a double


% --- Executes during object creation, after setting all properties.
function PY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PZ_Callback(hObject, eventdata, handles)
% hObject    handle to PZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PZ as text
%        str2double(get(hObject,'String')) returns contents of PZ as a double


% --- Executes during object creation, after setting all properties.
function PZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BX_Callback(hObject, eventdata, handles)
% hObject    handle to BX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BX as text
%        str2double(get(hObject,'String')) returns contents of BX as a double


% --- Executes during object creation, after setting all properties.
function BX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BY_Callback(hObject, eventdata, handles)
% hObject    handle to BY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BY as text
%        str2double(get(hObject,'String')) returns contents of BY as a double


% --- Executes during object creation, after setting all properties.
function BY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BZ_Callback(hObject, eventdata, handles)
% hObject    handle to BZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BZ as text
%        str2double(get(hObject,'String')) returns contents of BZ as a double


% --- Executes during object creation, after setting all properties.
function BZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
