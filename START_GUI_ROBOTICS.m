function varargout = START_GUI_ROBOTICS(varargin)
% START_GUI_ROBOTICS MATLAB code for START_GUI_ROBOTICS.fig
%      START_GUI_ROBOTICS, by itself, creates a new START_GUI_ROBOTICS or raises the existing
%      singleton*.
%
%      H = START_GUI_ROBOTICS returns the handle to a new START_GUI_ROBOTICS or the handle to
%      the existing singleton*.
%
%      START_GUI_ROBOTICS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in START_GUI_ROBOTICS.M with the given input arguments.
%
%      START_GUI_ROBOTICS('Property','Value',...) creates a new START_GUI_ROBOTICS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before START_GUI_ROBOTICS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to START_GUI_ROBOTICS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help START_GUI_ROBOTICS

% Last Modified by GUIDE v2.5 03-Dec-2019 23:53:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @START_GUI_ROBOTICS_OpeningFcn, ...
                   'gui_OutputFcn',  @START_GUI_ROBOTICS_OutputFcn, ...
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


% --- Executes just before START_GUI_ROBOTICS is made visible.
function START_GUI_ROBOTICS_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to START_GUI_ROBOTICS (see VARARGIN)

% Choose default command line output for START_GUI_ROBOTICS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes START_GUI_ROBOTICS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = START_GUI_ROBOTICS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
   
    close
    dh
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
