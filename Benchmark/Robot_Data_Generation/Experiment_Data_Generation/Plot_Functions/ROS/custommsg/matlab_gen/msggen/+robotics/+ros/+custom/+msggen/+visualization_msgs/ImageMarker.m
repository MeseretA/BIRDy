classdef ImageMarker < robotics.ros.Message
    %ImageMarker MATLAB implementation of visualization_msgs/ImageMarker
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2019 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'visualization_msgs/ImageMarker' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '1de93c67ec8858b831025a08fbf1b35c' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        CIRCLE = uint8(0)
        LINESTRIP = uint8(1)
        LINELIST = uint8(2)
        POLYGON = uint8(3)
        POINTS = uint8(4)
        ADD = uint8(0)
        REMOVE = uint8(1)
    end
    
    properties (Constant, Access = protected)
        DurationClass = robotics.ros.msg.internal.MessageFactory.getClassForType('duration') % Dispatch to MATLAB class for message type duration
        GeometryMsgsPointClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Point') % Dispatch to MATLAB class for message type geometry_msgs/Point
        StdMsgsColorRGBAClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/ColorRGBA') % Dispatch to MATLAB class for message type std_msgs/ColorRGBA
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        Ns
        Id
        Type
        Action
        Position
        Scale
        OutlineColor
        Filled
        FillColor
        Lifetime
        Points
        OutlineColors
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'Position', [], 'OutlineColor', [], 'FillColor', [], 'Lifetime', [], 'Points', [], 'OutlineColors', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Action', 'FillColor', 'Filled', 'Header', 'Id', 'Lifetime', 'Ns', 'OutlineColor', 'OutlineColors', 'Points', 'Position', 'Scale', 'Type'} % List of non-constant message properties
        ROSPropertyList = {'action', 'fill_color', 'filled', 'header', 'id', 'lifetime', 'ns', 'outline_color', 'outline_colors', 'points', 'position', 'scale', 'type'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = ImageMarker(msg)
            %ImageMarker Construct the message object ImageMarker
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'ImageMarker', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function ns = get.Ns(obj)
            %get.Ns Get the value for property Ns
            ns = char(obj.JavaMessage.getNs);
        end
        
        function set.Ns(obj, ns)
            %set.Ns Set the value for property Ns
            ns = convertStringsToChars(ns);
            
            validateattributes(ns, {'char', 'string'}, {}, 'ImageMarker', 'Ns');
            
            obj.JavaMessage.setNs(ns);
        end
        
        function id = get.Id(obj)
            %get.Id Get the value for property Id
            id = int32(obj.JavaMessage.getId);
        end
        
        function set.Id(obj, id)
            %set.Id Set the value for property Id
            validateattributes(id, {'numeric'}, {'nonempty', 'scalar'}, 'ImageMarker', 'Id');
            
            obj.JavaMessage.setId(id);
        end
        
        function type = get.Type(obj)
            %get.Type Get the value for property Type
            type = int32(obj.JavaMessage.getType);
        end
        
        function set.Type(obj, type)
            %set.Type Set the value for property Type
            validateattributes(type, {'numeric'}, {'nonempty', 'scalar'}, 'ImageMarker', 'Type');
            
            obj.JavaMessage.setType(type);
        end
        
        function action = get.Action(obj)
            %get.Action Get the value for property Action
            action = int32(obj.JavaMessage.getAction);
        end
        
        function set.Action(obj, action)
            %set.Action Set the value for property Action
            validateattributes(action, {'numeric'}, {'nonempty', 'scalar'}, 'ImageMarker', 'Action');
            
            obj.JavaMessage.setAction(action);
        end
        
        function position = get.Position(obj)
            %get.Position Get the value for property Position
            if isempty(obj.Cache.Position)
                obj.Cache.Position = feval(obj.GeometryMsgsPointClass, obj.JavaMessage.getPosition);
            end
            position = obj.Cache.Position;
        end
        
        function set.Position(obj, position)
            %set.Position Set the value for property Position
            validateattributes(position, {obj.GeometryMsgsPointClass}, {'nonempty', 'scalar'}, 'ImageMarker', 'Position');
            
            obj.JavaMessage.setPosition(position.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Position)
                obj.Cache.Position.setJavaObject(position.getJavaObject);
            end
        end
        
        function scale = get.Scale(obj)
            %get.Scale Get the value for property Scale
            scale = single(obj.JavaMessage.getScale);
        end
        
        function set.Scale(obj, scale)
            %set.Scale Set the value for property Scale
            validateattributes(scale, {'numeric'}, {'nonempty', 'scalar'}, 'ImageMarker', 'Scale');
            
            obj.JavaMessage.setScale(scale);
        end
        
        function outlinecolor = get.OutlineColor(obj)
            %get.OutlineColor Get the value for property OutlineColor
            if isempty(obj.Cache.OutlineColor)
                obj.Cache.OutlineColor = feval(obj.StdMsgsColorRGBAClass, obj.JavaMessage.getOutlineColor);
            end
            outlinecolor = obj.Cache.OutlineColor;
        end
        
        function set.OutlineColor(obj, outlinecolor)
            %set.OutlineColor Set the value for property OutlineColor
            validateattributes(outlinecolor, {obj.StdMsgsColorRGBAClass}, {'nonempty', 'scalar'}, 'ImageMarker', 'OutlineColor');
            
            obj.JavaMessage.setOutlineColor(outlinecolor.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.OutlineColor)
                obj.Cache.OutlineColor.setJavaObject(outlinecolor.getJavaObject);
            end
        end
        
        function filled = get.Filled(obj)
            %get.Filled Get the value for property Filled
            filled = typecast(int8(obj.JavaMessage.getFilled), 'uint8');
        end
        
        function set.Filled(obj, filled)
            %set.Filled Set the value for property Filled
            validateattributes(filled, {'numeric'}, {'nonempty', 'scalar'}, 'ImageMarker', 'Filled');
            
            obj.JavaMessage.setFilled(filled);
        end
        
        function fillcolor = get.FillColor(obj)
            %get.FillColor Get the value for property FillColor
            if isempty(obj.Cache.FillColor)
                obj.Cache.FillColor = feval(obj.StdMsgsColorRGBAClass, obj.JavaMessage.getFillColor);
            end
            fillcolor = obj.Cache.FillColor;
        end
        
        function set.FillColor(obj, fillcolor)
            %set.FillColor Set the value for property FillColor
            validateattributes(fillcolor, {obj.StdMsgsColorRGBAClass}, {'nonempty', 'scalar'}, 'ImageMarker', 'FillColor');
            
            obj.JavaMessage.setFillColor(fillcolor.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.FillColor)
                obj.Cache.FillColor.setJavaObject(fillcolor.getJavaObject);
            end
        end
        
        function lifetime = get.Lifetime(obj)
            %get.Lifetime Get the value for property Lifetime
            if isempty(obj.Cache.Lifetime)
                obj.Cache.Lifetime = feval(obj.DurationClass, obj.JavaMessage.getLifetime);
            end
            lifetime = obj.Cache.Lifetime;
        end
        
        function set.Lifetime(obj, lifetime)
            %set.Lifetime Set the value for property Lifetime
            validateattributes(lifetime, {obj.DurationClass}, {'nonempty', 'scalar'}, 'ImageMarker', 'Lifetime');
            
            obj.JavaMessage.setLifetime(lifetime.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Lifetime)
                obj.Cache.Lifetime.setJavaObject(lifetime.getJavaObject);
            end
        end
        
        function points = get.Points(obj)
            %get.Points Get the value for property Points
            if isempty(obj.Cache.Points)
                javaArray = obj.JavaMessage.getPoints;
                array = obj.readJavaArray(javaArray, obj.GeometryMsgsPointClass);
                obj.Cache.Points = feval(obj.GeometryMsgsPointClass, array);
            end
            points = obj.Cache.Points;
        end
        
        function set.Points(obj, points)
            %set.Points Set the value for property Points
            if ~isvector(points) && isempty(points)
                % Allow empty [] input
                points = feval([obj.GeometryMsgsPointClass '.empty'], 0, 1);
            end
            
            validateattributes(points, {obj.GeometryMsgsPointClass}, {'vector'}, 'ImageMarker', 'Points');
            
            javaArray = obj.JavaMessage.getPoints;
            array = obj.writeJavaArray(points, javaArray, obj.GeometryMsgsPointClass);
            obj.JavaMessage.setPoints(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Points)
                obj.Cache.Points = [];
                obj.Cache.Points = obj.Points;
            end
        end
        
        function outlinecolors = get.OutlineColors(obj)
            %get.OutlineColors Get the value for property OutlineColors
            if isempty(obj.Cache.OutlineColors)
                javaArray = obj.JavaMessage.getOutlineColors;
                array = obj.readJavaArray(javaArray, obj.StdMsgsColorRGBAClass);
                obj.Cache.OutlineColors = feval(obj.StdMsgsColorRGBAClass, array);
            end
            outlinecolors = obj.Cache.OutlineColors;
        end
        
        function set.OutlineColors(obj, outlinecolors)
            %set.OutlineColors Set the value for property OutlineColors
            if ~isvector(outlinecolors) && isempty(outlinecolors)
                % Allow empty [] input
                outlinecolors = feval([obj.StdMsgsColorRGBAClass '.empty'], 0, 1);
            end
            
            validateattributes(outlinecolors, {obj.StdMsgsColorRGBAClass}, {'vector'}, 'ImageMarker', 'OutlineColors');
            
            javaArray = obj.JavaMessage.getOutlineColors;
            array = obj.writeJavaArray(outlinecolors, javaArray, obj.StdMsgsColorRGBAClass);
            obj.JavaMessage.setOutlineColors(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.OutlineColors)
                obj.Cache.OutlineColors = [];
                obj.Cache.OutlineColors = obj.OutlineColors;
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.Position = [];
            obj.Cache.OutlineColor = [];
            obj.Cache.FillColor = [];
            obj.Cache.Lifetime = [];
            obj.Cache.Points = [];
            obj.Cache.OutlineColors = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Ns = obj.Ns;
            cpObj.Id = obj.Id;
            cpObj.Type = obj.Type;
            cpObj.Action = obj.Action;
            cpObj.Scale = obj.Scale;
            cpObj.Filled = obj.Filled;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
            cpObj.Position = copy(obj.Position);
            cpObj.OutlineColor = copy(obj.OutlineColor);
            cpObj.FillColor = copy(obj.FillColor);
            cpObj.Lifetime = copy(obj.Lifetime);
            cpObj.Points = copy(obj.Points);
            cpObj.OutlineColors = copy(obj.OutlineColors);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Ns = strObj.Ns;
            obj.Id = strObj.Id;
            obj.Type = strObj.Type;
            obj.Action = strObj.Action;
            obj.Scale = strObj.Scale;
            obj.Filled = strObj.Filled;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.Position = feval([obj.GeometryMsgsPointClass '.loadobj'], strObj.Position);
            obj.OutlineColor = feval([obj.StdMsgsColorRGBAClass '.loadobj'], strObj.OutlineColor);
            obj.FillColor = feval([obj.StdMsgsColorRGBAClass '.loadobj'], strObj.FillColor);
            obj.Lifetime = feval([obj.DurationClass '.loadobj'], strObj.Lifetime);
            PointsCell = arrayfun(@(x) feval([obj.GeometryMsgsPointClass '.loadobj'], x), strObj.Points, 'UniformOutput', false);
            obj.Points = vertcat(PointsCell{:});
            OutlineColorsCell = arrayfun(@(x) feval([obj.StdMsgsColorRGBAClass '.loadobj'], x), strObj.OutlineColors, 'UniformOutput', false);
            obj.OutlineColors = vertcat(OutlineColorsCell{:});
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Ns = obj.Ns;
            strObj.Id = obj.Id;
            strObj.Type = obj.Type;
            strObj.Action = obj.Action;
            strObj.Scale = obj.Scale;
            strObj.Filled = obj.Filled;
            strObj.Header = saveobj(obj.Header);
            strObj.Position = saveobj(obj.Position);
            strObj.OutlineColor = saveobj(obj.OutlineColor);
            strObj.FillColor = saveobj(obj.FillColor);
            strObj.Lifetime = saveobj(obj.Lifetime);
            strObj.Points = arrayfun(@(x) saveobj(x), obj.Points);
            strObj.OutlineColors = arrayfun(@(x) saveobj(x), obj.OutlineColors);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.visualization_msgs.ImageMarker.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.visualization_msgs.ImageMarker;
            obj.reload(strObj);
        end
    end
end
