.class Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "FaceWidgetSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

.field final synthetic val$dbKey:Ljava/lang/String;

.field final synthetic val$def:Z

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$dbKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$def:Z

    iput-object p5, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$dbKey:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$def:Z

    invoke-static {p1, v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->access$000(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;Ljava/lang/String;I)Z

    move-result p1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged() uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", enabled = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceWidgetSettingsHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-static {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->access$100(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object p2, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-static {p2}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->access$200(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->access$200(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->sendRequestRemoteViewsBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->this$0:Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;->access$200(Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/facewidget/utils/FaceWidgetSettingsHelper$1;->val$pkgName:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/systemui/facewidget/FaceWidgetController;->removeRemoteViews(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
