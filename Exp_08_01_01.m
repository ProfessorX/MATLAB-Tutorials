function varargout = Exp_08_01_01(varargin)
% EXP_08_01_01 MATLAB code for Exp_08_01_01.fig
%      EXP_08_01_01, by itself, creates a new EXP_08_01_01 or raises the existing
%      singleton*.
%
%      H = EXP_08_01_01 returns the handle to a new EXP_08_01_01 or the handle to
%      the existing singleton*.
%
%      EXP_08_01_01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXP_08_01_01.M with the given input arguments.
%
%      EXP_08_01_01('Property','Value',...) creates a new EXP_08_01_01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Exp_08_01_01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Exp_08_01_01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Exp_08_01_01

% Last Modified by GUIDE v2.5 09-May-2013 17:41:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Exp_08_01_01_OpeningFcn, ...
                   'gui_OutputFcn',  @Exp_08_01_01_OutputFcn, ...
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


% --- Executes just before Exp_08_01_01 is made visible.
function Exp_08_01_01_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Exp_08_01_01 (see VARARGIN)

% Choose default command line output for Exp_08_01_01
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Exp_08_01_01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Exp_08_01_01_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
get(hObject, 'String');  % Read characters
zeta = str2double(get(hObject, 'String'));  % Change format
handles.t = 0: 0.05: 15;
handles.y = step(tf(1, [1, 2*zeta, 1]), handles.t);  % Calculate
cla  % Clear axis
line(handles.t, handles.y)  % Plot

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
