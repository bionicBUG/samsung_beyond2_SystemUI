.class Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;
.super Landroid/content/BroadcastReceiver;
.source "AssistHandleReminderExpBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$600()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$502(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 121
    sget-boolean p1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    .line 123
    invoke-static {p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$500(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p2, p0, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 122
    invoke-static {p1, p0}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$702(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
