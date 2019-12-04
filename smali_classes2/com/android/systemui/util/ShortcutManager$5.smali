.class Lcom/android/systemui/util/ShortcutManager$5;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/ComponentName;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    iput-object p3, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    .line 450
    aget-object p1, p1, v0

    const-string v0, "updateShortcut : "

    const-string v1, "ShortcutManager"

    if-eqz p1, :cond_5

    if-eqz p1, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/ShortcutManager;->getSuspended(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v2}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 459
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    .line 458
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 461
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_2

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " activityInfo is null, resolveInfo is : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",  return FALSE"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 471
    :cond_2
    iget-boolean v0, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShortcut: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/systemui/util/ShortcutManager;->access$900(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is disabled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v0, v5, :cond_3

    const-string p0, "getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    .line 478
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->removeListener()V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aput-object v3, v0, v2

    .line 494
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v0, v0, v2

    iput-boolean v5, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    .line 495
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v2, v4}, Lcom/android/systemui/util/ShortcutManager;->access$1100(Lcom/android/systemui/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object v0, v0, v2

    iput-object p1, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 497
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object p1, p1, v0

    iput-object v3, p1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 498
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$800(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 499
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateShortcut th : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " class : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 454
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is disabled from settings"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 447
    check-cast p1, [Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$5;->doInBackground([Landroid/content/ComponentName;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 505
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 506
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-static {p1, p0}, Lcom/android/systemui/util/ShortcutManager;->access$400(Lcom/android/systemui/util/ShortcutManager;I)V

    goto :goto_0

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$5;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$5;->val$th:I

    invoke-static {p1, p0}, Lcom/android/systemui/util/ShortcutManager;->access$1200(Lcom/android/systemui/util/ShortcutManager;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 447
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
