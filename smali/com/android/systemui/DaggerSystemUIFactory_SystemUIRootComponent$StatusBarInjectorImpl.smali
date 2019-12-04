.class final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusBarInjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V
    .locals 0

    .line 1932
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 1931
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)V

    return-void
.end method

.method private injectStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1942
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1943
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/InjectionInflationController;

    .line 1940
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMInjectionInflater(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/util/InjectionInflationController;)V

    .line 1944
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1946
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 1944
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMPulseExpansionHandler(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    .line 1947
    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1949
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$13900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1950
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 1947
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar_MembersInjector;->injectMWakeUpCoordinator(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    return-object p1
.end method


# virtual methods
.method public createStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 1936
    invoke-direct {p0, p1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$StatusBarInjectorImpl;->injectStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
