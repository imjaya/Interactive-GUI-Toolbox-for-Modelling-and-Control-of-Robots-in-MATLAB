function varargout = workspace_new(varargin)
% WORKSPACE_NEW MATLAB code for workspace_new.fig
%      WORKSPACE_NEW, by itself, creates a new WORKSPACE_NEW or raises the existing
%      singleton*.
%
%      H = WORKSPACE_NEW returns the handle to a new WORKSPACE_NEW or the handle to
%      the existing singleton*.
%
%      WORKSPACE_NEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WORKSPACE_NEW.M with the given input arguments.
%
%      WORKSPACE_NEW('Property','Value',...) creates a new WORKSPACE_NEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before workspace_new_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to workspace_new_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help workspace_new

% Last Modified by GUIDE v2.5 03-Dec-2019 20:27:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @workspace_new_OpeningFcn, ...
                   'gui_OutputFcn',  @workspace_new_OutputFcn, ...
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


% --- Executes just before workspace_new is made visible.
function workspace_new_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to workspace_new (see VARARGIN)

% Choose default command line output for workspace_new
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
count=evalin('base','count');  
    set(handles.tab1,'Data',cell(count,2));

% UIWAIT makes workspace_new wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = workspace_new_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    limitangles = str2double(get(handles.tab1,'data'));
    R=evalin('base','R');
    plot_workspace(R,limitangles*(pi/180));
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
