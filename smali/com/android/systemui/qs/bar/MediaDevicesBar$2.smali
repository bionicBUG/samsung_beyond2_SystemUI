.class Lcom/android/systemui/qs/bar/MediaDevicesBar$2;
.super Ljava/lang/Object;
.source "MediaDevicesBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MediaDevicesBar;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MediaDevicesBar;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1138"

    invoke-static {p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MediaDevicesBar$2;->this$0:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    const-string p1, "com.samsung.android.mdx.quickboard.action.OPEN_DEVICE_PANEL"

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/MediaDevicesBar;->access$000(Lcom/android/systemui/qs/bar/MediaDevicesBar;Ljava/lang/String;)V

    return-void
.end method
