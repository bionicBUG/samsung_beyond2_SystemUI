.class Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "IndicatorGardenLayoutBugDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$1;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->checkAndUpdateLayout()V

    return-void
.end method
