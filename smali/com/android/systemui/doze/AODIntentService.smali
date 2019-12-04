.class public Lcom/android/systemui/doze/AODIntentService;
.super Landroid/app/IntentService;
.source "AODIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AODIntentService"

    .line 10
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/AODIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/doze/PluginAODManager;->getInstance()Lcom/android/systemui/doze/PluginAODManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->sendIntent(Landroid/content/Intent;)V

    return-void
.end method
