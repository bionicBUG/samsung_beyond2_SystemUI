.class Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1$1;
.super Ljava/lang/Object;
.source "LockscreenNotificationIconsOnlyContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1$1;->this$1:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStyle() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1$1;->this$1:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->val$isWhiteWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1$1;->this$1:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer$1;->val$isWhiteWallpaper:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;->updateWhiteWallpaperIcon(Z)V

    return-void
.end method
