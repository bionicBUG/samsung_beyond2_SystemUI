.class Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;
.super Ljava/lang/Object;
.source "FaceWidgetPagesController.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;


# direct methods
.method constructor <init>(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateStyle(ILandroid/app/SemWallpaperColors;)V
    .locals 5

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle flag: flag = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceWidgetPagesController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 256
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    .line 257
    invoke-static {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$200(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)I

    move-result p2

    and-int/2addr p2, v1

    if-eqz p2, :cond_0

    .line 258
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v2, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->CLOCK_STYLE_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    invoke-virtual {p2, v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;)V

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v3, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->ADAPTIVE_COLOR_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    move p2, v1

    :cond_1
    and-int/lit16 v2, p1, 0x800

    if-eqz v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v3, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->SHADOW_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, v0

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    move p2, v1

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$300(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Z

    move-result v2

    const-string/jumbo v3, "top"

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 276
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {v2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$300(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$302(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;Z)Z

    .line 277
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    sget-object v3, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;Z[Ljava/lang/Object;)V

    .line 279
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$400(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 280
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$400(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)Lcom/android/systemui/facewidget/FaceWidgetController;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/facewidget/FaceWidgetController;->sendRequestRemoteViewsBroadcast()V

    .line 284
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p2}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$200(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;)I

    move-result p2

    if-eq p2, p1, :cond_4

    .line 285
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController$4;->this$0:Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;

    invoke-static {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;->access$202(Lcom/android/systemui/facewidget/pages/FaceWidgetPagesController;I)I

    :cond_4
    return-void
.end method
