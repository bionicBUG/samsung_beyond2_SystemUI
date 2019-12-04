.class Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceWidgetMetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;->this$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;->this$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->access$000(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;->this$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->access$000(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser$2;->this$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;->access$100(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetMetadataParser;Ljava/lang/String;)V

    return-void
.end method
