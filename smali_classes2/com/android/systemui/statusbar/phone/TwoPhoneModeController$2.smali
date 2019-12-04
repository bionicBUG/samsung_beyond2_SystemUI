.class Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;
.super Ljava/lang/Object;
.source "TwoPhoneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->isOnFeature()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->isTwoPhoneUserCreated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111007c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    :goto_0
    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_twophone_p_mode:I

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEnableToTurnOnTwoPhoneMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", callEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    .line 92
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", msgEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", userCreated:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    .line 93
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", registered:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "StatusBar.TwoPhoneModeController"

    .line 91
    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$402(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$302(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneCallEnabled()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$102(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    const-class v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneSMSEnabled()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$202(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Z)Z

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callEnabled:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    .line 103
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$300(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_3

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_twophone_b_mode:I

    goto :goto_2

    .line 112
    :cond_6
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_twophone_b_mode_blocked:I

    .line 114
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_3

    .line 117
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_twophone_b_mode:I

    invoke-static {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    goto :goto_3

    .line 120
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$2;->this$0:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;ZI)V

    :goto_3
    return-void
.end method
