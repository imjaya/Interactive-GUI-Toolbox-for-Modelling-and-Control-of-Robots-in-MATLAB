function varargout = dh(varargin)
% DH MATLAB code for dh.fig
%      DH, by itself, creates a new DH or raises the existing
%      singleton*.
%
%      H = DH returns the handle to a new DH or the handle to
%      the existing singleton*.
%
%      DH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DH.M with the given input arguments.
%
%      DH('Property','Value',...) creates a new DH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dh_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dh_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dh

% Last Modified by GUIDE v2.5 02-Dec-2019 20:01:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dh_OpeningFcn, ...
                   'gui_OutputFcn',  @dh_OutputFcn, ...
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


% --- Executes just before dh is made visible.
function dh_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dh (see VARARGIN)

% Choose default command line output for dh
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
evalin( 'base', 'clear all' );

% UIWAIT makes dh wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dh_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function numberlink_Callback(hObject, eventdata, handles)
% hObject    handle to numberlink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numberlink as text
%        str2double(get(hObject,'String')) returns contents of numberlink as a double


% --- Executes during object creation, after setting all properties.
function numberlink_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numberlink (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Next.
function Next_Callback(hObject, eventdata, handles)
 
i=0;

count=str2double(get(handles.numberlink,'string'));
 assignin('base','count',count);
 assignin('base','i',i);
 close
 Robot_Maker
 
% hObject    handle to Next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
