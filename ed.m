function varargout = ed(varargin)
% ED MATLAB code for ed.fig
%      ED, by itself, creates a new ED or raises the existing
%      singleton*.
%
%      H = ED returns the handle to a new ED or the handle to
%      the existing singleton*.
%
%      ED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ED.M with the given input arguments.
%
%      ED('Property','Value',...) creates a new ED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ed_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ed_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ed

% Last Modified by GUIDE v2.5 02-Dec-2019 17:21:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ed_OpeningFcn, ...
                   'gui_OutputFcn',  @ed_OutputFcn, ...
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


% --- Executes just before ed is made visible.
function ed_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ed (see VARARGIN)

% Choose default command line output for ed
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ed wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ed_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    a1=0.3
            a2=0.3
            d4=0.3
                                  
            L(1) = Link('revolute','d',0,'a',a1,'alpha',0);%Revolute('d',0,'a',a1,'alpha',0);
            L(2) = Link('revolute','d',0,'a',a2,'alpha',pi);
            L(3) = Link('prismatic','theta',0,'a',0,'alpha', 0);
            L(3).qlim = [0,0.3];
            L(4) = Link('revolute', 'd',d4, 'a',0, 'alpha',0);
            R = SerialLink(L,'name','SCARA') ;
             assignin('base','R',R);
            qd = [0.2,0.6,-0.9,2.9];  
            Td = R.fkine([qd]) ;
            W=[-1 1 -1 1 -1 1];
            
            plot(R,qd,'workspace', W)
            R.teach
            
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
 OrigDlgH = ancestor(hObject, 'figure');
delete(OrigDlgH);
ed
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
