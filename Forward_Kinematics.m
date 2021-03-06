function varargout = Forward_Kinematics(varargin)
% FORWARD_KINEMATICS MATLAB code for Forward_Kinematics.fig
%      FORWARD_KINEMATICS, by itself, creates a new FORWARD_KINEMATICS or raises the existing
%      singleton*.
%
%      H = FORWARD_KINEMATICS returns the handle to a new FORWARD_KINEMATICS or the handle to
%      the existing singleton*.
%
%      FORWARD_KINEMATICS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FORWARD_KINEMATICS.M with the given input arguments.
%
%      FORWARD_KINEMATICS('Property','Value',...) creates a new FORWARD_KINEMATICS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Forward_Kinematics_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Forward_Kinematics_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Forward_Kinematics

% Last Modified by GUIDE v2.5 03-Dec-2019 17:49:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Forward_Kinematics_OpeningFcn, ...
                   'gui_OutputFcn',  @Forward_Kinematics_OutputFcn, ...
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


% --- Executes just before Forward_Kinematics is made visible.
function Forward_Kinematics_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Forward_Kinematics (see VARARGIN)

% Choose default command line output for Forward_Kinematics
    handles.output = hObject;

% Update handles structure
    guidata(hObject, handles);
    count=evalin('base','count');  
    set(handles.table,'Data',cell(count,1));
    Tbuttoncount=1;
    assignin('base','Tbuttoncount',Tbuttoncount);
% UIWAIT makes Forward_Kinematics wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Forward_Kinematics_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
    close all
    mainpanel
   
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in teach.
function teach_Callback(hObject, eventdata, handles)
    
    
    
     rfk1=evalin('base','rfk1');
     
     R=evalin('base','R');
     [~,num]=size(R.a);
     l1=norm(R.a,1);
    l2=norm(R.d,1);
    l=2*(l1+l2);
    axis auto;
    W=[-l l -l l -l l];
    Q=zeros(1,num);
    
     if rfk1==1
         userangles = str2double(get(handles.table,'data'));
        
         
         R.plot(userangles'*(pi/180),'workspace',W);
         assignin('userangles',userangles);
         
         
     else
         R.plot(Q,'workspace',W);    
         R.teach;
          
     end
    
% hObject    handle to teach (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
    
    
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function table_CreateFcn(hObject, eventdata, handles)
% hObject    handle to table (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
    set(handles.table,'Enable','on')
    rfk1=1;
    assignin('base','rfk1',rfk1); 
    
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in teachradiobutton.
function teachradiobutton_Callback(hObject, eventdata, handles)
    set(handles.table,'Enable','off')
    rfk1=0;
    assignin('base','rfk1',rfk1);
    
% hObject    handle to teachradiobutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of teachradiobutton


% --- Executes on button press in Tra.
function Tra_Callback(hObject, eventdata, handles)
    userangles = str2double(get(handles.table,'data'));
        
         
        
    Tbuttoncount=evalin('base','Tbuttoncount');
    rfk1=evalin('base','rfk1')

    R=evalin('base','R')
    DH=evalin('base','DH')
    [~,m]=size(R.a);
    TM=sym('T',[1 m]);
    TS=arrayfun(@char, TM, 'uniform', 0);
    [T,Tf]=For_Kinematics(R,DH);
    [Tv,Tfv]=For_Kin_angles(R,DH,userangles');
    
    if rfk1==1
        if Tbuttoncount<=m
            set(handles.t1, 'String', TS(Tbuttoncount));
           
            set(handles.tqa, 'data',Tv{Tbuttoncount});
            Tbuttoncount=Tbuttoncount+1;
            assignin('base','Tbuttoncount',Tbuttoncount);

        elseif Tbuttoncount==m+1
        
            set(handles.tqa, 'data',Tfv);
            set(handles.t1, 'String', 'T Final');

    
        else
            Tbuttoncount=1;
            assignin('base','Tbuttoncount',Tbuttoncount);
        end
        
        else
    if Tbuttoncount<=m
        set(handles.t1, 'String', TS(Tbuttoncount));
        qc = arrayfun(@char, T{Tbuttoncount}, 'uniform', 0);
        set(handles.tqa, 'data',qc);
        Tbuttoncount=Tbuttoncount+1;
        assignin('base','Tbuttoncount',Tbuttoncount);
        
    elseif Tbuttoncount==m+1
        qc = arrayfun(@char, Tf, 'uniform', 0);
        set(handles.tqa, 'data',qc);
        set(handles.t1, 'String', 'T Final');
        
    
    else
        Tbuttoncount=1;
        assignin('base','Tbuttoncount',Tbuttoncount);
    end
    
    end
        

        
    
    %handles.tqa.Data = union(handles.tqa.Data,qs);
    
    
    
% hObject    handle to Tra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function transform_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to transform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
