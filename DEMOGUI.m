function varargout = DEMOGUI(varargin)
% DEMOGUI MATLAB code for DEMOGUI.fig
%      DEMOGUI, by itself, creates a new DEMOGUI or raises the existing
%      singleton*.
%
%      H = DEMOGUI returns the handle to a new DEMOGUI or the handle to
%      the existing singleton*.
%
%      DEMOGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMOGUI.M with the given input arguments.
%
%      DEMOGUI('Property','Value',...) creates a new DEMOGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DEMOGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DEMOGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DEMOGUI

% Last Modified by GUIDE v2.5 02-Dec-2019 23:49:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DEMOGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @DEMOGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
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


% --- Executes just before DEMOGUI is made visible.
function DEMOGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DEMOGUI (see VARARGIN)

% Choose default command line output for DEMOGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DEMOGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DEMOGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input1_Callback(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input1 as text
%        str2double(get(hObject,'String')) returns contents of input1 as a double


% --- Executes during object creation, after setting all properties.
function input1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input2_Callback(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input2 as text
%        str2double(get(hObject,'String')) returns contents of input2 as a double


% --- Executes during object creation, after setting all properties.
function input2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input3_Callback(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input3 as text
%        str2double(get(hObject,'String')) returns contents of input3 as a double


% --- Executes during object creation, after setting all properties.
function input3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calc.
function calc_Callback(hObject, eventdata, handles)
% hObject    handle to calc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=str2double(get(handles.input1,'string'));
y=str2double(get(handles.input2,'string'));
z=str2double(get(handles.input3,'string'));
l=str2double(get(handles.input4,'string'));
m=str2double(get(handles.input5,'string'));
n=str2double(get(handles.input6,'string'));
matrix=transform(x,y,z,l,m,n);
set(handles.mat1,'Data',matrix);




function input4_Callback(hObject, eventdata, handles)
% hObject    handle to input4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input4 as text
%        str2double(get(hObject,'String')) returns contents of input4 as a double


% --- Executes during object creation, after setting all properties.
function input4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input5_Callback(hObject, eventdata, handles)
% hObject    handle to input5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input5 as text
%        str2double(get(hObject,'String')) returns contents of input5 as a double


% --- Executes during object creation, after setting all properties.
function input5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input6_Callback(hObject, eventdata, handles)
% hObject    handle to input6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input6 as text
%        str2double(get(hObject,'String')) returns contents of input6 as a double


% --- Executes during object creation, after setting all properties.
function input6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in anim.
function anim_Callback(hObject, eventdata, handles)
% hObject    handle to anim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=str2double(get(handles.input1,'string'));
y=str2double(get(handles.input2,'string'));
z=str2double(get(handles.input3,'string'));
l=str2double(get(handles.input4,'string'));
m=str2double(get(handles.input5,'string'));
n=str2double(get(handles.input6,'string'));
tranimate([1 0 0 0;0 1 0 0; 0 0 1 0; 0 0 0 1],transform(x,y,z,l,m,n))


% --- Executes on button press in plot.
function plot_Callback(hObject, eventdata, handles)
% hObject    handle to plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=str2double(get(handles.input1,'string'));
y=str2double(get(handles.input2,'string'));
z=str2double(get(handles.input3,'string'));
l=str2double(get(handles.input4,'string'));
m=str2double(get(handles.input5,'string'));
n=str2double(get(handles.input6,'string'));
trplot(transform(x,y,z,l,m,n))



function eul1_Callback(hObject, eventdata, handles)
% hObject    handle to eul1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eul1 as text
%        str2double(get(hObject,'String')) returns contents of eul1 as a double


% --- Executes during object creation, after setting all properties.
function eul1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eul1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eul2_Callback(hObject, eventdata, handles)
% hObject    handle to eul2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eul2 as text
%        str2double(get(hObject,'String')) returns contents of eul2 as a double


% --- Executes during object creation, after setting all properties.
function eul2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eul2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eul3_Callback(hObject, eventdata, handles)
% hObject    handle to eul3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eul3 as text
%        str2double(get(hObject,'String')) returns contents of eul3 as a double


% --- Executes during object creation, after setting all properties.
function eul3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eul3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in calZYZ.
function calZYZ_Callback(hObject, eventdata, handles)
% hObject    handle to calZYZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=str2double(get(handles.eul1,'string'));
y=str2double(get(handles.eul2,'string'));
z=str2double(get(handles.eul3,'string'));
set(handles.eultable,'Data',transformzyz(x,y,z));


% --- Executes on button press in calZYX.
function calZYX_Callback(hObject, eventdata, handles)
% hObject    handle to calZYX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=str2double(get(handles.eul1,'string'));
y=str2double(get(handles.eul2,'string'));
z=str2double(get(handles.eul3,'string'));
handles.ls=transformzyx(x,y,z);
set(handles.eultable,'Data',transformzyx(x,y,z));



function r11_Callback(hObject, eventdata, handles)
% hObject    handle to r11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r11 as text
%        str2double(get(hObject,'String')) returns contents of r11 as a double


% --- Executes during object creation, after setting all properties.
function r11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r12_Callback(hObject, eventdata, handles)
% hObject    handle to r12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r12 as text
%        str2double(get(hObject,'String')) returns contents of r12 as a double


% --- Executes during object creation, after setting all properties.
function r12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r13_Callback(hObject, eventdata, handles)
% hObject    handle to r13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r13 as text
%        str2double(get(hObject,'String')) returns contents of r13 as a double


% --- Executes during object creation, after setting all properties.
function r13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r21_Callback(hObject, eventdata, handles)
% hObject    handle to r21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r21 as text
%        str2double(get(hObject,'String')) returns contents of r21 as a double


% --- Executes during object creation, after setting all properties.
function r21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r22_Callback(hObject, eventdata, handles)
% hObject    handle to r22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r22 as text
%        str2double(get(hObject,'String')) returns contents of r22 as a double


% --- Executes during object creation, after setting all properties.
function r22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r23_Callback(hObject, eventdata, handles)
% hObject    handle to r23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r23 as text
%        str2double(get(hObject,'String')) returns contents of r23 as a double


% --- Executes during object creation, after setting all properties.
function r23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r31_Callback(hObject, eventdata, handles)
% hObject    handle to r31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r31 as text
%        str2double(get(hObject,'String')) returns contents of r31 as a double


% --- Executes during object creation, after setting all properties.
function r31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r32_Callback(hObject, eventdata, handles)
% hObject    handle to r32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r32 as text
%        str2double(get(hObject,'String')) returns contents of r32 as a double


% --- Executes during object creation, after setting all properties.
function r32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r33_Callback(hObject, eventdata, handles)
% hObject    handle to r33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r33 as text
%        str2double(get(hObject,'String')) returns contents of r33 as a double


% --- Executes during object creation, after setting all properties.
function r33_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in eulinvzyx.
function eulinvzyx_Callback(hObject, eventdata, handles)
% hObject    handle to eulinvzyx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r11=str2double(get(handles.r11,'string'));
r21=str2double(get(handles.r21,'string'));
r31=str2double(get(handles.r31,'string'));
r32=str2double(get(handles.r32,'string'));
r33=str2double(get(handles.r33,'string'));
r31=str2double(get(handles.r31,'string'));
g=[atan2d(r32,r33);atan2d(-r31,(sqrt(power(r32,2)+power(r33,2))));atan2d(r21,r11)];
f=[atan2d(-r32,-r33);atan2d(-r31,-(sqrt(power(r32,2)+power(r33,2))));atan2d(-r21,-r11)];
X=[g f];
set(handles.angtable,'Data',X);
%f=[atan2d(-r32,-r33);atan2d(-r31,-(sqrt(power(r32,2)+power(r33,2))));atan2d(-r21,-r11)];
%set(handles.angtable,'string',f);


% --- Executes on button press in eulinvzyz.
function eulinvzyz_Callback(hObject, eventdata, handles)
% hObject    handle to eulinvzyz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r13=str2double(get(handles.r13,'string'));
r23=str2double(get(handles.r23,'string'));
r31=str2double(get(handles.r31,'string'));
r32=str2double(get(handles.r32,'string'));
r33=str2double(get(handles.r33,'string'));
g=[atan2d(r32,-r31);atan2d(sqrt(power(r13,2)+power(r23,2)),r33);atan2d(r23,r13)];  
f=[atan2d(-r32,r31);atan2d(-sqrt(power(r13,2)+power(r23,2)),r33);atan2d(-r23,-r13)];
X=[g f];
set(handles.angtable,'Data',X)  



function answer2set_Callback(hObject, eventdata, handles)
% hObject    handle to answer2set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of answer2set as text
%        str2double(get(hObject,'String')) returns contents of answer2set as a double


% --- Executes during object creation, after setting all properties.
function answer2set_CreateFcn(hObject, eventdata, handles)
% hObject    handle to answer2set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in transop.
function transop_Callback(hObject, eventdata, handles)
% hObject    handle to transop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run TRANSOP.m



function z1_Callback(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z1 as text
%        str2double(get(hObject,'String')) returns contents of z1 as a double


% --- Executes during object creation, after setting all properties.
function z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z2_Callback(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z2 as text
%        str2double(get(hObject,'String')) returns contents of z2 as a double


% --- Executes during object creation, after setting all properties.
function z2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z3_Callback(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z3 as text
%        str2double(get(hObject,'String')) returns contents of z3 as a double


% --- Executes during object creation, after setting all properties.
function z3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tmatcur.
function tmatcur_Callback(hObject, eventdata, handles)
% hObject    handle to tmatcur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
phi=str2double(get(handles.input1,'string'));
theta=str2double(get(handles.input2,'string'));
sai=str2double(get(handles.input3,'string'));
l=str2double(get(handles.input4,'string'));
m=str2double(get(handles.input5,'string'));
n=str2double(get(handles.input6,'string'));
matrix2=transform2(phi,theta,sai,l,m,n);
set(handles.mat1,'Data',matrix2);


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
phi=str2double(get(handles.input1,'string'));
theta=str2double(get(handles.input2,'string'));
sai=str2double(get(handles.input3,'string'));
l=str2double(get(handles.input4,'string'));
m=str2double(get(handles.input5,'string'));
n=str2double(get(handles.input6,'string'));
matrix2=transform2(phi,theta,sai,l,m,n);
tranimate([1 0 0 0;0 1 0 0; 0 0 1 0; 0 0 0 1],matrix2)
