.class Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "QSMiscContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;


# direct methods
.method constructor <init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;->this$1:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic lambda$notifyDataSetChanged$0$QSMiscContainer$MumAndDexHelper$1()V
    .locals 0

    .line 774
    iget-object p0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;->this$1:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    invoke-virtual {p0}, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->updateMumSwitchVisibility()V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 770
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 771
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QSMiscContainer"

    const-string v1, "MumAndDexHelper, UserSwitcherController.BaseUserAdapter notifyDataSetChanged()"

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iget-object v0, p0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;->this$1:Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;

    iget-object v0, v0, Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper;->this$0:Lqs/src/com/android/systemui/qs/QSMiscContainer;

    new-instance v1, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$1$BkhAS5hpcdgMjPNSyCfTQxUbvbc;

    invoke-direct {v1, p0}, Lqs/src/com/android/systemui/qs/-$$Lambda$QSMiscContainer$MumAndDexHelper$1$BkhAS5hpcdgMjPNSyCfTQxUbvbc;-><init>(Lqs/src/com/android/systemui/qs/QSMiscContainer$MumAndDexHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
