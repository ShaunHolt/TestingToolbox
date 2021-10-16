package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.components.CheckBox;
import haxe.ui.components.Image;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialog.DialogButton;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {

		var video = new Video();
		var audio = new Audio();
        var main:Component = ComponentMacros.buildComponent("assets/main.xml");

        var customNonModalDialogButton = main.findComponent("customNonModalDialogButton", Button);
            customNonModalDialogButton.onClick = function(e) {
        var dialog = new CustomDialog();
            dialog.width = 800;
            dialog.show();
            }

        var customNonModalDialogButtona = main.findComponent("customNonModalDialogButtona", Button);
            customNonModalDialogButtona.onClick = function(e) {
        var dialoga = new CustomServo();
            dialoga.width = 800;
            dialoga.show();
            }
           
        var customNonModalDialogButtonb = main.findComponent("customNonModalDialogButtonb", Button);
            customNonModalDialogButtonb.onClick = function(e) {
        var dialogb = new CustomCameras();
            dialogb.width = 800;
            dialogb.show();
            }

        var customNonModalDialogButtonc = main.findComponent("customNonModalDialogButtonc", Button);
            customNonModalDialogButtonc.onClick = function(e) {
        var dialogc = new CustomTerminal();
            dialogc.width = 800;
            dialogc.show();
            }


			app.addComponent(video);
			app.addComponent(audio);
            app.addComponent(main);
            app.start();
        });
    }
}

