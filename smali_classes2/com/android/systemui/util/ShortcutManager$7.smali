.class Lcom/android/systemui/util/ShortcutManager$7;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
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

    .line 775
    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/util/ShortcutManager$7;->val$th:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 778
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 780
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 781
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateShortcutsIcon : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid task name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->access$300(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    .line 786
    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->access$1000(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v2

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    .line 787
    invoke-static {v2}, Lcom/android/systemui/util/ShortcutManager;->access$1400(Lcom/android/systemui/util/ShortcutManager;)I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {p0}, Lcom/android/systemui/util/ShortcutManager;->access$1400(Lcom/android/systemui/util/ShortcutManager;)I

    move-result p0

    .line 786
    invoke-static {v1, p1, v2, p0}, Lcom/android/systemui/util/ShortcutManager;->access$1500(Lcom/android/systemui/util/ShortcutManager;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 788
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 775
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$7;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 793
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 794
    iget-object p1, p0, Lcom/android/systemui/util/ShortcutManager$7;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/util/ShortcutManager$7;->val$th:I

    invoke-static {p1, p0}, Lcom/android/systemui/util/ShortcutManager;->access$1600(Lcom/android/systemui/util/ShortcutManager;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 775
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$7;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
