function varargout = inverse_kin(varargin)
% INVERSE_KIN MATLAB code for inverse_kin.fig
%      INVERSE_KIN, by itself, creates a new INVERSE_KIN or raises the existing
%      singleton*.
%
%      H = INVERSE_KIN returns the handle to a new INVERSE_KIN or the handle to
%      the existing singleton*.
%
%      INVERSE_KIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INVERSE_KIN.M with the given input arguments.
%
%      INVERSE_KIN('Property','Value',...) creates a new INVERSE_KIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inverse_kin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inverse_kin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inverse_kin

% Last Modified by GUIDE v2.5 03-Dec-2019 21:53:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inverse_kin_OpeningFcn, ...
                   'gui_OutputFcn',  @inverse_kin_OutputFcn, ...
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


% --- Executes just before inverse_kin is made visible.
function inverse_kin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inverse_kin (see VARARGIN)

% Choose default command line output for inverse_kin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
 count=evalin('base','count');  
    set(handles.inang,'Data',cell(count,1));
     set(handles.q,'Data',cell(count,1));
     set(handles.tra,'Data',cell(4,4));
      set(handles.dq,'Data',cell(count,1));

% UIWAIT makes inverse_kin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = inverse_kin_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function t1_Callback(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t1 as text
%        str2double(get(hObject,'String')) returns contents of t1 as a double


% --- Executes during object creation, after setting all properties.
function t1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t2_Callback(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t2 as text
%        str2double(get(hObject,'String')) returns contents of t2 as a double


% --- Executes during object creation, after setting all properties.
function t2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t3_Callback(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t3 as text
%        str2double(get(hObject,'String')) returns contents of t3 as a double


% --- Executes during object creation, after setting all properties.
function t3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t4_Callback(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t4 as text
%        str2double(get(hObject,'String')) returns contents of t4 as a double


% --- Executes during object creation, after setting all properties.
function t4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t5_Callback(hObject, eventdata, handles)
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t5 as text
%        str2double(get(hObject,'String')) returns contents of t5 as a double


% --- Executes during object creation, after setting all properties.
function t5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t6_Callback(hObject, eventdata, handles)
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t6 as text
%        str2double(get(hObject,'String')) returns contents of t6 as a double


% --- Executes during object creation, after setting all properties.
function t6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
        px=str2double(get(handles.t1,'string'));
        py=str2double(get(handles.t2,'string'));
        DR=pi/180;
        R=evalin('base','R');

            pz=str2double(get(handles.t3,'string'));
            phi=str2double(get(handles.t4,'string'));
        theta=str2double(get(handles.t5,'string'));

            psi=str2double(get(handles.t6,'string'));
             
            q=str2double(get(handles.inang,'data'));
            pd=[px py pz]';
            od=[phi theta psi]
            [q,dq] = inverse_kinematics_Jac(R,pd,od*DR,q*DR);
            set(handles.q,'Data',q);
            T=R.fkine(q');
            set(handles.tra,'Data',T);
            set(handles.dq,'Data',dq);

            
            
            

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
