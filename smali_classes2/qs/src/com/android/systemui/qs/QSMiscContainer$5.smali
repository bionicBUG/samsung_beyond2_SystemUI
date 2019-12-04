.class Lqs/src/com/android/systemui/qs/QSMiscContainer$5;
.super Ljava/lang/Object;
.source "QSMiscContainer.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer;->showMorePopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;


# direct methods
.method constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 527
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 529
    sget v0, Lcom/android/systemui/R$id;->qs_edit:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 530
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$900(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$800(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    .line 532
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "2001"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->qspanel_layout:I

    if-ne p1, v0, :cond_2

    .line 536
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$200(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 537
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "QsLayoutNewBadge"

    invoke-static {p1, v0, v1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 539
    :cond_1
    iget-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$900(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v2, Lcom/android/systemui/qs/SecQSLayoutDetail;

    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/SecQSLayoutDetail;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, v0, v2, p0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    .line 541
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4202"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->noti_settings:I

    if-ne p1, v0, :cond_3

    .line 545
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1000(Lqs/src/com/android/systemui/qs/QSMiscContainer;)V

    .line 547
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4201"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_3
    sget v0, Lcom/android/systemui/R$id;->contact_us:I

    if-ne p1, v0, :cond_4

    .line 551
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$5;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    invoke-static {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$400(Lqs/src/com/android/systemui/qs/QSMiscContainer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lqs/src/com/android/systemui/qs/QSMiscContainer;->access$1100(Lqs/src/com/android/systemui/qs/QSMiscContainer;Landroid/content/Context;)Z

    .line 553
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "2004"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v1
.end method
