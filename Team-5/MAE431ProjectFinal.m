classdef MAE431ProjectFinal < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        Equation1Tab                    matlab.ui.container.Tab
        SemiInfiniteMediumInputsPanel   matlab.ui.container.Panel
        PipeLengthLmEditField_2Label    matlab.ui.control.Label
        PipeLengthLmEditField_2         matlab.ui.control.NumericEditField
        MediumHeightzmEditField_3Label  matlab.ui.control.Label
        MediumHeightzmEditField_3       matlab.ui.control.NumericEditField
        MediumSurfaceTemperatureKEditField_3Label  matlab.ui.control.Label
        MediumSurfaceTemperatureKEditField_3  matlab.ui.control.NumericEditField
        IsothermalCylinderDiameterDmEditFieldLabel  matlab.ui.control.Label
        IsothermalCylinderDiameterDmEditField  matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_3Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_3  matlab.ui.control.NumericEditField
        IsothermalCylinderTemperatureKEditField_3Label  matlab.ui.control.Label
        IsothermalCylinderTemperatureKEditField_3  matlab.ui.control.NumericEditField
        SemiInfiniteMediumOutputsPanel  matlab.ui.container.Panel
        ShapeConductionFactorEditFieldLabel  matlab.ui.control.Label
        ShapeConductionFactorEditField  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditFieldLabel  matlab.ui.control.Label
        SteadyHeatTransferEditField     matlab.ui.control.NumericEditField
        ErrorifapplicableEditFieldLabel  matlab.ui.control.Label
        ErrorifapplicableEditField      matlab.ui.control.EditField
        CalculateButton_5               matlab.ui.control.StateButton
        Equation3Tab                    matlab.ui.container.Tab
        TwoParallelIsothermalCylindersInputsPanel  matlab.ui.container.Panel
        LengthofPipesmEditFieldLabel    matlab.ui.control.Label
        LengthofPipesmEditField         matlab.ui.control.NumericEditField
        DiameterofPipe1mEditFieldLabel  matlab.ui.control.Label
        DiameterofPipe1mEditField       matlab.ui.control.NumericEditField
        DiameterofPipe2mEditFieldLabel  matlab.ui.control.Label
        DiameterofPipe2mEditField       matlab.ui.control.NumericEditField
        DepthofPipesmEditFieldLabel     matlab.ui.control.Label
        DepthofPipesmEditField          matlab.ui.control.NumericEditField
        SurfaceTemperatureofPipe1KEditFieldLabel  matlab.ui.control.Label
        SurfaceTemperatureofPipe1KEditField  matlab.ui.control.NumericEditField
        SurfaceTemperatureofPipe2KEditFieldLabel  matlab.ui.control.Label
        SurfaceTemperatureofPipe2KEditField  matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_10Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_10  matlab.ui.control.NumericEditField
        TwoParallelIsothermalCylindersOutputsPanel  matlab.ui.container.Panel
        ShapeConductionFactorEditField_8Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_8  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditField_8Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_8   matlab.ui.control.NumericEditField
        ErrorMessageEditField_3Label    matlab.ui.control.Label
        ErrorMessageEditField_3         matlab.ui.control.EditField
        CalculateButton_6               matlab.ui.control.Button
        Equation5Tab                    matlab.ui.container.Tab
        SemiInfiniteMediumInputsPanel_3  matlab.ui.container.Panel
        PipeLengthLmEditField_4Label    matlab.ui.control.Label
        PipeLengthLmEditField_4         matlab.ui.control.NumericEditField
        CenterofCylindertotheMediumsedgezmLabel  matlab.ui.control.Label
        CenterofCylindertotheMediumsedgezmEditField  matlab.ui.control.NumericEditField
        MediumSurfaceTemperatureT2KLabel  matlab.ui.control.Label
        MediumSurfaceTemperatureT2KEditField  matlab.ui.control.NumericEditField
        IsothermalCylinderDiameterDmEditField_2Label  matlab.ui.control.Label
        IsothermalCylinderDiameterDmEditField_2  matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_5Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_5  matlab.ui.control.NumericEditField
        IsothermalCylinderTemperatureT1KEditFieldLabel  matlab.ui.control.Label
        IsothermalCylinderTemperatureT1KEditField  matlab.ui.control.NumericEditField
        SemiInfiniteMediumOutputsPanel_3  matlab.ui.container.Panel
        ShapeConductionFactorEditField_3Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_3  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditField_3Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_3   matlab.ui.control.NumericEditField
        ErrorifapplicableEditField_3Label  matlab.ui.control.Label
        ErrorifapplicableEditField_3    matlab.ui.control.EditField
        CalculateButton_9               matlab.ui.control.Button
        Equation7Tab                    matlab.ui.container.Tab
        SemiInfiniteMediumInputsPanel_5  matlab.ui.container.Panel
        PipeLengthLmEditField_5Label    matlab.ui.control.Label
        PipeLengthLmEditField_5         matlab.ui.control.NumericEditField
        MediumHeightzmEditField_4Label  matlab.ui.control.Label
        MediumHeightzmEditField_4       matlab.ui.control.NumericEditField
        InnerDiameterSurfaceTempKEditFieldLabel  matlab.ui.control.Label
        InnerDiameterSurfaceTempKEditField  matlab.ui.control.NumericEditField
        OuterDiameterSurfaceTempKEditFieldLabel  matlab.ui.control.Label
        OuterDiameterSurfaceTempKEditField  matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_9Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_9  matlab.ui.control.NumericEditField
        IsothermalCylinderDiameterD1mEditFieldLabel  matlab.ui.control.Label
        IsothermalCylinderDiameterD1mEditField  matlab.ui.control.NumericEditField
        OuterDiameterD2mEditField_2Label  matlab.ui.control.Label
        OuterDiameterD2mEditField_2     matlab.ui.control.NumericEditField
        SemiInfiniteMediumOutputsPanel_5  matlab.ui.container.Panel
        ErrorifapplicableEditField_4Label  matlab.ui.control.Label
        ErrorifapplicableEditField_4    matlab.ui.control.EditField
        ShapeConductionFactorEditField_7Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_7  matlab.ui.control.EditField
        SteadyHeatTransferEditField_7Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_7   matlab.ui.control.EditField
        CalculateButton_8               matlab.ui.control.Button
        Equation9Tab                    matlab.ui.container.Tab
        LongCylinderInSemiInfiniteMediumInputsPanel  matlab.ui.container.Panel
        LengthofPipemEditFieldLabel     matlab.ui.control.Label
        LengthofPipemEditField          matlab.ui.control.NumericEditField
        PipeInnerDiametermEditFieldLabel  matlab.ui.control.Label
        PipeInnerDiametermEditField     matlab.ui.control.NumericEditField
        PipeOuterDiameternEditFieldLabel  matlab.ui.control.Label
        PipeOuterDiameternEditField     matlab.ui.control.NumericEditField
        TemperatureofInnerDiameterKEditFieldLabel  matlab.ui.control.Label
        TemperatureofInnerDiameterKEditField  matlab.ui.control.NumericEditField
        TemperatureofOuterDiameterKEditFieldLabel  matlab.ui.control.Label
        TemperatureofOuterDiameterKEditField  matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_11Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_11  matlab.ui.control.NumericEditField
        LongCylinderInSemiInfiniteMediumOutputsPanel  matlab.ui.container.Panel
        ShapeConductionFactorEditField_9Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_9  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditField_9Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_9   matlab.ui.control.NumericEditField
        ErrorMessageEditField_4Label    matlab.ui.control.Label
        ErrorMessageEditField_4         matlab.ui.control.EditField
        CalculateButton_7               matlab.ui.control.Button
        Equation11Tab                   matlab.ui.container.Tab
        SemiInfiniteMediumInputsPanel_4  matlab.ui.container.Panel
        MediumSurfaceTemperatureT2KEditField_2Label  matlab.ui.control.Label
        MediumSurfaceTemperatureT2KEditField_2  matlab.ui.control.NumericEditField
        InnerDiameterD1mEditFieldLabel  matlab.ui.control.Label
        InnerDiameterD1mEditField       matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_6Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_6  matlab.ui.control.NumericEditField
        IsothermalCylinderTemperatureT1KEditField_2Label  matlab.ui.control.Label
        IsothermalCylinderTemperatureT1KEditField_2  matlab.ui.control.NumericEditField
        OuterDiameterD2mEditFieldLabel  matlab.ui.control.Label
        OuterDiameterD2mEditField       matlab.ui.control.NumericEditField
        SemiInfiniteMediumOutputsPanel_4  matlab.ui.container.Panel
        ShapeConductionFactorEditField_4Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_4  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditField_4Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_4   matlab.ui.control.NumericEditField
        CalculateButton_2               matlab.ui.control.Button
        Equation13Tab                   matlab.ui.container.Tab
        AdjoiningWallInputsPanel        matlab.ui.container.Panel
        WallThickness1mEditFieldLabel   matlab.ui.control.Label
        WallThickness1mEditField        matlab.ui.control.NumericEditField
        WallThickness2mEditFieldLabel   matlab.ui.control.Label
        WallThickness2mEditField        matlab.ui.control.NumericEditField
        InnerWallTemperatureKEditFieldLabel  matlab.ui.control.Label
        InnerWallTemperatureKEditField  matlab.ui.control.NumericEditField
        OuterWallTemperatureKEditFieldLabel  matlab.ui.control.Label
        OuterWallTemperatureKEditField  matlab.ui.control.NumericEditField
        LengthofAdjoinedWallsmEditFieldLabel  matlab.ui.control.Label
        LengthofAdjoinedWallsmEditField  matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_7Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_7  matlab.ui.control.NumericEditField
        AdjoiningWallOutputsPanel       matlab.ui.container.Panel
        ShapeConductionFactorEditField_5Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_5  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditField_5Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_5   matlab.ui.control.NumericEditField
        ErrorMessageEditFieldLabel      matlab.ui.control.Label
        ErrorMessageEditField           matlab.ui.control.EditField
        CalculateButton_3               matlab.ui.control.Button
        Equation15Tab                   matlab.ui.container.Tab
        SphereBuriedinSemiInifiniteMediumInputsPanel  matlab.ui.container.Panel
        SphereDiametermEditFieldLabel   matlab.ui.control.Label
        SphereDiametermEditField        matlab.ui.control.NumericEditField
        SphereDepthmEditFieldLabel      matlab.ui.control.Label
        SphereDepthmEditField           matlab.ui.control.NumericEditField
        AboveGroundSurfaceTempKEditFieldLabel  matlab.ui.control.Label
        AboveGroundSurfaceTempKEditField  matlab.ui.control.NumericEditField
        SphereSurfaceTempKEditFieldLabel  matlab.ui.control.Label
        SphereSurfaceTempKEditField     matlab.ui.control.NumericEditField
        MediumThermalCondkWmKEditField_8Label  matlab.ui.control.Label
        MediumThermalCondkWmKEditField_8  matlab.ui.control.NumericEditField
        SphereBuriedinSemiInifiniteMediumOutputsPanel  matlab.ui.container.Panel
        ShapeConductionFactorEditField_6Label  matlab.ui.control.Label
        ShapeConductionFactorEditField_6  matlab.ui.control.NumericEditField
        SteadyHeatTransferEditField_6Label  matlab.ui.control.Label
        SteadyHeatTransferEditField_6   matlab.ui.control.NumericEditField
        ErrorMessageEditField_2Label    matlab.ui.control.Label
        ErrorMessageEditField_2         matlab.ui.control.EditField
        CalculateButton_4               matlab.ui.control.Button
        HeatTransferofShapesWithinaSemiInfiniteMediumLabel  matlab.ui.control.Label
    end

    methods (Access = private)

        % Size changed function: Equation1Tab
        function Equation1TabSizeChanged(app, event)
           
       
            
        end

        % Value changed function: CalculateButton_5
        function CalculateButton_5ValueChanged(app, event)
            %Code for Equation 1 
            
            L = app.PipeLengthLmEditField_2.Value;
            z = app.MediumHeightzmEditField_3.Value;
            D = app.IsothermalCylinderDiameterDmEditField.Value;
            T2 = app.MediumSurfaceTemperatureKEditField_3.Value;
            T1 = app.IsothermalCylinderTemperatureKEditField_3.Value;
            k = app.MediumThermalCondkWmKEditField_3.Value;
            
            S = 2*pi*L/(log(4*z/D));
            
            if z <= 1.5*D
                app.ErrorifapplicableEditField.Value = "z must be 1.5x bigger than D ";
                S=0;
                Q=0;
            elseif L < 10*D
                S=0;
                Q=0;
                app.ErrorifapplicableEditField.Value = "L must be much greater than D";
            else 
                Q = S*k*(T1-T2);
            end
                
            % Display output values
            app.ShapeConductionFactorEditField.Value = S;
            app.SteadyHeatTransferEditField.Value = Q;            
        end

        % Button pushed function: CalculateButton_2
        function CalculateButton_2Pushed(app, event)
             % Equation 11 Callback
             % Read values from the inputs

            D1 = app.InnerDiameterD1mEditField.Value;
            D2 = app.OuterDiameterD2mEditField.Value;
            T2 = app.MediumSurfaceTemperatureT2KEditField_2.Value;
            T1 = app.IsothermalCylinderTemperatureT1KEditField_2.Value;
            k = app.MediumThermalCondkWmKEditField_6.Value;

           
           % S = the conduction shape factor of a Spherical Layer
           S = (2*pi*D1*D2)/(D2-D1);

           % Q = the steady rate of heat transfer between the two surfaces
           Q = S*k*(T1-T2);
           
    
            % Display output values
            app.ShapeConductionFactorEditField_4.Value = S;
            app.SteadyHeatTransferEditField_4.Value = Q;
        
        end

        % Button pushed function: CalculateButton_6
        function CalculateButton_6Pushed(app, event)
            % Code for Equation 3 (buttonpush)
            
         L = app.LengthofPipesmEditField.Value;
         D1 = app.DiameterofPipe1mEditField.Value;
         D2 = app.DiameterofPipe2mEditField.Value;
         z = app.DepthofPipesmEditField.Value;
         T1 = app.SurfaceTemperatureofPipe1KEditField.Value;
         T2 = app.SurfaceTemperatureofPipe2KEditField.Value;
         k = app.MediumThermalCondkWmKEditField_10.Value;   
            
         numerator = 2*pi*L;      %% L is length of both cylinders
         denominator1 = (4*z^2-D1^2-D2^2)/(2*D1*D2);   %% z is the distance between the two cylinders
         denominator2 = acosh(denominator1);
         S = numerator/denominator2;
         
         if L <= 10*D1  % Ensure conditions for problem are met
         Q=0;S=0;app.ErrorMessageEditField_3.Value = "Length must be much greater than the diameter D1";
         
         elseif L <= 10*D2  % Ensure conditions for problem are met
          Q=0;S=0;app.ErrorMessageEditField_3.Value = "Length must be much greater than the diameter D2";
          
         elseif L <= 10*z  % Ensure conditions for problem are met
         Q=0;S=0;app.ErrorMessageEditField_3.Value = "Your depth must be 10 times less than your length";
         
         else
         Q = k*S*(T1-T2);
         app.ErrorMessageEditField.Value = "";
         end
        
         app.ShapeConductionFactorEditField_8.Value = S;
         app.SteadyHeatTransferEditField_8.Value = Q;

        end

        % Button pushed function: CalculateButton_8
        function CalculateButton_8Pushed(app, event)
            %Code for Equation 7 (RunEquation7ButtonPush)
            
            L = app.PipeLengthLmEditField_5.Value;
            z = app.MediumHeightzmEditField_4.Value;
            D1 = app.IsothermalCylinderDiameterD1mEditField.Value;
            D2 = app.OuterDiameterD2mEditField_2.Value;
            T1 = app.InnerDiameterSurfaceTempKEditField.Value;
            T2 = app.OuterDiameterSurfaceTempKEditField.Value;
            k = app.MediumThermalCondkWmKEditField_9.Value;
            
            S = 2*pi*L/acosh((D1^2+D2^2-4*z^2)/(2*D1*D2));

            if L < D2
                Q=0;
                S=0;
                app.ErrorifapplicableEditField_4.Value = "L must be greater than D2";
            elseif z + D1 > D2/2
                Q=0;
                S=0;
                app.ErrorifapplicableEditField_4.Value = "D1 plus z must be smaller than D2/2";
            else 
                Q = S*k*(T1-T2);
    
            end
            
            %Display output values
            app.ShapeConductionFactorEditField_7.Value = num2str(S);
            app.SteadyHeatTransferEditField_7.Value = num2str(Q);
            
        end

        % Button pushed function: CalculateButton_7
        function CalculateButton_7Pushed(app, event)
            % Code for Equation 9 (buttonpush_2)
            
        L = app.LengthofPipemEditField.Value;   % L is length of cylinders
        k = app.MediumThermalCondkWmKEditField_11.Value;
        T1 = app.TemperatureofInnerDiameterKEditField.Value;
        T2 = app.TemperatureofOuterDiameterKEditField.Value;
        D1 = app.PipeInnerDiametermEditField.Value; % D1 and T1 are internal diameter and temperature of the cylinder
        D2 = app.PipeOuterDiameternEditField.Value; % D2 and T2 are outer diameter and temperature of the cylinder
            
            
               
        numerator = 2*pi*L;      
        denominator = log((D2/D1));
        S = numerator/denominator;
        Q = k*S*(T1-T2);
        app.ShapeConductionFactorEditField_9.Value = S;
        app.SteadyHeatTransferEditField_9.Value = Q;
        
        
        end

        % Button pushed function: CalculateButton_3
        function CalculateButton_3Pushed(app, event)
        %Equation 13 Code 
            
        L = app.LengthofAdjoinedWallsmEditField.Value;     % Length of adjoined wall for Eq. 13
        k = app.MediumThermalCondkWmKEditField_7.Value;    % Thermal conductivity of Eq. 13
        T1 = app.InnerWallTemperatureKEditField.Value;     % Inner wall temperautre of adjoined walls for Eq. 13
        T2 = app.OuterWallTemperatureKEditField.Value;     % Outwer wall temperautre of adjoined wall for Eq.13      
        t1 = app.WallThickness1mEditField.Value;           % Wall one thickness for Eq. 13 
        t2 = app.WallThickness2mEditField.Value;           % Wall two thickness for Eq. 13
        
        
        S = 0.54*L;
        if t1~=t2
            app.ErrorMessageEditField.Value = "The wall thicknesses must be the same for this calculation";
            Q = 0;
            S = 0;
    
        else Q = S*k*(T1-T2);  %the steady rate of heat transfer between the two surfaces.
    
        end
        
        app.ShapeConductionFactorEditField_5.Value = S;
        app.SteadyHeatTransferEditField_5.Value = Q;
        end

        % Button pushed function: CalculateButton_4
        function CalculateButton_4Pushed(app, event)
         % Equation 15 Code
         
         z = app.SphereDepthmEditField.Value;
         k = app.MediumThermalCondkWmKEditField_8.Value;
         T1 = app.SphereSurfaceTempKEditField.Value;
         T2 = app.AboveGroundSurfaceTempKEditField.Value;
         D = app.SphereDiametermEditField.Value;
         
         S = 2*pi*D/(1-.25*D/z);   % Conduciton shape factor S for an isothermal sphere buried in a semi-infinite medium

        if D/2 >= z
            app.ErrorMessageEditField_2.Value = "The sphere is not fully buried in the semi-infinite medium";
            Q = 0;
            S = 0;
    
        else Q = S*k*(T1-T2);  % the steady rate of heat transfer between an isothermal sphere 
                              % buried in a semi-infinite medium.
    
        end
        
        app.ShapeConductionFactorEditField_6.Value = S;
        app.SteadyHeatTransferEditField_6.Value = Q;
        end

        % Button pushed function: CalculateButton_9
        function CalculateButton_9Pushed(app, event)
           % Equation 5 Callback
           % Read values from the inputs

            L = app.PipeLengthLmEditField_4.Value;
            z = app.CenterofCylindertotheMediumsedgezmEditField.Value;
            D = app.IsothermalCylinderDiameterDmEditField_2.Value;
            T2 = app.MediumSurfaceTemperatureT2KEditField.Value;
            T1 = app.IsothermalCylinderTemperatureT1KEditField.Value;
            k = app.MediumThermalCondkWmKEditField_5.Value;

           
            % S = the conduction shape factor of a Circular Isothermal Cylinder
            S = (2*pi*L)/(log(8*z/pi*D));

            % Meeting the minimum z distance requirement of z < .5D
            if z < 0.5*D
                Q = 0;
                S = 0;
            app.ErrorifapplicableEditField_3.Value = "z must be greater than (.5)D";
           % Q = the steady rate of heat transfer between the two surfaces
            else Q = S*k*(T1-T2);
            end
           
    
            % Display output values
            app.ShapeConductionFactorEditField_3.Value = S;
            app.SteadyHeatTransferEditField_3.Value = Q;
            
            
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure
            app.UIFigure = uifigure;
            app.UIFigure.Position = [100 100 734 490];
            app.UIFigure.Name = 'UI Figure';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 734 446];

            % Create Equation1Tab
            app.Equation1Tab = uitab(app.TabGroup);
            app.Equation1Tab.SizeChangedFcn = createCallbackFcn(app, @Equation1TabSizeChanged, true);
            app.Equation1Tab.Title = 'Equation 1';

            % Create SemiInfiniteMediumInputsPanel
            app.SemiInfiniteMediumInputsPanel = uipanel(app.Equation1Tab);
            app.SemiInfiniteMediumInputsPanel.TitlePosition = 'centertop';
            app.SemiInfiniteMediumInputsPanel.Title = 'Semi-Infinite Medium Inputs';
            app.SemiInfiniteMediumInputsPanel.FontWeight = 'bold';
            app.SemiInfiniteMediumInputsPanel.Position = [1 59 369 346];

            % Create PipeLengthLmEditField_2Label
            app.PipeLengthLmEditField_2Label = uilabel(app.SemiInfiniteMediumInputsPanel);
            app.PipeLengthLmEditField_2Label.HorizontalAlignment = 'right';
            app.PipeLengthLmEditField_2Label.Position = [109 285 101 22];
            app.PipeLengthLmEditField_2Label.Text = 'Pipe Length L (m)';

            % Create PipeLengthLmEditField_2
            app.PipeLengthLmEditField_2 = uieditfield(app.SemiInfiniteMediumInputsPanel, 'numeric');
            app.PipeLengthLmEditField_2.Position = [225 285 84 22];

            % Create MediumHeightzmEditField_3Label
            app.MediumHeightzmEditField_3Label = uilabel(app.SemiInfiniteMediumInputsPanel);
            app.MediumHeightzmEditField_3Label.HorizontalAlignment = 'right';
            app.MediumHeightzmEditField_3Label.Position = [85 235 125 22];
            app.MediumHeightzmEditField_3Label.Text = 'Medium Height z (m)';

            % Create MediumHeightzmEditField_3
            app.MediumHeightzmEditField_3 = uieditfield(app.SemiInfiniteMediumInputsPanel, 'numeric');
            app.MediumHeightzmEditField_3.Position = [225 235 84 22];

            % Create MediumSurfaceTemperatureKEditField_3Label
            app.MediumSurfaceTemperatureKEditField_3Label = uilabel(app.SemiInfiniteMediumInputsPanel);
            app.MediumSurfaceTemperatureKEditField_3Label.HorizontalAlignment = 'right';
            app.MediumSurfaceTemperatureKEditField_3Label.Position = [27 148 183 22];
            app.MediumSurfaceTemperatureKEditField_3Label.Text = 'Medium Surface Temperature (K)';

            % Create MediumSurfaceTemperatureKEditField_3
            app.MediumSurfaceTemperatureKEditField_3 = uieditfield(app.SemiInfiniteMediumInputsPanel, 'numeric');
            app.MediumSurfaceTemperatureKEditField_3.Position = [225 148 84 22];

            % Create IsothermalCylinderDiameterDmEditFieldLabel
            app.IsothermalCylinderDiameterDmEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel);
            app.IsothermalCylinderDiameterDmEditFieldLabel.HorizontalAlignment = 'right';
            app.IsothermalCylinderDiameterDmEditFieldLabel.Position = [11 190 195 22];
            app.IsothermalCylinderDiameterDmEditFieldLabel.Text = 'Isothermal Cylinder Diameter D (m)';

            % Create IsothermalCylinderDiameterDmEditField
            app.IsothermalCylinderDiameterDmEditField = uieditfield(app.SemiInfiniteMediumInputsPanel, 'numeric');
            app.IsothermalCylinderDiameterDmEditField.Position = [225 190 84 22];

            % Create MediumThermalCondkWmKEditField_3Label
            app.MediumThermalCondkWmKEditField_3Label = uilabel(app.SemiInfiniteMediumInputsPanel);
            app.MediumThermalCondkWmKEditField_3Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_3Label.Position = [12 55 198 22];
            app.MediumThermalCondkWmKEditField_3Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_3
            app.MediumThermalCondkWmKEditField_3 = uieditfield(app.SemiInfiniteMediumInputsPanel, 'numeric');
            app.MediumThermalCondkWmKEditField_3.Position = [226 55 84 22];

            % Create IsothermalCylinderTemperatureKEditField_3Label
            app.IsothermalCylinderTemperatureKEditField_3Label = uilabel(app.SemiInfiniteMediumInputsPanel);
            app.IsothermalCylinderTemperatureKEditField_3Label.HorizontalAlignment = 'right';
            app.IsothermalCylinderTemperatureKEditField_3Label.Position = [11 101 200 22];
            app.IsothermalCylinderTemperatureKEditField_3Label.Text = 'Isothermal Cylinder Temperature (K)';

            % Create IsothermalCylinderTemperatureKEditField_3
            app.IsothermalCylinderTemperatureKEditField_3 = uieditfield(app.SemiInfiniteMediumInputsPanel, 'numeric');
            app.IsothermalCylinderTemperatureKEditField_3.Position = [226 101 83 22];

            % Create SemiInfiniteMediumOutputsPanel
            app.SemiInfiniteMediumOutputsPanel = uipanel(app.Equation1Tab);
            app.SemiInfiniteMediumOutputsPanel.TitlePosition = 'centertop';
            app.SemiInfiniteMediumOutputsPanel.Title = 'Semi-Infinite Medium Outputs';
            app.SemiInfiniteMediumOutputsPanel.FontWeight = 'bold';
            app.SemiInfiniteMediumOutputsPanel.Position = [369 59 364 203];

            % Create ShapeConductionFactorEditFieldLabel
            app.ShapeConductionFactorEditFieldLabel = uilabel(app.SemiInfiniteMediumOutputsPanel);
            app.ShapeConductionFactorEditFieldLabel.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditFieldLabel.Position = [29 130 141 22];
            app.ShapeConductionFactorEditFieldLabel.Text = 'Shape Conduction Factor';

            % Create ShapeConductionFactorEditField
            app.ShapeConductionFactorEditField = uieditfield(app.SemiInfiniteMediumOutputsPanel, 'numeric');
            app.ShapeConductionFactorEditField.Position = [185 130 100 22];

            % Create SteadyHeatTransferEditFieldLabel
            app.SteadyHeatTransferEditFieldLabel = uilabel(app.SemiInfiniteMediumOutputsPanel);
            app.SteadyHeatTransferEditFieldLabel.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditFieldLabel.Position = [51 79 119 22];
            app.SteadyHeatTransferEditFieldLabel.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField
            app.SteadyHeatTransferEditField = uieditfield(app.SemiInfiniteMediumOutputsPanel, 'numeric');
            app.SteadyHeatTransferEditField.Position = [185 79 100 22];

            % Create ErrorifapplicableEditFieldLabel
            app.ErrorifapplicableEditFieldLabel = uilabel(app.SemiInfiniteMediumOutputsPanel);
            app.ErrorifapplicableEditFieldLabel.HorizontalAlignment = 'right';
            app.ErrorifapplicableEditFieldLabel.Position = [7 35 107 22];
            app.ErrorifapplicableEditFieldLabel.Text = 'Error (if applicable)';

            % Create ErrorifapplicableEditField
            app.ErrorifapplicableEditField = uieditfield(app.SemiInfiniteMediumOutputsPanel, 'text');
            app.ErrorifapplicableEditField.Position = [123 35 186 22];

            % Create CalculateButton_5
            app.CalculateButton_5 = uibutton(app.Equation1Tab, 'state');
            app.CalculateButton_5.ValueChangedFcn = createCallbackFcn(app, @CalculateButton_5ValueChanged, true);
            app.CalculateButton_5.Text = 'Calculate';
            app.CalculateButton_5.Position = [317 15 100 22];

            % Create Equation3Tab
            app.Equation3Tab = uitab(app.TabGroup);
            app.Equation3Tab.Title = 'Equation 3';

            % Create TwoParallelIsothermalCylindersInputsPanel
            app.TwoParallelIsothermalCylindersInputsPanel = uipanel(app.Equation3Tab);
            app.TwoParallelIsothermalCylindersInputsPanel.TitlePosition = 'centertop';
            app.TwoParallelIsothermalCylindersInputsPanel.Title = 'Two Parallel Isothermal Cylinders Inputs';
            app.TwoParallelIsothermalCylindersInputsPanel.FontWeight = 'bold';
            app.TwoParallelIsothermalCylindersInputsPanel.Position = [0 50 367 341];

            % Create LengthofPipesmEditFieldLabel
            app.LengthofPipesmEditFieldLabel = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.LengthofPipesmEditFieldLabel.HorizontalAlignment = 'right';
            app.LengthofPipesmEditFieldLabel.Position = [140 288 110 22];
            app.LengthofPipesmEditFieldLabel.Text = 'Length of Pipes (m)';

            % Create LengthofPipesmEditField
            app.LengthofPipesmEditField = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.LengthofPipesmEditField.Position = [265 288 53 22];

            % Create DiameterofPipe1mEditFieldLabel
            app.DiameterofPipe1mEditFieldLabel = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.DiameterofPipe1mEditFieldLabel.HorizontalAlignment = 'right';
            app.DiameterofPipe1mEditFieldLabel.Position = [124 246 126 22];
            app.DiameterofPipe1mEditFieldLabel.Text = 'Diameter of Pipe 1 (m)';

            % Create DiameterofPipe1mEditField
            app.DiameterofPipe1mEditField = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.DiameterofPipe1mEditField.Position = [265 246 53 22];

            % Create DiameterofPipe2mEditFieldLabel
            app.DiameterofPipe2mEditFieldLabel = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.DiameterofPipe2mEditFieldLabel.HorizontalAlignment = 'right';
            app.DiameterofPipe2mEditFieldLabel.Position = [124 203 126 22];
            app.DiameterofPipe2mEditFieldLabel.Text = 'Diameter of Pipe 2 (m)';

            % Create DiameterofPipe2mEditField
            app.DiameterofPipe2mEditField = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.DiameterofPipe2mEditField.Position = [265 203 53 22];

            % Create DepthofPipesmEditFieldLabel
            app.DepthofPipesmEditFieldLabel = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.DepthofPipesmEditFieldLabel.HorizontalAlignment = 'right';
            app.DepthofPipesmEditFieldLabel.Position = [144 159 106 22];
            app.DepthofPipesmEditFieldLabel.Text = 'Depth of Pipes (m)';

            % Create DepthofPipesmEditField
            app.DepthofPipesmEditField = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.DepthofPipesmEditField.Position = [265 159 53 22];

            % Create SurfaceTemperatureofPipe1KEditFieldLabel
            app.SurfaceTemperatureofPipe1KEditFieldLabel = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.SurfaceTemperatureofPipe1KEditFieldLabel.HorizontalAlignment = 'right';
            app.SurfaceTemperatureofPipe1KEditFieldLabel.Position = [63 115 187 22];
            app.SurfaceTemperatureofPipe1KEditFieldLabel.Text = 'Surface Temperature of Pipe 1 (K)';

            % Create SurfaceTemperatureofPipe1KEditField
            app.SurfaceTemperatureofPipe1KEditField = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.SurfaceTemperatureofPipe1KEditField.Position = [265 115 53 22];

            % Create SurfaceTemperatureofPipe2KEditFieldLabel
            app.SurfaceTemperatureofPipe2KEditFieldLabel = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.SurfaceTemperatureofPipe2KEditFieldLabel.HorizontalAlignment = 'right';
            app.SurfaceTemperatureofPipe2KEditFieldLabel.Position = [63 71 187 22];
            app.SurfaceTemperatureofPipe2KEditFieldLabel.Text = 'Surface Temperature of Pipe 2 (K)';

            % Create SurfaceTemperatureofPipe2KEditField
            app.SurfaceTemperatureofPipe2KEditField = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.SurfaceTemperatureofPipe2KEditField.Position = [265 71 53 22];

            % Create MediumThermalCondkWmKEditField_10Label
            app.MediumThermalCondkWmKEditField_10Label = uilabel(app.TwoParallelIsothermalCylindersInputsPanel);
            app.MediumThermalCondkWmKEditField_10Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_10Label.Position = [53 29 197 22];
            app.MediumThermalCondkWmKEditField_10Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_10
            app.MediumThermalCondkWmKEditField_10 = uieditfield(app.TwoParallelIsothermalCylindersInputsPanel, 'numeric');
            app.MediumThermalCondkWmKEditField_10.Position = [265 29 53 22];

            % Create TwoParallelIsothermalCylindersOutputsPanel
            app.TwoParallelIsothermalCylindersOutputsPanel = uipanel(app.Equation3Tab);
            app.TwoParallelIsothermalCylindersOutputsPanel.TitlePosition = 'centertop';
            app.TwoParallelIsothermalCylindersOutputsPanel.Title = 'Two Parallel Isothermal Cylinders Outputs';
            app.TwoParallelIsothermalCylindersOutputsPanel.FontWeight = 'bold';
            app.TwoParallelIsothermalCylindersOutputsPanel.Position = [366 50 367 176];

            % Create ShapeConductionFactorEditField_8Label
            app.ShapeConductionFactorEditField_8Label = uilabel(app.TwoParallelIsothermalCylindersOutputsPanel);
            app.ShapeConductionFactorEditField_8Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_8Label.Position = [111 115 141 22];
            app.ShapeConductionFactorEditField_8Label.Text = 'Shape Conduction Factor';

            % Create ShapeConductionFactorEditField_8
            app.ShapeConductionFactorEditField_8 = uieditfield(app.TwoParallelIsothermalCylindersOutputsPanel, 'numeric');
            app.ShapeConductionFactorEditField_8.Position = [267 115 58 22];

            % Create SteadyHeatTransferEditField_8Label
            app.SteadyHeatTransferEditField_8Label = uilabel(app.TwoParallelIsothermalCylindersOutputsPanel);
            app.SteadyHeatTransferEditField_8Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_8Label.Position = [133 71 119 22];
            app.SteadyHeatTransferEditField_8Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_8
            app.SteadyHeatTransferEditField_8 = uieditfield(app.TwoParallelIsothermalCylindersOutputsPanel, 'numeric');
            app.SteadyHeatTransferEditField_8.Position = [267 71 58 22];

            % Create ErrorMessageEditField_3Label
            app.ErrorMessageEditField_3Label = uilabel(app.TwoParallelIsothermalCylindersOutputsPanel);
            app.ErrorMessageEditField_3Label.HorizontalAlignment = 'right';
            app.ErrorMessageEditField_3Label.Position = [43 29 84 22];
            app.ErrorMessageEditField_3Label.Text = 'Error Message';

            % Create ErrorMessageEditField_3
            app.ErrorMessageEditField_3 = uieditfield(app.TwoParallelIsothermalCylindersOutputsPanel, 'text');
            app.ErrorMessageEditField_3.Position = [142 29 183 22];

            % Create CalculateButton_6
            app.CalculateButton_6 = uibutton(app.Equation3Tab, 'push');
            app.CalculateButton_6.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_6Pushed, true);
            app.CalculateButton_6.Position = [317 14 100 22];
            app.CalculateButton_6.Text = 'Calculate';

            % Create Equation5Tab
            app.Equation5Tab = uitab(app.TabGroup);
            app.Equation5Tab.Title = 'Equation 5';

            % Create SemiInfiniteMediumInputsPanel_3
            app.SemiInfiniteMediumInputsPanel_3 = uipanel(app.Equation5Tab);
            app.SemiInfiniteMediumInputsPanel_3.TitlePosition = 'centertop';
            app.SemiInfiniteMediumInputsPanel_3.Title = 'Semi-Infinite Medium Inputs';
            app.SemiInfiniteMediumInputsPanel_3.FontWeight = 'bold';
            app.SemiInfiniteMediumInputsPanel_3.Position = [3 51 366 343];

            % Create PipeLengthLmEditField_4Label
            app.PipeLengthLmEditField_4Label = uilabel(app.SemiInfiniteMediumInputsPanel_3);
            app.PipeLengthLmEditField_4Label.HorizontalAlignment = 'right';
            app.PipeLengthLmEditField_4Label.Position = [126 282 101 22];
            app.PipeLengthLmEditField_4Label.Text = 'Pipe Length L (m)';

            % Create PipeLengthLmEditField_4
            app.PipeLengthLmEditField_4 = uieditfield(app.SemiInfiniteMediumInputsPanel_3, 'numeric');
            app.PipeLengthLmEditField_4.Position = [242 282 84 22];

            % Create CenterofCylindertotheMediumsedgezmLabel
            app.CenterofCylindertotheMediumsedgezmLabel = uilabel(app.SemiInfiniteMediumInputsPanel_3);
            app.CenterofCylindertotheMediumsedgezmLabel.HorizontalAlignment = 'right';
            app.CenterofCylindertotheMediumsedgezmLabel.Position = [5 236 250 22];
            app.CenterofCylindertotheMediumsedgezmLabel.Text = 'Center of Cylinder to the Mediums edge z (m)';

            % Create CenterofCylindertotheMediumsedgezmEditField
            app.CenterofCylindertotheMediumsedgezmEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_3, 'numeric');
            app.CenterofCylindertotheMediumsedgezmEditField.Position = [269 235 57 22];

            % Create MediumSurfaceTemperatureT2KLabel
            app.MediumSurfaceTemperatureT2KLabel = uilabel(app.SemiInfiniteMediumInputsPanel_3);
            app.MediumSurfaceTemperatureT2KLabel.HorizontalAlignment = 'right';
            app.MediumSurfaceTemperatureT2KLabel.Position = [26 55 201 22];
            app.MediumSurfaceTemperatureT2KLabel.Text = 'Medium Surface Temperature T2 (K)';

            % Create MediumSurfaceTemperatureT2KEditField
            app.MediumSurfaceTemperatureT2KEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_3, 'numeric');
            app.MediumSurfaceTemperatureT2KEditField.Position = [242 55 84 22];

            % Create IsothermalCylinderDiameterDmEditField_2Label
            app.IsothermalCylinderDiameterDmEditField_2Label = uilabel(app.SemiInfiniteMediumInputsPanel_3);
            app.IsothermalCylinderDiameterDmEditField_2Label.HorizontalAlignment = 'right';
            app.IsothermalCylinderDiameterDmEditField_2Label.Position = [28 190 195 22];
            app.IsothermalCylinderDiameterDmEditField_2Label.Text = 'Isothermal Cylinder Diameter D (m)';

            % Create IsothermalCylinderDiameterDmEditField_2
            app.IsothermalCylinderDiameterDmEditField_2 = uieditfield(app.SemiInfiniteMediumInputsPanel_3, 'numeric');
            app.IsothermalCylinderDiameterDmEditField_2.Position = [242 190 84 22];

            % Create MediumThermalCondkWmKEditField_5Label
            app.MediumThermalCondkWmKEditField_5Label = uilabel(app.SemiInfiniteMediumInputsPanel_3);
            app.MediumThermalCondkWmKEditField_5Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_5Label.Position = [28 142 198 22];
            app.MediumThermalCondkWmKEditField_5Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_5
            app.MediumThermalCondkWmKEditField_5 = uieditfield(app.SemiInfiniteMediumInputsPanel_3, 'numeric');
            app.MediumThermalCondkWmKEditField_5.Position = [242 142 84 22];

            % Create IsothermalCylinderTemperatureT1KEditFieldLabel
            app.IsothermalCylinderTemperatureT1KEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel_3);
            app.IsothermalCylinderTemperatureT1KEditFieldLabel.HorizontalAlignment = 'right';
            app.IsothermalCylinderTemperatureT1KEditFieldLabel.Position = [11 98 217 22];
            app.IsothermalCylinderTemperatureT1KEditFieldLabel.Text = 'Isothermal Cylinder Temperature T1 (K)';

            % Create IsothermalCylinderTemperatureT1KEditField
            app.IsothermalCylinderTemperatureT1KEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_3, 'numeric');
            app.IsothermalCylinderTemperatureT1KEditField.Position = [243 98 83 22];

            % Create SemiInfiniteMediumOutputsPanel_3
            app.SemiInfiniteMediumOutputsPanel_3 = uipanel(app.Equation5Tab);
            app.SemiInfiniteMediumOutputsPanel_3.TitlePosition = 'centertop';
            app.SemiInfiniteMediumOutputsPanel_3.Title = 'Semi-Infinite Medium Outputs';
            app.SemiInfiniteMediumOutputsPanel_3.FontWeight = 'bold';
            app.SemiInfiniteMediumOutputsPanel_3.Position = [368 51 365 191];

            % Create ShapeConductionFactorEditField_3Label
            app.ShapeConductionFactorEditField_3Label = uilabel(app.SemiInfiniteMediumOutputsPanel_3);
            app.ShapeConductionFactorEditField_3Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_3Label.Position = [22 123 141 22];
            app.ShapeConductionFactorEditField_3Label.Text = 'Shape Conduction Factor';

            % Create ShapeConductionFactorEditField_3
            app.ShapeConductionFactorEditField_3 = uieditfield(app.SemiInfiniteMediumOutputsPanel_3, 'numeric');
            app.ShapeConductionFactorEditField_3.Position = [178 123 100 22];

            % Create SteadyHeatTransferEditField_3Label
            app.SteadyHeatTransferEditField_3Label = uilabel(app.SemiInfiniteMediumOutputsPanel_3);
            app.SteadyHeatTransferEditField_3Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_3Label.Position = [22 73 119 22];
            app.SteadyHeatTransferEditField_3Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_3
            app.SteadyHeatTransferEditField_3 = uieditfield(app.SemiInfiniteMediumOutputsPanel_3, 'numeric');
            app.SteadyHeatTransferEditField_3.Position = [178 73 100 22];

            % Create ErrorifapplicableEditField_3Label
            app.ErrorifapplicableEditField_3Label = uilabel(app.SemiInfiniteMediumOutputsPanel_3);
            app.ErrorifapplicableEditField_3Label.HorizontalAlignment = 'right';
            app.ErrorifapplicableEditField_3Label.Position = [15 26 107 22];
            app.ErrorifapplicableEditField_3Label.Text = 'Error (if applicable)';

            % Create ErrorifapplicableEditField_3
            app.ErrorifapplicableEditField_3 = uieditfield(app.SemiInfiniteMediumOutputsPanel_3, 'text');
            app.ErrorifapplicableEditField_3.Position = [131 26 156 22];

            % Create CalculateButton_9
            app.CalculateButton_9 = uibutton(app.Equation5Tab, 'push');
            app.CalculateButton_9.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_9Pushed, true);
            app.CalculateButton_9.Position = [317 16 100 22];
            app.CalculateButton_9.Text = 'Calculate';

            % Create Equation7Tab
            app.Equation7Tab = uitab(app.TabGroup);
            app.Equation7Tab.Title = 'Equation 7';

            % Create SemiInfiniteMediumInputsPanel_5
            app.SemiInfiniteMediumInputsPanel_5 = uipanel(app.Equation7Tab);
            app.SemiInfiniteMediumInputsPanel_5.TitlePosition = 'centertop';
            app.SemiInfiniteMediumInputsPanel_5.Title = 'Semi-Infinite Medium Inputs';
            app.SemiInfiniteMediumInputsPanel_5.FontWeight = 'bold';
            app.SemiInfiniteMediumInputsPanel_5.Position = [1 49 369 345];

            % Create PipeLengthLmEditField_5Label
            app.PipeLengthLmEditField_5Label = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.PipeLengthLmEditField_5Label.HorizontalAlignment = 'right';
            app.PipeLengthLmEditField_5Label.Position = [140 296 101 22];
            app.PipeLengthLmEditField_5Label.Text = 'Pipe Length L (m)';

            % Create PipeLengthLmEditField_5
            app.PipeLengthLmEditField_5 = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.PipeLengthLmEditField_5.Position = [256 296 84 22];

            % Create MediumHeightzmEditField_4Label
            app.MediumHeightzmEditField_4Label = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.MediumHeightzmEditField_4Label.HorizontalAlignment = 'right';
            app.MediumHeightzmEditField_4Label.Position = [116 256 125 22];
            app.MediumHeightzmEditField_4Label.Text = 'Medium Height z (m)';

            % Create MediumHeightzmEditField_4
            app.MediumHeightzmEditField_4 = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.MediumHeightzmEditField_4.Position = [256 256 84 22];

            % Create InnerDiameterSurfaceTempKEditFieldLabel
            app.InnerDiameterSurfaceTempKEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.InnerDiameterSurfaceTempKEditFieldLabel.HorizontalAlignment = 'right';
            app.InnerDiameterSurfaceTempKEditFieldLabel.Position = [53 131 185 22];
            app.InnerDiameterSurfaceTempKEditFieldLabel.Text = 'Inner Diameter Surface Temp. (K)';

            % Create InnerDiameterSurfaceTempKEditField
            app.InnerDiameterSurfaceTempKEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.InnerDiameterSurfaceTempKEditField.Position = [254 131 83 22];

            % Create OuterDiameterSurfaceTempKEditFieldLabel
            app.OuterDiameterSurfaceTempKEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.OuterDiameterSurfaceTempKEditFieldLabel.HorizontalAlignment = 'right';
            app.OuterDiameterSurfaceTempKEditFieldLabel.Position = [51 88 187 22];
            app.OuterDiameterSurfaceTempKEditFieldLabel.Text = 'Outer Diameter Surface Temp. (K)';

            % Create OuterDiameterSurfaceTempKEditField
            app.OuterDiameterSurfaceTempKEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.OuterDiameterSurfaceTempKEditField.Position = [253 88 83 22];

            % Create MediumThermalCondkWmKEditField_9Label
            app.MediumThermalCondkWmKEditField_9Label = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.MediumThermalCondkWmKEditField_9Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_9Label.Position = [38 46 198 22];
            app.MediumThermalCondkWmKEditField_9Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_9
            app.MediumThermalCondkWmKEditField_9 = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.MediumThermalCondkWmKEditField_9.Position = [253 46 83 22];

            % Create IsothermalCylinderDiameterD1mEditFieldLabel
            app.IsothermalCylinderDiameterD1mEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.IsothermalCylinderDiameterD1mEditFieldLabel.HorizontalAlignment = 'right';
            app.IsothermalCylinderDiameterD1mEditFieldLabel.Position = [31 214 202 22];
            app.IsothermalCylinderDiameterD1mEditFieldLabel.Text = 'Isothermal Cylinder Diameter D1 (m)';

            % Create IsothermalCylinderDiameterD1mEditField
            app.IsothermalCylinderDiameterD1mEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.IsothermalCylinderDiameterD1mEditField.Position = [256 214 83 22];

            % Create OuterDiameterD2mEditField_2Label
            app.OuterDiameterD2mEditField_2Label = uilabel(app.SemiInfiniteMediumInputsPanel_5);
            app.OuterDiameterD2mEditField_2Label.HorizontalAlignment = 'right';
            app.OuterDiameterD2mEditField_2Label.Position = [96 173 127 22];
            app.OuterDiameterD2mEditField_2Label.Text = 'Outer Diameter D2 (m)';

            % Create OuterDiameterD2mEditField_2
            app.OuterDiameterD2mEditField_2 = uieditfield(app.SemiInfiniteMediumInputsPanel_5, 'numeric');
            app.OuterDiameterD2mEditField_2.Position = [255 173 83 22];

            % Create SemiInfiniteMediumOutputsPanel_5
            app.SemiInfiniteMediumOutputsPanel_5 = uipanel(app.Equation7Tab);
            app.SemiInfiniteMediumOutputsPanel_5.TitlePosition = 'centertop';
            app.SemiInfiniteMediumOutputsPanel_5.Title = 'Semi-Infinite Medium Outputs';
            app.SemiInfiniteMediumOutputsPanel_5.FontWeight = 'bold';
            app.SemiInfiniteMediumOutputsPanel_5.Position = [369 49 365 174];

            % Create ErrorifapplicableEditField_4Label
            app.ErrorifapplicableEditField_4Label = uilabel(app.SemiInfiniteMediumOutputsPanel_5);
            app.ErrorifapplicableEditField_4Label.HorizontalAlignment = 'right';
            app.ErrorifapplicableEditField_4Label.Position = [28 32 107 22];
            app.ErrorifapplicableEditField_4Label.Text = 'Error (if applicable)';

            % Create ErrorifapplicableEditField_4
            app.ErrorifapplicableEditField_4 = uieditfield(app.SemiInfiniteMediumOutputsPanel_5, 'text');
            app.ErrorifapplicableEditField_4.Position = [144 32 194 22];

            % Create ShapeConductionFactorEditField_7Label
            app.ShapeConductionFactorEditField_7Label = uilabel(app.SemiInfiniteMediumOutputsPanel_5);
            app.ShapeConductionFactorEditField_7Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_7Label.Position = [31 114 141 22];
            app.ShapeConductionFactorEditField_7Label.Text = 'Shape Conduction Factor';

            % Create ShapeConductionFactorEditField_7
            app.ShapeConductionFactorEditField_7 = uieditfield(app.SemiInfiniteMediumOutputsPanel_5, 'text');
            app.ShapeConductionFactorEditField_7.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_7.Position = [187 114 100 22];
            app.ShapeConductionFactorEditField_7.Value = '0';

            % Create SteadyHeatTransferEditField_7Label
            app.SteadyHeatTransferEditField_7Label = uilabel(app.SemiInfiniteMediumOutputsPanel_5);
            app.SteadyHeatTransferEditField_7Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_7Label.Position = [53 74 119 22];
            app.SteadyHeatTransferEditField_7Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_7
            app.SteadyHeatTransferEditField_7 = uieditfield(app.SemiInfiniteMediumOutputsPanel_5, 'text');
            app.SteadyHeatTransferEditField_7.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_7.Position = [187 74 100 22];
            app.SteadyHeatTransferEditField_7.Value = '0';

            % Create CalculateButton_8
            app.CalculateButton_8 = uibutton(app.Equation7Tab, 'push');
            app.CalculateButton_8.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_8Pushed, true);
            app.CalculateButton_8.Position = [317 14 100 22];
            app.CalculateButton_8.Text = 'Calculate';

            % Create Equation9Tab
            app.Equation9Tab = uitab(app.TabGroup);
            app.Equation9Tab.Title = 'Equation 9';

            % Create LongCylinderInSemiInfiniteMediumInputsPanel
            app.LongCylinderInSemiInfiniteMediumInputsPanel = uipanel(app.Equation9Tab);
            app.LongCylinderInSemiInfiniteMediumInputsPanel.TitlePosition = 'centertop';
            app.LongCylinderInSemiInfiniteMediumInputsPanel.Title = 'Long Cylinder In Semi-Infinite Medium Inputs';
            app.LongCylinderInSemiInfiniteMediumInputsPanel.FontWeight = 'bold';
            app.LongCylinderInSemiInfiniteMediumInputsPanel.Position = [1 55 364 346];

            % Create LengthofPipemEditFieldLabel
            app.LengthofPipemEditFieldLabel = uilabel(app.LongCylinderInSemiInfiniteMediumInputsPanel);
            app.LengthofPipemEditFieldLabel.HorizontalAlignment = 'right';
            app.LengthofPipemEditFieldLabel.Position = [146 280 104 22];
            app.LengthofPipemEditFieldLabel.Text = 'Length of Pipe (m)';

            % Create LengthofPipemEditField
            app.LengthofPipemEditField = uieditfield(app.LongCylinderInSemiInfiniteMediumInputsPanel, 'numeric');
            app.LengthofPipemEditField.Position = [265 280 53 22];

            % Create PipeInnerDiametermEditFieldLabel
            app.PipeInnerDiametermEditFieldLabel = uilabel(app.LongCylinderInSemiInfiniteMediumInputsPanel);
            app.PipeInnerDiametermEditFieldLabel.HorizontalAlignment = 'right';
            app.PipeInnerDiametermEditFieldLabel.Position = [116 232 134 22];
            app.PipeInnerDiametermEditFieldLabel.Text = 'Pipe Inner Diameter (m)';

            % Create PipeInnerDiametermEditField
            app.PipeInnerDiametermEditField = uieditfield(app.LongCylinderInSemiInfiniteMediumInputsPanel, 'numeric');
            app.PipeInnerDiametermEditField.Position = [265 232 53 22];

            % Create PipeOuterDiameternEditFieldLabel
            app.PipeOuterDiameternEditFieldLabel = uilabel(app.LongCylinderInSemiInfiniteMediumInputsPanel);
            app.PipeOuterDiameternEditFieldLabel.HorizontalAlignment = 'right';
            app.PipeOuterDiameternEditFieldLabel.Position = [117 185 133 22];
            app.PipeOuterDiameternEditFieldLabel.Text = 'Pipe Outer Diameter (n)';

            % Create PipeOuterDiameternEditField
            app.PipeOuterDiameternEditField = uieditfield(app.LongCylinderInSemiInfiniteMediumInputsPanel, 'numeric');
            app.PipeOuterDiameternEditField.Position = [265 185 53 22];

            % Create TemperatureofInnerDiameterKEditFieldLabel
            app.TemperatureofInnerDiameterKEditFieldLabel = uilabel(app.LongCylinderInSemiInfiniteMediumInputsPanel);
            app.TemperatureofInnerDiameterKEditFieldLabel.HorizontalAlignment = 'right';
            app.TemperatureofInnerDiameterKEditFieldLabel.Position = [62 136 188 22];
            app.TemperatureofInnerDiameterKEditFieldLabel.Text = 'Temperature of Inner Diameter (K)';

            % Create TemperatureofInnerDiameterKEditField
            app.TemperatureofInnerDiameterKEditField = uieditfield(app.LongCylinderInSemiInfiniteMediumInputsPanel, 'numeric');
            app.TemperatureofInnerDiameterKEditField.Position = [265 136 53 22];

            % Create TemperatureofOuterDiameterKEditFieldLabel
            app.TemperatureofOuterDiameterKEditFieldLabel = uilabel(app.LongCylinderInSemiInfiniteMediumInputsPanel);
            app.TemperatureofOuterDiameterKEditFieldLabel.HorizontalAlignment = 'right';
            app.TemperatureofOuterDiameterKEditFieldLabel.Position = [58 85 192 22];
            app.TemperatureofOuterDiameterKEditFieldLabel.Text = 'Temperature of Outer Diameter (K)';

            % Create TemperatureofOuterDiameterKEditField
            app.TemperatureofOuterDiameterKEditField = uieditfield(app.LongCylinderInSemiInfiniteMediumInputsPanel, 'numeric');
            app.TemperatureofOuterDiameterKEditField.Position = [265 85 53 22];

            % Create MediumThermalCondkWmKEditField_11Label
            app.MediumThermalCondkWmKEditField_11Label = uilabel(app.LongCylinderInSemiInfiniteMediumInputsPanel);
            app.MediumThermalCondkWmKEditField_11Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_11Label.Position = [53 33 197 22];
            app.MediumThermalCondkWmKEditField_11Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_11
            app.MediumThermalCondkWmKEditField_11 = uieditfield(app.LongCylinderInSemiInfiniteMediumInputsPanel, 'numeric');
            app.MediumThermalCondkWmKEditField_11.Position = [265 33 53 22];

            % Create LongCylinderInSemiInfiniteMediumOutputsPanel
            app.LongCylinderInSemiInfiniteMediumOutputsPanel = uipanel(app.Equation9Tab);
            app.LongCylinderInSemiInfiniteMediumOutputsPanel.TitlePosition = 'centertop';
            app.LongCylinderInSemiInfiniteMediumOutputsPanel.Title = 'Long Cylinder In Semi-Infinite Medium Outputs';
            app.LongCylinderInSemiInfiniteMediumOutputsPanel.FontWeight = 'bold';
            app.LongCylinderInSemiInfiniteMediumOutputsPanel.Position = [364 55 370 176];

            % Create ShapeConductionFactorEditField_9Label
            app.ShapeConductionFactorEditField_9Label = uilabel(app.LongCylinderInSemiInfiniteMediumOutputsPanel);
            app.ShapeConductionFactorEditField_9Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_9Label.Position = [75 119 141 22];
            app.ShapeConductionFactorEditField_9Label.Text = 'Shape Conduction Factor';

            % Create ShapeConductionFactorEditField_9
            app.ShapeConductionFactorEditField_9 = uieditfield(app.LongCylinderInSemiInfiniteMediumOutputsPanel, 'numeric');
            app.ShapeConductionFactorEditField_9.Position = [231 119 49 22];

            % Create SteadyHeatTransferEditField_9Label
            app.SteadyHeatTransferEditField_9Label = uilabel(app.LongCylinderInSemiInfiniteMediumOutputsPanel);
            app.SteadyHeatTransferEditField_9Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_9Label.Position = [98 77 119 22];
            app.SteadyHeatTransferEditField_9Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_9
            app.SteadyHeatTransferEditField_9 = uieditfield(app.LongCylinderInSemiInfiniteMediumOutputsPanel, 'numeric');
            app.SteadyHeatTransferEditField_9.Position = [232 77 48 22];

            % Create ErrorMessageEditField_4Label
            app.ErrorMessageEditField_4Label = uilabel(app.LongCylinderInSemiInfiniteMediumOutputsPanel);
            app.ErrorMessageEditField_4Label.HorizontalAlignment = 'right';
            app.ErrorMessageEditField_4Label.Position = [44 35 84 22];
            app.ErrorMessageEditField_4Label.Text = 'Error Message';

            % Create ErrorMessageEditField_4
            app.ErrorMessageEditField_4 = uieditfield(app.LongCylinderInSemiInfiniteMediumOutputsPanel, 'text');
            app.ErrorMessageEditField_4.Position = [143 35 184 22];

            % Create CalculateButton_7
            app.CalculateButton_7 = uibutton(app.Equation9Tab, 'push');
            app.CalculateButton_7.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_7Pushed, true);
            app.CalculateButton_7.Position = [317 15 100 22];
            app.CalculateButton_7.Text = 'Calculate';

            % Create Equation11Tab
            app.Equation11Tab = uitab(app.TabGroup);
            app.Equation11Tab.Title = 'Equation 11';

            % Create SemiInfiniteMediumInputsPanel_4
            app.SemiInfiniteMediumInputsPanel_4 = uipanel(app.Equation11Tab);
            app.SemiInfiniteMediumInputsPanel_4.TitlePosition = 'centertop';
            app.SemiInfiniteMediumInputsPanel_4.Title = 'Semi-Infinite Medium Inputs';
            app.SemiInfiniteMediumInputsPanel_4.FontWeight = 'bold';
            app.SemiInfiniteMediumInputsPanel_4.Position = [1 47 365 347];

            % Create MediumSurfaceTemperatureT2KEditField_2Label
            app.MediumSurfaceTemperatureT2KEditField_2Label = uilabel(app.SemiInfiniteMediumInputsPanel_4);
            app.MediumSurfaceTemperatureT2KEditField_2Label.HorizontalAlignment = 'right';
            app.MediumSurfaceTemperatureT2KEditField_2Label.Position = [27 64 201 22];
            app.MediumSurfaceTemperatureT2KEditField_2Label.Text = 'Medium Surface Temperature T2 (K)';

            % Create MediumSurfaceTemperatureT2KEditField_2
            app.MediumSurfaceTemperatureT2KEditField_2 = uieditfield(app.SemiInfiniteMediumInputsPanel_4, 'numeric');
            app.MediumSurfaceTemperatureT2KEditField_2.Position = [243 64 84 22];

            % Create InnerDiameterD1mEditFieldLabel
            app.InnerDiameterD1mEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel_4);
            app.InnerDiameterD1mEditFieldLabel.HorizontalAlignment = 'right';
            app.InnerDiameterD1mEditFieldLabel.Position = [100 258 125 22];
            app.InnerDiameterD1mEditFieldLabel.Text = 'Inner Diameter D1 (m)';

            % Create InnerDiameterD1mEditField
            app.InnerDiameterD1mEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_4, 'numeric');
            app.InnerDiameterD1mEditField.Position = [244 258 84 22];

            % Create MediumThermalCondkWmKEditField_6Label
            app.MediumThermalCondkWmKEditField_6Label = uilabel(app.SemiInfiniteMediumInputsPanel_4);
            app.MediumThermalCondkWmKEditField_6Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_6Label.Position = [29 160 198 22];
            app.MediumThermalCondkWmKEditField_6Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_6
            app.MediumThermalCondkWmKEditField_6 = uieditfield(app.SemiInfiniteMediumInputsPanel_4, 'numeric');
            app.MediumThermalCondkWmKEditField_6.Position = [243 160 84 22];

            % Create IsothermalCylinderTemperatureT1KEditField_2Label
            app.IsothermalCylinderTemperatureT1KEditField_2Label = uilabel(app.SemiInfiniteMediumInputsPanel_4);
            app.IsothermalCylinderTemperatureT1KEditField_2Label.HorizontalAlignment = 'right';
            app.IsothermalCylinderTemperatureT1KEditField_2Label.Position = [11 111 217 22];
            app.IsothermalCylinderTemperatureT1KEditField_2Label.Text = 'Isothermal Cylinder Temperature T1 (K)';

            % Create IsothermalCylinderTemperatureT1KEditField_2
            app.IsothermalCylinderTemperatureT1KEditField_2 = uieditfield(app.SemiInfiniteMediumInputsPanel_4, 'numeric');
            app.IsothermalCylinderTemperatureT1KEditField_2.Position = [243 111 83 22];

            % Create OuterDiameterD2mEditFieldLabel
            app.OuterDiameterD2mEditFieldLabel = uilabel(app.SemiInfiniteMediumInputsPanel_4);
            app.OuterDiameterD2mEditFieldLabel.HorizontalAlignment = 'right';
            app.OuterDiameterD2mEditFieldLabel.Position = [98 208 128 22];
            app.OuterDiameterD2mEditFieldLabel.Text = 'Outer Diameter D2 (m)';

            % Create OuterDiameterD2mEditField
            app.OuterDiameterD2mEditField = uieditfield(app.SemiInfiniteMediumInputsPanel_4, 'numeric');
            app.OuterDiameterD2mEditField.Position = [245 208 84 22];

            % Create SemiInfiniteMediumOutputsPanel_4
            app.SemiInfiniteMediumOutputsPanel_4 = uipanel(app.Equation11Tab);
            app.SemiInfiniteMediumOutputsPanel_4.TitlePosition = 'centertop';
            app.SemiInfiniteMediumOutputsPanel_4.Title = 'Semi-Infinite Medium Outputs';
            app.SemiInfiniteMediumOutputsPanel_4.FontWeight = 'bold';
            app.SemiInfiniteMediumOutputsPanel_4.Position = [365 47 368 186];

            % Create ShapeConductionFactorEditField_4Label
            app.ShapeConductionFactorEditField_4Label = uilabel(app.SemiInfiniteMediumOutputsPanel_4);
            app.ShapeConductionFactorEditField_4Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_4Label.Position = [12 95 141 22];
            app.ShapeConductionFactorEditField_4Label.Text = 'Shape Conduction Factor';

            % Create ShapeConductionFactorEditField_4
            app.ShapeConductionFactorEditField_4 = uieditfield(app.SemiInfiniteMediumOutputsPanel_4, 'numeric');
            app.ShapeConductionFactorEditField_4.Position = [168 95 100 22];

            % Create SteadyHeatTransferEditField_4Label
            app.SteadyHeatTransferEditField_4Label = uilabel(app.SemiInfiniteMediumOutputsPanel_4);
            app.SteadyHeatTransferEditField_4Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_4Label.Position = [34 45 119 22];
            app.SteadyHeatTransferEditField_4Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_4
            app.SteadyHeatTransferEditField_4 = uieditfield(app.SemiInfiniteMediumOutputsPanel_4, 'numeric');
            app.SteadyHeatTransferEditField_4.Position = [168 45 100 22];

            % Create CalculateButton_2
            app.CalculateButton_2 = uibutton(app.Equation11Tab, 'push');
            app.CalculateButton_2.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_2Pushed, true);
            app.CalculateButton_2.Position = [317 12 100 22];
            app.CalculateButton_2.Text = 'Calculate';

            % Create Equation13Tab
            app.Equation13Tab = uitab(app.TabGroup);
            app.Equation13Tab.Title = 'Equation 13';

            % Create AdjoiningWallInputsPanel
            app.AdjoiningWallInputsPanel = uipanel(app.Equation13Tab);
            app.AdjoiningWallInputsPanel.TitlePosition = 'centertop';
            app.AdjoiningWallInputsPanel.Title = 'Adjoining Wall Inputs';
            app.AdjoiningWallInputsPanel.FontWeight = 'bold';
            app.AdjoiningWallInputsPanel.Position = [0 48 369 355];

            % Create WallThickness1mEditFieldLabel
            app.WallThickness1mEditFieldLabel = uilabel(app.AdjoiningWallInputsPanel);
            app.WallThickness1mEditFieldLabel.HorizontalAlignment = 'right';
            app.WallThickness1mEditFieldLabel.Position = [111 285 117 22];
            app.WallThickness1mEditFieldLabel.Text = 'Wall Thickness 1 (m)';

            % Create WallThickness1mEditField
            app.WallThickness1mEditField = uieditfield(app.AdjoiningWallInputsPanel, 'numeric');
            app.WallThickness1mEditField.Position = [243 285 52 22];

            % Create WallThickness2mEditFieldLabel
            app.WallThickness2mEditFieldLabel = uilabel(app.AdjoiningWallInputsPanel);
            app.WallThickness2mEditFieldLabel.HorizontalAlignment = 'right';
            app.WallThickness2mEditFieldLabel.Position = [111 240 117 22];
            app.WallThickness2mEditFieldLabel.Text = 'Wall Thickness 2 (m)';

            % Create WallThickness2mEditField
            app.WallThickness2mEditField = uieditfield(app.AdjoiningWallInputsPanel, 'numeric');
            app.WallThickness2mEditField.Position = [243 240 52 22];

            % Create InnerWallTemperatureKEditFieldLabel
            app.InnerWallTemperatureKEditFieldLabel = uilabel(app.AdjoiningWallInputsPanel);
            app.InnerWallTemperatureKEditFieldLabel.HorizontalAlignment = 'right';
            app.InnerWallTemperatureKEditFieldLabel.Position = [79 193 149 22];
            app.InnerWallTemperatureKEditFieldLabel.Text = 'Inner Wall Temperature (K)';

            % Create InnerWallTemperatureKEditField
            app.InnerWallTemperatureKEditField = uieditfield(app.AdjoiningWallInputsPanel, 'numeric');
            app.InnerWallTemperatureKEditField.Position = [243 193 52 22];

            % Create OuterWallTemperatureKEditFieldLabel
            app.OuterWallTemperatureKEditFieldLabel = uilabel(app.AdjoiningWallInputsPanel);
            app.OuterWallTemperatureKEditFieldLabel.HorizontalAlignment = 'right';
            app.OuterWallTemperatureKEditFieldLabel.Position = [76 145 152 22];
            app.OuterWallTemperatureKEditFieldLabel.Text = 'Outer Wall Temperature (K)';

            % Create OuterWallTemperatureKEditField
            app.OuterWallTemperatureKEditField = uieditfield(app.AdjoiningWallInputsPanel, 'numeric');
            app.OuterWallTemperatureKEditField.Position = [243 145 52 22];

            % Create LengthofAdjoinedWallsmEditFieldLabel
            app.LengthofAdjoinedWallsmEditFieldLabel = uilabel(app.AdjoiningWallInputsPanel);
            app.LengthofAdjoinedWallsmEditFieldLabel.HorizontalAlignment = 'right';
            app.LengthofAdjoinedWallsmEditFieldLabel.Position = [70 94 159 22];
            app.LengthofAdjoinedWallsmEditFieldLabel.Text = 'Length of Adjoined Walls (m)';

            % Create LengthofAdjoinedWallsmEditField
            app.LengthofAdjoinedWallsmEditField = uieditfield(app.AdjoiningWallInputsPanel, 'numeric');
            app.LengthofAdjoinedWallsmEditField.Position = [244 94 52 22];

            % Create MediumThermalCondkWmKEditField_7Label
            app.MediumThermalCondkWmKEditField_7Label = uilabel(app.AdjoiningWallInputsPanel);
            app.MediumThermalCondkWmKEditField_7Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_7Label.Position = [30 44 198 22];
            app.MediumThermalCondkWmKEditField_7Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_7
            app.MediumThermalCondkWmKEditField_7 = uieditfield(app.AdjoiningWallInputsPanel, 'numeric');
            app.MediumThermalCondkWmKEditField_7.Position = [243 44 52 22];

            % Create AdjoiningWallOutputsPanel
            app.AdjoiningWallOutputsPanel = uipanel(app.Equation13Tab);
            app.AdjoiningWallOutputsPanel.TitlePosition = 'centertop';
            app.AdjoiningWallOutputsPanel.Title = 'Adjoining Wall Outputs';
            app.AdjoiningWallOutputsPanel.FontWeight = 'bold';
            app.AdjoiningWallOutputsPanel.Position = [368 48 365 198];

            % Create ShapeConductionFactorEditField_5Label
            app.ShapeConductionFactorEditField_5Label = uilabel(app.AdjoiningWallOutputsPanel);
            app.ShapeConductionFactorEditField_5Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_5Label.Position = [83 128 145 22];
            app.ShapeConductionFactorEditField_5Label.Text = 'Shape Conduction Factor ';

            % Create ShapeConductionFactorEditField_5
            app.ShapeConductionFactorEditField_5 = uieditfield(app.AdjoiningWallOutputsPanel, 'numeric');
            app.ShapeConductionFactorEditField_5.Position = [243 128 52 22];

            % Create SteadyHeatTransferEditField_5Label
            app.SteadyHeatTransferEditField_5Label = uilabel(app.AdjoiningWallOutputsPanel);
            app.SteadyHeatTransferEditField_5Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_5Label.Position = [109 70 119 22];
            app.SteadyHeatTransferEditField_5Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_5
            app.SteadyHeatTransferEditField_5 = uieditfield(app.AdjoiningWallOutputsPanel, 'numeric');
            app.SteadyHeatTransferEditField_5.Position = [243 70 52 22];

            % Create ErrorMessageEditFieldLabel
            app.ErrorMessageEditFieldLabel = uilabel(app.AdjoiningWallOutputsPanel);
            app.ErrorMessageEditFieldLabel.HorizontalAlignment = 'right';
            app.ErrorMessageEditFieldLabel.Position = [21 8 84 22];
            app.ErrorMessageEditFieldLabel.Text = 'Error Message';

            % Create ErrorMessageEditField
            app.ErrorMessageEditField = uieditfield(app.AdjoiningWallOutputsPanel, 'text');
            app.ErrorMessageEditField.Position = [120 8 175 22];

            % Create CalculateButton_3
            app.CalculateButton_3 = uibutton(app.Equation13Tab, 'push');
            app.CalculateButton_3.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_3Pushed, true);
            app.CalculateButton_3.Position = [317 12 100 22];
            app.CalculateButton_3.Text = 'Calculate';

            % Create Equation15Tab
            app.Equation15Tab = uitab(app.TabGroup);
            app.Equation15Tab.Title = 'Equation 15';

            % Create SphereBuriedinSemiInifiniteMediumInputsPanel
            app.SphereBuriedinSemiInifiniteMediumInputsPanel = uipanel(app.Equation15Tab);
            app.SphereBuriedinSemiInifiniteMediumInputsPanel.TitlePosition = 'centertop';
            app.SphereBuriedinSemiInifiniteMediumInputsPanel.Title = 'Sphere Buried in Semi-Inifinite Medium Inputs';
            app.SphereBuriedinSemiInifiniteMediumInputsPanel.FontWeight = 'bold';
            app.SphereBuriedinSemiInifiniteMediumInputsPanel.Position = [1 44 366 359];

            % Create SphereDiametermEditFieldLabel
            app.SphereDiametermEditFieldLabel = uilabel(app.SphereBuriedinSemiInifiniteMediumInputsPanel);
            app.SphereDiametermEditFieldLabel.HorizontalAlignment = 'right';
            app.SphereDiametermEditFieldLabel.Position = [111 289 117 22];
            app.SphereDiametermEditFieldLabel.Text = 'Sphere Diameter (m)';

            % Create SphereDiametermEditField
            app.SphereDiametermEditField = uieditfield(app.SphereBuriedinSemiInifiniteMediumInputsPanel, 'numeric');
            app.SphereDiametermEditField.Position = [243 289 52 22];

            % Create SphereDepthmEditFieldLabel
            app.SphereDepthmEditFieldLabel = uilabel(app.SphereBuriedinSemiInifiniteMediumInputsPanel);
            app.SphereDepthmEditFieldLabel.HorizontalAlignment = 'right';
            app.SphereDepthmEditFieldLabel.Position = [127 243 101 22];
            app.SphereDepthmEditFieldLabel.Text = 'Sphere Depth (m)';

            % Create SphereDepthmEditField
            app.SphereDepthmEditField = uieditfield(app.SphereBuriedinSemiInifiniteMediumInputsPanel, 'numeric');
            app.SphereDepthmEditField.Position = [243 243 52 22];

            % Create AboveGroundSurfaceTempKEditFieldLabel
            app.AboveGroundSurfaceTempKEditFieldLabel = uilabel(app.SphereBuriedinSemiInifiniteMediumInputsPanel);
            app.AboveGroundSurfaceTempKEditFieldLabel.HorizontalAlignment = 'right';
            app.AboveGroundSurfaceTempKEditFieldLabel.Position = [49 201 179 22];
            app.AboveGroundSurfaceTempKEditFieldLabel.Text = 'Above Ground Surface Temp (K)';

            % Create AboveGroundSurfaceTempKEditField
            app.AboveGroundSurfaceTempKEditField = uieditfield(app.SphereBuriedinSemiInifiniteMediumInputsPanel, 'numeric');
            app.AboveGroundSurfaceTempKEditField.Position = [243 201 52 22];

            % Create SphereSurfaceTempKEditFieldLabel
            app.SphereSurfaceTempKEditFieldLabel = uilabel(app.SphereBuriedinSemiInifiniteMediumInputsPanel);
            app.SphereSurfaceTempKEditFieldLabel.HorizontalAlignment = 'right';
            app.SphereSurfaceTempKEditFieldLabel.Position = [76 154 152 22];
            app.SphereSurfaceTempKEditFieldLabel.Text = 'Sphere Surface Temp (K)';

            % Create SphereSurfaceTempKEditField
            app.SphereSurfaceTempKEditField = uieditfield(app.SphereBuriedinSemiInifiniteMediumInputsPanel, 'numeric');
            app.SphereSurfaceTempKEditField.Position = [243 154 52 22];

            % Create MediumThermalCondkWmKEditField_8Label
            app.MediumThermalCondkWmKEditField_8Label = uilabel(app.SphereBuriedinSemiInifiniteMediumInputsPanel);
            app.MediumThermalCondkWmKEditField_8Label.HorizontalAlignment = 'right';
            app.MediumThermalCondkWmKEditField_8Label.Position = [30 103 198 22];
            app.MediumThermalCondkWmKEditField_8Label.Text = 'Medium Thermal Cond. k (W/(m*K))';

            % Create MediumThermalCondkWmKEditField_8
            app.MediumThermalCondkWmKEditField_8 = uieditfield(app.SphereBuriedinSemiInifiniteMediumInputsPanel, 'numeric');
            app.MediumThermalCondkWmKEditField_8.Position = [243 103 52 22];

            % Create SphereBuriedinSemiInifiniteMediumOutputsPanel
            app.SphereBuriedinSemiInifiniteMediumOutputsPanel = uipanel(app.Equation15Tab);
            app.SphereBuriedinSemiInifiniteMediumOutputsPanel.TitlePosition = 'centertop';
            app.SphereBuriedinSemiInifiniteMediumOutputsPanel.Title = 'Sphere Buried in Semi-Inifinite Medium Outputs';
            app.SphereBuriedinSemiInifiniteMediumOutputsPanel.FontWeight = 'bold';
            app.SphereBuriedinSemiInifiniteMediumOutputsPanel.Position = [366 44 367 202];

            % Create ShapeConductionFactorEditField_6Label
            app.ShapeConductionFactorEditField_6Label = uilabel(app.SphereBuriedinSemiInifiniteMediumOutputsPanel);
            app.ShapeConductionFactorEditField_6Label.HorizontalAlignment = 'right';
            app.ShapeConductionFactorEditField_6Label.Position = [83 132 145 22];
            app.ShapeConductionFactorEditField_6Label.Text = 'Shape Conduction Factor ';

            % Create ShapeConductionFactorEditField_6
            app.ShapeConductionFactorEditField_6 = uieditfield(app.SphereBuriedinSemiInifiniteMediumOutputsPanel, 'numeric');
            app.ShapeConductionFactorEditField_6.Position = [243 132 52 22];

            % Create SteadyHeatTransferEditField_6Label
            app.SteadyHeatTransferEditField_6Label = uilabel(app.SphereBuriedinSemiInifiniteMediumOutputsPanel);
            app.SteadyHeatTransferEditField_6Label.HorizontalAlignment = 'right';
            app.SteadyHeatTransferEditField_6Label.Position = [109 74 119 22];
            app.SteadyHeatTransferEditField_6Label.Text = 'Steady Heat Transfer';

            % Create SteadyHeatTransferEditField_6
            app.SteadyHeatTransferEditField_6 = uieditfield(app.SphereBuriedinSemiInifiniteMediumOutputsPanel, 'numeric');
            app.SteadyHeatTransferEditField_6.Position = [243 74 52 22];

            % Create ErrorMessageEditField_2Label
            app.ErrorMessageEditField_2Label = uilabel(app.SphereBuriedinSemiInifiniteMediumOutputsPanel);
            app.ErrorMessageEditField_2Label.HorizontalAlignment = 'right';
            app.ErrorMessageEditField_2Label.Position = [21 12 84 22];
            app.ErrorMessageEditField_2Label.Text = 'Error Message';

            % Create ErrorMessageEditField_2
            app.ErrorMessageEditField_2 = uieditfield(app.SphereBuriedinSemiInifiniteMediumOutputsPanel, 'text');
            app.ErrorMessageEditField_2.Position = [120 12 175 22];

            % Create CalculateButton_4
            app.CalculateButton_4 = uibutton(app.Equation15Tab, 'push');
            app.CalculateButton_4.ButtonPushedFcn = createCallbackFcn(app, @CalculateButton_4Pushed, true);
            app.CalculateButton_4.Position = [317 12 100 22];
            app.CalculateButton_4.Text = 'Calculate';

            % Create HeatTransferofShapesWithinaSemiInfiniteMediumLabel
            app.HeatTransferofShapesWithinaSemiInfiniteMediumLabel = uilabel(app.UIFigure);
            app.HeatTransferofShapesWithinaSemiInfiniteMediumLabel.FontSize = 15;
            app.HeatTransferofShapesWithinaSemiInfiniteMediumLabel.FontWeight = 'bold';
            app.HeatTransferofShapesWithinaSemiInfiniteMediumLabel.Position = [167 458 402 22];
            app.HeatTransferofShapesWithinaSemiInfiniteMediumLabel.Text = 'Heat Transfer of Shapes Within a Semi-Infinite Medium';
        end
    end

    methods (Access = public)

        % Construct app
        function app = MAE431ProjectFinal

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end