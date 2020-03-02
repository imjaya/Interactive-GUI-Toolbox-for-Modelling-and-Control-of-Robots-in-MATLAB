function varargout = Robot_Maker(varargin)
% ROBOT_MAKER MATLAB code for Robot_Maker.fig
%      ROBOT_MAKER, by itself, creates a new ROBOT_MAKER or raises the existing
%      singleton*.
%
%      H = ROBOT_MAKER returns the handle to a new ROBOT_MAKER or the handle to
%      the existing singleton*.
%
%      ROBOT_MAKER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOT_MAKER.M with the given input arguments.
%
%      ROBOT_MAKER('Property','Value',...) creates a new ROBOT_MAKER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Robot_Maker_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Robot_Maker_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Robot_Maker

% Last Modified by GUIDE v2.5 03-Dec-2019 01:01:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Robot_Maker_OpeningFcn, ...
                   'gui_OutputFcn',  @Robot_Maker_OutputFcn, ...
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


% --- Executes just before Robot_Maker is made visible.
function Robot_Maker_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Robot_Maker (see VARARGIN)

% Choose default command line output for Robot_Maker
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Robot_Maker wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Robot_Maker_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Revolute.
function Revolute_Callback(hObject, eventdata, handles)
    
    Joint=1;
    assignin('base','Joint',Joint);
    
    set(handles.a,'Enable','on')
    set(handles.alpha,'Enable','on')
    set(handles.d,'Enable','on')
    set(handles.ap,'Enable','off')
    set(handles.alphap,'Enable','off')
    set(handles.min,'Enable','off')
    set(handles.max,'Enable','off')
    
