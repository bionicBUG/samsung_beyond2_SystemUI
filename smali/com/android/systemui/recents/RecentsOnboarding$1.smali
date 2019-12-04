.class Lcom/android/systemui/recents/RecentsOnboarding$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "RecentsOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method private onAppLaunch()V
    .locals 6

    .line 162
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 168
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    return-void

    .line 171
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 174
    :cond_2
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    .line 175
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 177
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$200(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 180
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    return-void

    .line 185
    :cond_3
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    const/4 v4, 0x3

    const/16 v5, 0xa

    if-eqz v2, :cond_5

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$300(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    if-lt v0, v5, :cond_e

    .line 187
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->gesture_recents_quick_scrub_onboarding:I

    invoke-static {v0, v2, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$400(Lcom/android/systemui/recents/RecentsOnboarding;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 190
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$500(Lcom/android/systemui/recents/RecentsOnboarding;I)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->setSwipeRightTipSeenCount(Landroid/content/Context;)V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 193
    invoke-static {p0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/util/RecentsOnBoardingUtil;->getSwipeRightTipSeenCount(Landroid/content/Context;)I

    move-result v0

    if-lt v0, v4, :cond_4

    move v1, v3

    .line 192
    :cond_4
    invoke-static {p0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;Z)V

    goto/16 :goto_3

    :cond_5
    if-nez v0, :cond_a

    .line 199
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    if-lt v0, v4, :cond_e

    .line 201
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 203
    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1000(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_6

    return-void

    :cond_6
    if-gt v0, v3, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    const/16 v0, 0x28

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1108(Lcom/android/systemui/recents/RecentsOnboarding;)I

    .line 214
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1100(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v2

    if-lt v2, v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1102(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_1

    .line 220
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_swipe_up_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_e

    .line 223
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0, v1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1200(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    goto :goto_3

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$300(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    if-lt v0, v5, :cond_e

    .line 228
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1300(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 229
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1400(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v0

    if-lt v0, v5, :cond_b

    .line 231
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1402(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 232
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_quick_scrub_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_2

    .line 235
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    sget v2, Lcom/android/systemui/R$string;->recents_quick_scrub_onboarding:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_e

    .line 238
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {p0, v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1200(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    goto :goto_3

    .line 245
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    :cond_e
    :goto_3
    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    return-void
.end method
