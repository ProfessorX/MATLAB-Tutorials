function varargout = Exp_08_02_01(varargin)
% EXP_08_02_01 MATLAB code for Exp_08_02_01.fig
%      EXP_08_02_01, by itself, creates a new EXP_08_02_01 or raises the existing
%      singleton*.
%
%      H = EXP_08_02_01 returns the handle to a new EXP_08_02_01 or the handle to
%      the existing singleton*.
%
%      EXP_08_02_01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXP_08_02_01.M with the given input arguments.
%
%      EXP_08_02_01('Property','Value',...) creates a new EXP_08_02_01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Exp_08_02_01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Exp_08_02_01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Exp_08_02_01

% Last Modified by GUIDE v2.5 10-May-2013 10:33:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Exp_08_02_01_OpeningFcn, ...
                   'gui_OutputFcn',  @Exp_08_02_01_OutputFcn, ...
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

% Fucked out by Zhiyong Zhang. Fucked once more by Abraham Xiao
function handles = surfplot(handles)
% handles = surfplot(handles)  
% Just another plot function to be used by dummies~
% handles    Defined in MATLAB gui, almost the same meaning 
%            and function as in other programming languages.
zeta = handles.zeta;  % Damping ratio, zeta is a shorter name
t = handles.t;
listindex = get(handles.listbox1, 'Value');
Nt = length(t);  % Number of t, as suggests
if (handles.flag == 0)
  cla
  zmin = get(handles.slider1, 'Min');
  zmax = get(handles.slider1, 'Max');
  zt = zmin: 0.05: zmax;  % Prepare samplnig points, 0.05 could be changed
  Nz = length(zt);
  [ZT,T] = meshgrid(zt, t);
  Y = zeros(Nt, Nz);
  for k = 1:Nz
    Y(:,k) = step(tf(1, [1,2*zt(k),1]), t);
  end
  surface(ZT, T, Y)
  shading flat
else
  delete(handles.g1)  % Delete handles generated last time
  delete(handles.rline)  % Delete last plot
end

xz = ones(1, Nt) * zeta;
y1 = ones(1, Nt) * 1;
y = step(tf(1, [1,2*zeta,1]),t);
gz = [zeta, zeta, xz, zeta,zeta,xz];
gt = [t(1),t(1),t,t(end),t(end),fliplr(t)];
gy = [0, 1, y1, 1, 0, 0*y1];
handles.g1 = line(gz, gt, gy, 'Color', 'g', 'LineWidth', 1);  % Ref line
handles.rline = line(xz, t, y, 'Color', handles.Color, 'LineWidth', 2);
K = length(get(handles.listbox1, 'Value'));  % How many lists are chosen
for jj = 1: K
  switch listindex(jj)
    case 1
      % Do nothing
    case 2
      k95 = min(find(y>0.95, 1 ));
      k952 = [(k95-1), k95];
      t95 = interp(y(k952), t(k952), 0.95);  % Linear Interpolation
      line(zeta, t95, 0.95, 'Marker', '+', 'MarkerEdgeColor', 'k', ...
        'MarkerSize', 6);
    case 3
      [ym, km] = max(y);
      if (km<Nt && (ym-1)>0)  % Max Peak, please
        line(zeta, t(km), ym, 'Marker', '.', 'MarkerEdgeColor', ...
          'k', 'MarkerSize', 5);
      end
    case 4
      ii = max(find(abs(y-1) > 0.05, 1, 'last' ));  % Calm point, go fuck programmer
      if (ii < Nt)
        line(zeta, t(ii+1), y(ii+1), 'Color', 'r', 'Marker', 'o', ...
          'MarkerSize', 5)
      end
  end
end
xlabel('{\zeta}')
ylabel('t')
zlabel('y')
alpha(0.7)
view(75, 44)
        
        

% --- Executes just before Exp_08_02_01 is made visible.
function Exp_08_02_01_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Exp_08_02_01 (see VARARGIN)

% Choose default command line output for Exp_08_02_01
zeta = 0.3;  % Initial damping ratio
set(handles.edit1, 'String', num2str(zeta))  % Initializing editor
set(handles.slider1, 'Value', zeta)  % Initializing slider
set(handles.gridon, 'Value', 0)  % Initial state, off
set(handles.gridoff, 'Value', 1)  % Initial state, on----meaning Grid Off chosen
set(handles.listbox1, 'Value', 1)
handles.t = 0: 0.05: 15;  % Sampling points, seems no change
handles.Color = 'Red';  % Initial color
handles.zeta = zeta;
handles.flag = 0;  % Initial flag
handles = surfplot(handles);
handles.flag = 1;
handles.Color = 'Blue';

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Exp_08_02_01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Exp_08_02_01_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, ~)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in gridon.
function gridon_Callback(~, ~, handles)
% hObject    handle to gridon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gridon
set(handles.gridoff, 'Value', 0)
grid on

% --- Executes on button press in gridoff.
function gridoff_Callback(~, ~, handles)
% hObject    handle to gridoff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of gridoff
set(handles.gridon, 'Value', 0)
grid off


function edit1_Callback(hObject, ~, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
sz = get(hObject, 'String');  % Read input data
zeta = str2double(sz);  
set(handles.slider1, 'Value', zeta)
handles.zeta = zeta;
handles = surfplot(handles);  % Call plot function
guidata(hObject, handles);  % Update data, fuck me.


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, ~, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
zeta = get(hObject, 'Value');
set(handles.edit1, 'String', num2str(zeta))
handles.zeta = zeta;  % Update
handles = surfplot(handles);
% Update guidata
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, ~, ~)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, ~, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1
listindex = get(hObject, 'Value');  % Get all list numbers
if any(listindex == 1)
  set(handles.listbox1, 'Value', 1)
end
handles.flag = 0;  % When the list is changed, re-plot
handles = surfplot(handles);
handles.flag = 1;
guidata(hObject, handles)


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, ~, ~)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


