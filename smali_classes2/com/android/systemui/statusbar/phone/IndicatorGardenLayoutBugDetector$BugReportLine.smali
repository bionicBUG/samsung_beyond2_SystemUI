.class Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;
.super Ljava/lang/Object;
.source "IndicatorGardenLayoutBugDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportLine"
.end annotation


# instance fields
.field private BugDesc:Ljava/lang/String;

.field private BugView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugDesc:Ljava/lang/String;

    .line 294
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;->access$000(Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugDesc:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (lr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenLayoutBugDetector$BugReportLine;->BugView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
