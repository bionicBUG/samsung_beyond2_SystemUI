.class Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/aod/PluginAODServiceBoxCalendarManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginAODFaceWidgetCalendarCallback"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/PluginAODManager;Landroid/content/Context;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p2, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public requestCalendarData()V
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$PluginAODFaceWidgetCalendarCallback;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->requestFaceWidgetCalendarData()V

    return-void
.end method