% hObject    handle to Revolute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Revolute



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_Callback(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha as text
%        str2double(get(hObject,'String')) returns contents of alpha as a double


% --- Executes during object creation, after setting all properties.
function alpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ap_Callback(hObject, eventdata, handles)
% hObject    handle to ap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ap as text
%        str2double(get(hObject,'String')) returns contents of ap as a double


% --- Executes during object creation, after setting all properties.
function ap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alphap_Callback(hObject, eventdata, handles)
% hObject    handle to alphap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alphap as text
%        str2double(get(hObject,'String')) returns contents of alphap as a double


% --- Executes during object creation, after setting all properties.
function alphap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alphap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of min as text
%        str2double(get(hObject,'String')) returns contents of min as a double


% --- Executes during object creation, after setting all properties.
function min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function max_Callback(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max as text
%        str2double(get(hObject,'String')) returns contents of max as a double


% --- Executes during object creation, after setting all properties.
function max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Prismatic.
function Prismatic_Callback(hObject, eventdata, handles)
    Joint=0;
    assignin('base','Joint',Joint);
    set(handles.a,'Enable','off')
    set(handles.alpha,'Enable','off')
    set(handles.d,'Enable','off')
    set(handles.ap,'Enable','on')
    set(handles.alphap,'Enable','on')
    set(handles.min,'Enable','on')
    set(handles.max,'Enable','on')
    
% hObject    handle to Prismatic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Prismatic


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    Joint=evalin('base', 'Joint');
    i=evalin('base', 'i');
    i=i+1;
    
    count=evalin('base', 'count');
    q=sym('q', [1 count]);
if i<=count   
    if i==1
       if Joint==1
        a(i)=str2double(get(handles.a,'string'));
        alpha(i)=str2double(get(handles.alpha,'string'));
        alpha(i)=alpha(i)*(pi/180);
        d(i)=str2double(get(handles.d,'string'));
        theta(i)=q(i);
        jointtype(i)=1;
        min(i)=0;
        max(i)=0;
        L(i)=Link('revolute', 'd', d(i), 'a',a(i), 'alpha',alpha(i)); 
        % R = evalin('base', 'R');
        % qd = evalin('base', 'qd');
        % W = evalin('base', 'W');
        % W=0;
        assignin('base','a',a);
        assignin('base','alpha',alpha);
        assignin('base','d',d);
         assignin('base','theta',theta);
        assignin('base','jointtype',jointtype);
        assignin('base','min',min);
        assignin('base','max',max);
        assignin('base','L',L);
        
        set(handles.a, 'String', '');
        set(handles.d, 'String', '');
        set(handles.alpha, 'String', '');
        assignin('base','i',i);
       else
          a(i)=str2double(get(handles.ap,'string'));
        alpha(i)=str2double(get(handles.alphap,'string'));
        alpha(i)=alpha(i)*(pi/180);
        d(i)=0;
        jointtype(i)=0;
        theta(i)=0;
        min(i)=str2double(get(handles.min,'string'));
        max(i)=str2double(get(handles.max,'string'));
        L(i)=Link('prismatic', 'theta',0, 'a', a(i), 'alpha', alpha(i));
       L(i).qlim = [min(i),max(i)];
        
        % R = evalin('base', 'R');
        % qd = evalin('base', 'qd');
        % W = evalin('base', 'W');
        % W=0;
        assignin('base','a',a);
        assignin('base','alpha',alpha);
        assignin('base','d',d);
        assignin('base','theta',theta);
        assignin('base','jointtype',jointtype);
        assignin('base','min',min);
        assignin('base','max',max);
        assignin('base','L',L);
        
        set(handles.ap, 'String', '');
        set(handles.alphap, 'String', '');
        set(handles.min, 'String', '');
        set(handles.max, 'String', '');
        assignin('base','i',i); 
       end
    else
        if Joint==1
            a=evalin('base', 'a');
            alpha=evalin('base', 'alpha');
            d=evalin('base', 'd');
            theta=evalin('base', 'theta');
            jointtype=evalin('base', 'jointtype');
            min=evalin('base', 'min');
            max=evalin('base', 'max');
            L=evalin('base', 'L');
            a(i)=str2double(get(handles.a,'string'));
            alpha(i)=str2double(get(handles.alpha,'string'));
            alpha(i)=alpha(i)*(pi/180);
            d(i)=str2double(get(handles.d,'string'));
            theta(i)=q(i);
            jointtype(i)=1;
            min(i)=0;
            max(i)=0;
            L(i)=Link('revolute', 'd', d(i), 'a',a(i), 'alpha',alpha(i)); 
            assignin('base','a',a);
            assignin('base','alpha',alpha);
            assignin('base','d',d);
             assignin('base','theta',theta);
            assignin('base','jointtype',jointtype);
            assignin('base','min',min);
            assignin('base','max',max);
            assignin('base','L',L);

            set(handles.a, 'String', '');
            set(handles.d, 'String', '');
            set(handles.alpha, 'String', '');
            assignin('base','i',i);
        else
            a=evalin('base', 'a');
            alpha=evalin('base', 'alpha');
            d=evalin('base', 'd');
            theta=evalin('base', 'theta');
            jointtype=evalin('base', 'jointtype');
            min=evalin('base', 'min');
            max=evalin('base', 'max');
            L=evalin('base', 'L');
            
            a(i)=str2double(get(handles.ap,'string'));
            alpha(i)=str2double(get(handles.alphap,'string'));
            alpha(i)=alpha(i)*(pi/180);
            d(i)=0;
            jointtype(i)=0;
            theta(i)=0;
            min(i)=str2double(get(handles.min,'string'));
            max(i)=str2double(get(handles.max,'string'));
            L(i)=Link('prismatic', 'theta',0, 'a', a(i), 'alpha', alpha(i));
            L(i).qlim = [min(i),max(i)]; 

            assignin('base','a',a);
            assignin('base','alpha',alpha);
            assignin('base','d',d);
            assignin('base','theta',theta);
            assignin('base','jointtype',jointtype);
            assignin('base','min',min);
            assignin('base','max',max);
            assignin('base','L',L);

            set(handles.ap, 'String', '');
            set(handles.alphap, 'String', '');
            set(handles.min, 'String', '');
            set(handles.max, 'String', '');
            assignin('base','i',i);
        end
    
    end

if i==count
    R=SerialLink(L,'name','robo');
    
    DH=[a;
    alpha;
    d;
    theta;
    jointtype;
    min;
    max
    ];
    assignin('base','R',R);
    assignin('base','DH',DH);
    close
    mainpanel
    
end
end
    
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Prismactic.
function Prismactic_Callback(hObject, eventdata, handles)
    Joint=0;
    assignin('base','Joint',Joint);
    
    set(handles.a,'Enable','off')
    set(handles.alpha,'Enable','off')
    set(handles.d,'Enable','off')
    set(handles.ap,'Enable','on')
    set(handles.alphap,'Enable','on')
    set(handles.min,'Enable','on')
    set(handles.max,'Enable','on')
% hObject    handle to Prismactic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Prismactic
