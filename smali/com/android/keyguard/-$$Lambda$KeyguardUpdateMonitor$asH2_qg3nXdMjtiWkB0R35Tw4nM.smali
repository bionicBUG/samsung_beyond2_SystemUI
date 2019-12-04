.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asH2_qg3nXdMjtiWkB0R35Tw4nM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asH2_qg3nXdMjtiWkB0R35Tw4nM;->f$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardUpdateMonitor$asH2_qg3nXdMjtiWkB0R35Tw4nM;->f$0:Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$handleFaceWidgetRemoteViews$26(Lcom/android/systemui/facewidget/pages/remoteviews/FaceWidgetRemoteViewsItem;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
