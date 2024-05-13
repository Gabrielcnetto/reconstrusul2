import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Configuração da chave de API do Google Maps
        GMSServices.provideAPIKey("AIzaSyCsGHj4Vscg12jgX3-PT5NDT9eSn3lL0YE")
        
        // Registrando os plugins do Flutter
        GeneratedPluginRegistrant.register(with: self)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
