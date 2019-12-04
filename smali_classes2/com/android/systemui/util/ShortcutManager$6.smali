.class Lcom/android/systemui/util/ShortcutManager$6;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ShortcutManager;->updateShortcut(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;I)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    .line 519
    aget-object p1, p1, v0

    const-string v0, "updateShortcut : "

    const-string v1, "ShortcutManager"

    if-nez p1, :cond_0

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is disabled from settings"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object p1

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v2

    if-eqz p1, :cond_1

    .line 527
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object p1

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->removeListener()V

    .line 530
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object p1

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/systemui/util/ShortcutManager;->access$1300(Lcom/android/systemui/util/ShortcutManager;Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v3

    aput-object v3, p1, v2

    .line 531
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object p1

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v2

    if-nez p1, :cond_2

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is invalid task name"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 536
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->enabled:Z

    .line 537
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    .line 538
    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->access$1400(Lcom/android/systemui/util/ShortcutManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->access$1400(Lcom/android/systemui/util/ShortcutManager;)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/systemui/util/ShortcutManager;->access$1500(Lcom/android/systemui/util/ShortcutManager;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 539
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 540
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p1}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getAppLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 541
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateShortcut th : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " class : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 516
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$6;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 547
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 548
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-static {p1, p0}, Lcom/android/systemui/util/ShortcutManager;->access$400(Lcom/android/systemui/util/ShortcutManager;I)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-static {p1, p0}, Lcom/android/systemui/util/ShortcutManager;->access$1200(Lcom/android/systemui/util/ShortcutManager;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 516
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
